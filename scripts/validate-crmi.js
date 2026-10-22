#!/usr/bin/env node

// Verifies the CRMI validation results emitted by IG Publisher. The Publisher
// runs this after SUSHI, resolves the declared CRMI package, assigns publication
// metadata, and validates each conformance resource against its meta.profile.
//
// All project-owned StructureDefinitions require CRMI Shareable. CRMI
// Publishable is required when the final, Publisher-processed resource has
// status=active. Draft resources are not required to pass Publishable.

const fs = require('node:fs');
const path = require('node:path');

const SHAREABLE = 'http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition';
const PUBLISHABLE = 'http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition';
const CRMI_PACKAGE = 'hl7.fhir.uv.crmi';
const REQUIRED_SHAREABLE_FIELDS = ['url', 'version', 'title', 'experimental', 'description'];

function walk(dir) {
  if (!fs.existsSync(dir)) return [];
  const found = [];
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const fullPath = path.join(dir, entry.name);
    if (entry.isDirectory()) found.push(...walk(fullPath));
    else if (entry.isFile()) found.push(fullPath);
  }
  return found;
}

function parseJsonFile(file, diagnostics, role) {
  try {
    return JSON.parse(fs.readFileSync(file, 'utf8'));
  } catch (error) {
    diagnostics.push({
      severity: 'error',
      profile: 'Inventory',
      resourceId: path.basename(file),
      canonical: '',
      path: file,
      message: `Cannot read valid JSON (${error.message}).`,
      suggestion: 'Repair or remove the unreadable StructureDefinition source, then rerun SUSHI and the IG Publisher.',
      role,
    });
    return undefined;
  }
}

function readFshDefinitionIds(root, diagnostics) {
  const fshRoot = path.join(root, 'input', 'fsh');
  const declarationStart = /^(Profile|Logical|Extension|Instance|Resource|ValueSet|CodeSystem|Invariant|RuleSet|Mapping|ConceptMap|SearchParameter|OperationDefinition|ImplementationGuide):\s*/;
  const ids = new Map();

  for (const file of walk(fshRoot).filter((item) => item.endsWith('.fsh'))) {
    const lines = fs.readFileSync(file, 'utf8').split(/\r?\n/);
    let current;
    const finish = () => {
      if (!current || !['Profile', 'Logical', 'Extension', 'Resource'].includes(current.kind)) return;
      if (!current.id) {
        diagnostics.push({
          severity: 'error', profile: 'Inventory', resourceId: current.name, canonical: '',
          path: `${file}:${current.line}`, message: `${current.kind} ${current.name} has no explicit Id, so its generated resource cannot be matched reliably.`,
          suggestion: 'Add an explicit Id to this FSH definition.',
        });
        return;
      }
      if (ids.has(current.id)) {
        diagnostics.push({
          severity: 'error', profile: 'Inventory', resourceId: current.id, canonical: '',
          path: `${file}:${current.line}`, message: `Duplicate FSH StructureDefinition Id; first declared in ${ids.get(current.id)}.`,
          suggestion: 'Give each Profile or Logical definition a unique Id.',
        });
        return;
      }
      ids.set(current.id, `${file}:${current.line}`);
    };

    for (let index = 0; index < lines.length; index += 1) {
      const line = lines[index];
      const declaration = line.match(declarationStart);
      if (declaration) {
        finish();
        const kind = declaration[1];
        current = ['Profile', 'Logical', 'Extension', 'Resource'].includes(kind)
          ? { kind, name: line.slice(declaration[0].length).trim().split(/\s+/)[0], line: index + 1 }
          : undefined;
        continue;
      }
      const id = line.match(/^Id:\s*([^\s#]+)/);
      if (current && id && !current.id) current.id = id[1];
    }
    finish();
  }
  return ids;
}

function collectStructureDefinitions(root, diagnostics) {
  const resources = new Map();
  const add = (file, role) => {
    const resource = parseJsonFile(file, diagnostics, role);
    if (!resource || resource.resourceType !== 'StructureDefinition') return;
    if (!resource.id) {
      diagnostics.push({
        severity: 'error', profile: 'Inventory', resourceId: path.basename(file), canonical: '', path: file,
        message: 'StructureDefinition has no id.', suggestion: 'Add a valid FHIR id to the source StructureDefinition.',
      });
      return;
    }
    if (resources.has(resource.id)) {
      diagnostics.push({
        severity: 'error', profile: 'Inventory', resourceId: resource.id, canonical: resource.url || '', path: file,
        message: `Duplicate project-owned StructureDefinition id; also found at ${resources.get(resource.id).file}.`,
        suggestion: 'Remove the duplicate resource or assign it a distinct id.',
      });
      return;
    }
    resources.set(resource.id, { resource, file, role });
  };

  const generatedDir = path.join(root, 'fsh-generated', 'resources');
  const generatedFiles = walk(generatedDir).filter((file) => path.basename(file).startsWith('StructureDefinition-') && file.endsWith('.json'));
  for (const file of generatedFiles) add(file, 'SUSHI-generated');

  // Also include directly authored FHIR JSON under input/. This keeps profiles
  // authored as JSON in scope without scanning package/dependency caches.
  for (const file of walk(path.join(root, 'input')).filter((item) => item.endsWith('.json'))) {
    let resource;
    try {
      resource = JSON.parse(fs.readFileSync(file, 'utf8'));
    } catch (error) {
      if (path.basename(file).startsWith('StructureDefinition-')) {
        parseJsonFile(file, diagnostics, 'input StructureDefinition');
      }
      continue;
    }
    if (resource?.resourceType === 'StructureDefinition') add(file, 'input JSON');
  }

  if (!resources.size) {
    diagnostics.push({
      severity: 'error', profile: 'Inventory', resourceId: '', canonical: '', path: generatedDir,
      message: 'No project-owned StructureDefinition JSON resources were discovered.',
      suggestion: 'Run SUSHI and verify the authored StructureDefinition inventory.',
    });
  }

  const fshIds = readFshDefinitionIds(root, diagnostics);
  for (const [id, source] of fshIds) {
    if (!resources.has(id)) {
      diagnostics.push({
        severity: 'error', profile: 'Inventory', resourceId: id, canonical: '', path: source,
        message: `FSH declares a StructureDefinition that is absent from the generated inventory.`,
        suggestion: 'Fix SUSHI errors and ensure this definition is generated into fsh-generated/resources.',
      });
    }
  }
  return resources;
}

function getProjectVersions(root, diagnostics) {
  const igDir = path.join(root, 'fsh-generated', 'resources');
  const igFiles = walk(igDir).filter((file) => path.basename(file).startsWith('ImplementationGuide-') && file.endsWith('.json'));
  if (igFiles.length !== 1) {
    diagnostics.push({
      severity: 'error', profile: 'Configuration', resourceId: '', canonical: '', path: igDir,
      message: `Expected exactly one SUSHI-generated ImplementationGuide, found ${igFiles.length}.`,
      suggestion: 'Run SUSHI and verify the generated ImplementationGuide inventory.',
    });
    return { fhirVersion: '', crmiVersion: '' };
  }
  const ig = parseJsonFile(igFiles[0], diagnostics, 'ImplementationGuide');
  if (!ig) return { fhirVersion: '', crmiVersion: '' };
  const fhirVersion = (ig.fhirVersion || []).find((version) => version === '4.0.1') || '';
  if (!fhirVersion) {
    diagnostics.push({
      severity: 'error', profile: 'Configuration', resourceId: ig.id || '', canonical: ig.url || '', path: 'ImplementationGuide.fhirVersion',
      message: `Generated ImplementationGuide does not declare FHIR R4 4.0.1 (found ${(ig.fhirVersion || []).join(', ') || 'none'}).`,
      suggestion: 'Keep sushi-config.yaml on FHIR 4.0.1 and regenerate the IG.',
    });
  }
  const crmi = (ig.dependsOn || []).find((dependency) => dependency.packageId === CRMI_PACKAGE);
  if (!crmi?.version) {
    diagnostics.push({
      severity: 'error', profile: 'Configuration', resourceId: ig.id || '', canonical: ig.url || '', path: 'ImplementationGuide.dependsOn',
      message: `Generated ImplementationGuide does not resolve the ${CRMI_PACKAGE} dependency and version.`,
      suggestion: 'Declare the CRMI package in sushi-config.yaml and rerun SUSHI.',
    });
  }
  return { fhirVersion, crmiVersion: crmi?.version || '' };
}

function decodeHtml(value) {
  return value
    .replace(/<br\s*\/?>/gi, ' ')
    .replace(/<[^>]*>/g, ' ')
    .replace(/&nbsp;/gi, ' ')
    .replace(/&quot;/gi, '"')
    .replace(/&#39;|&apos;/gi, "'")
    .replace(/&lt;/gi, '<')
    .replace(/&gt;/gi, '>')
    .replace(/&amp;/gi, '&')
    .replace(/\s+/g, ' ')
    .trim();
}

function parseValidationReport(content) {
  const issues = [];
  const rows = content.matchAll(/<tr\b[^>]*>([\s\S]*?)<\/tr>/gi);
  for (const rowMatch of rows) {
    const cells = [...rowMatch[1].matchAll(/<t[dh]\b[^>]*>([\s\S]*?)<\/t[dh]>/gi)]
      .map((match) => decodeHtml(match[1]));
    if (cells.length >= 4 && /^(fatal|error|warning|information)$/i.test(cells[0])) {
      issues.push({ severity: cells[0].toLowerCase(), code: cells[1], path: cells[2], message: cells[3] });
    }
  }
  return issues;
}

function profileEvidence(issues, canonical, version) {
  // IG Publisher localizes validation messages (for example, "Validar
  // recurso em relação ao perfil" in Portuguese). Match the canonical
  // profile URL instead of depending on an English sentence prefix.
  return issues.some((issue) => issue.message.includes(canonical)
    && (!version || issue.message.includes(`|${version}`)));
}

function makeDiagnostic(profile, resource, pathValue, message, suggestion) {
  return {
    severity: 'error', profile, resourceId: resource?.id || '', canonical: resource?.url || '',
    path: pathValue || '', message, suggestion,
  };
}

function audit(root) {
  const diagnostics = [];
  const discovered = collectStructureDefinitions(root, diagnostics);
  const { fhirVersion, crmiVersion } = getProjectVersions(root, diagnostics);
  const reportDir = path.join(root, 'temp', 'pages', '_includes');
  const publisherResourceDir = path.join(root, 'temp', 'pages');
  let shareableValidated = 0;
  let shareableFailures = 0;
  let publishableRequired = 0;
  let publishableValidated = 0;
  let publishableFailures = 0;
  let warningCount = 0;

  for (const [id, entry] of discovered) {
    const publisherResourcePath = path.join(publisherResourceDir, `StructureDefinition-${id}.json`);
    const reportPath = path.join(reportDir, `StructureDefinition-${id}-validation.xhtml`);
    let resource;
    if (!fs.existsSync(publisherResourcePath)) {
      diagnostics.push(makeDiagnostic('CRMIShareableStructureDefinition', entry.resource, publisherResourcePath,
        'IG Publisher did not produce the processed StructureDefinition resource.',
        'Check the Publisher log for earlier parsing or snapshot failures and rerun the complete build.'));
      shareableFailures += 1;
      if (entry.resource.status === 'active') {
        publishableRequired += 1;
        publishableFailures += 1;
        diagnostics.push(makeDiagnostic('CRMIPublishableStructureDefinition', entry.resource, publisherResourcePath,
          'The active StructureDefinition was not available at the post-publication validation stage.',
          'Resolve the Publisher failure so publication metadata can be applied and the resource validated.'));
      }
      continue;
    }
    resource = parseJsonFile(publisherResourcePath, diagnostics, 'Publisher output');
    if (!resource || resource.resourceType !== 'StructureDefinition' || resource.id !== id) {
      diagnostics.push(makeDiagnostic('Inventory', entry.resource, publisherResourcePath,
        `Publisher output is unreadable or does not match StructureDefinition/${id}.`,
        'Check the generated resource id and Publisher output path.'));
      shareableFailures += 1;
      continue;
    }

    if (!fs.existsSync(reportPath)) {
      diagnostics.push(makeDiagnostic('CRMIShareableStructureDefinition', resource, reportPath,
        'IG Publisher validation report is missing; conformance was not demonstrated.',
        'Ensure the Publisher ran resource validation and did not use -validation-off or -no-validate for this resource.'));
      shareableFailures += 1;
      if (resource.status === 'active') {
        publishableRequired += 1;
        publishableFailures += 1;
        diagnostics.push(makeDiagnostic('CRMIPublishableStructureDefinition', resource, reportPath,
          'No Publishable validation report exists for this active StructureDefinition.',
          'Declare and validate the Publishable profile during the post-publication build.'));
      }
      continue;
    }

    const issues = parseValidationReport(fs.readFileSync(reportPath, 'utf8'));
    const errors = issues.filter((issue) => issue.severity === 'error' || issue.severity === 'fatal');
    const warnings = issues.filter((issue) => issue.severity === 'warning');
    warningCount += warnings.length;

    let shareableFailed = false;
    if (!profileEvidence(issues, SHAREABLE, crmiVersion)) {
      shareableFailed = true;
      diagnostics.push(makeDiagnostic('CRMIShareableStructureDefinition', resource, 'meta.profile',
        `Publisher report does not show validation against ${SHAREABLE}|${crmiVersion || 'resolved version'}.`,
        'Keep the CRMI package dependency and Shareable meta.profile declaration, then rerun IG Publisher.'));
    }

    for (const field of REQUIRED_SHAREABLE_FIELDS) {
      const present = Object.prototype.hasOwnProperty.call(resource, field)
        && resource[field] !== null
        && resource[field] !== '';
      if (!present) {
        shareableFailed = true;
        diagnostics.push(makeDiagnostic('CRMIShareableStructureDefinition', resource, `StructureDefinition.${field}`,
          `Required Shareable metadata '${field}' is missing after Publisher processing.`,
          `Populate StructureDefinition.${field} in the FSH source or publication configuration.`));
      }
    }

    if (errors.length) {
      shareableFailed = true;
      for (const issue of errors) {
        diagnostics.push(makeDiagnostic('CRMIShareableStructureDefinition', resource, issue.path,
          `${issue.severity} (${issue.code}): ${issue.message}`,
          'Correct the reported FHIR/CRMI constraint in its FSH or JSON source and rerun IG Publisher.'));
      }
    }
    if (shareableFailed) shareableFailures += 1;
    else shareableValidated += 1;

    // The CRMI DoD applies Publishable only to an active StructureDefinition.
    // IG Publisher output is inspected here so date/version metadata from its
    // publication lifecycle is available before this decision is enforced.
    if (resource.status === 'active') {
      publishableRequired += 1;
      let publishableFailed = false;
      if (!resource.date) {
        publishableFailed = true;
        diagnostics.push(makeDiagnostic('CRMIPublishableStructureDefinition', resource, 'StructureDefinition.date',
          'Active StructureDefinition is missing the date required by CRMIPublishableStructureDefinition.',
          'Ensure the publication process assigns StructureDefinition.date before validation.'));
      }
      if (!profileEvidence(issues, PUBLISHABLE, crmiVersion)) {
        publishableFailed = true;
        diagnostics.push(makeDiagnostic('CRMIPublishableStructureDefinition', resource, 'meta.profile',
          `Publisher report does not show validation against ${PUBLISHABLE}|${crmiVersion || 'resolved version'}.`,
          'Declare CRMIPublishableStructureDefinition for this active artifact in its FSH source and rerun the build.'));
      }
      if (errors.length) publishableFailed = true;
      if (publishableFailed) publishableFailures += 1;
      else publishableValidated += 1;
    }
  }

  return {
    fhirVersion,
    crmiVersion,
    discovered: discovered.size,
    shareableValidated,
    shareableFailures,
    publishableRequired,
    publishableValidated,
    publishableFailures,
    warningCount,
    diagnostics,
  };
}

function printSummary(summary) {
  console.log(`CRMI validation (FHIR ${summary.fhirVersion || 'unresolved'}; ${CRMI_PACKAGE} ${summary.crmiVersion || 'unresolved'})`);
  console.log(`StructureDefinitions discovered: ${summary.discovered}`);
  console.log(`Shareable: ${summary.shareableValidated} validated; ${summary.shareableFailures} failures.`);
  console.log(`Publishable: ${summary.publishableRequired} required; ${summary.publishableValidated} validated; ${summary.publishableFailures} failures.`);
  console.log(`Publisher warnings (reported, not treated as errors): ${summary.warningCount}`);
  for (const item of summary.diagnostics) {
    const resource = item.resourceId ? `StructureDefinition/${item.resourceId}` : 'CRMI validation';
    const canonical = item.canonical ? ` (${item.canonical})` : '';
    const location = item.path ? ` at ${item.path}` : '';
    console.error(`ERROR [${item.profile}] ${resource}${canonical}${location}: ${item.message}`);
    if (item.suggestion) console.error(`  Suggested action: ${item.suggestion}`);
  }
}

function main(argv = process.argv.slice(2)) {
  let root = process.cwd();
  for (let index = 0; index < argv.length; index += 1) {
    if (argv[index] === '--root' && argv[index + 1]) root = path.resolve(argv[++index]);
    else if (argv[index] === '--help' || argv[index] === '-h') {
      console.log('Usage: node scripts/validate-crmi.js [--root <IG root>]');
      return 0;
    } else {
      console.error(`Unknown argument: ${argv[index]}`);
      return 2;
    }
  }
  const summary = audit(root);
  printSummary(summary);
  return summary.diagnostics.length ? 1 : 0;
}

if (require.main === module) process.exitCode = main();

module.exports = {
  SHAREABLE,
  PUBLISHABLE,
  audit,
  collectStructureDefinitions,
  parseValidationReport,
  profileEvidence,
  main,
};
