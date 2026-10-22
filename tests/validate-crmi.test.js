'use strict';

const assert = require('node:assert/strict');
const fs = require('node:fs');
const os = require('node:os');
const path = require('node:path');
const test = require('node:test');
const { SHAREABLE, PUBLISHABLE, audit, main } = require('../scripts/validate-crmi');

const baselineIds = [
  'DEN.B', 'DEN.C10', 'DEN.C11', 'DEN.C3', 'DEN.C4-6', 'DEN.C7',
  'DEN.C8', 'DEN.C9', 'DEN.End', 'DENA', 'den-encounter', 'den-patient',
];

function makeStructureDefinition(id, { status = 'draft', date = status === 'active' ? '2026-10-22' : undefined } = {}) {
  const metaProfile = [SHAREABLE];
  if (status === 'active') metaProfile.push(PUBLISHABLE);
  const resource = {
    resourceType: 'StructureDefinition',
    id,
    url: `https://example.org/StructureDefinition/${id}`,
    version: '0.1.0',
    name: `Test${id.replace(/[^A-Za-z0-9]/g, '')}`,
    title: `Test ${id}`,
    status,
    experimental: true,
    description: `Fixture for ${id}`,
    meta: { profile: metaProfile },
  };
  if (date) resource.date = date;
  return resource;
}

function validationReport({ active = false, error } = {}) {
  const rows = [
    `<tr><td>information</td><td>informational</td><td>StructureDefinition/test</td><td>Validate resource against profile ${SHAREABLE}|1.0.0</td></tr>`,
  ];
  if (active) rows.push(
    `<tr><td>information</td><td>informational</td><td>StructureDefinition/test</td><td>Validate resource against profile ${PUBLISHABLE}|1.0.0</td></tr>`,
  );
  if (error) rows.push(
    `<tr><td>${error.severity || 'error'}</td><td>${error.code || 'required'}</td><td>${error.path || 'StructureDefinition/test: StructureDefinition.title'}</td><td>${error.message || 'Test validation failure'}</td></tr>`,
  );
  return `<table><tr><td>Level</td><td>Type</td><td>Location</td><td>Message</td></tr>${rows.join('')}</table>`;
}

function fixture({ ids = baselineIds, activeIds = [], reportOptions = {}, omitReports = [], omitResources = [], malformedGenerated = false } = {}) {
  const root = fs.mkdtempSync(path.join(os.tmpdir(), 'crmi-validation-'));
  const generated = path.join(root, 'fsh-generated', 'resources');
  const finalResources = path.join(root, 'temp', 'pages');
  const reports = path.join(finalResources, '_includes');
  const fsh = path.join(root, 'input', 'fsh', 'models');
  fs.mkdirSync(generated, { recursive: true });
  fs.mkdirSync(reports, { recursive: true });
  fs.mkdirSync(fsh, { recursive: true });
  fs.writeFileSync(path.join(generated, 'ImplementationGuide-test.json'), JSON.stringify({
    resourceType: 'ImplementationGuide',
    id: 'test',
    fhirVersion: ['4.0.1'],
    dependsOn: [{ packageId: 'hl7.fhir.uv.crmi', version: '1.0.0' }],
  }));

  ids.forEach((id, index) => {
    const active = activeIds.includes(id);
    const resource = makeStructureDefinition(id, { status: active ? 'active' : 'draft' });
    const generatedPath = path.join(generated, `StructureDefinition-${id}.json`);
    if (!(malformedGenerated && index === 0)) fs.writeFileSync(generatedPath, JSON.stringify(resource));
    else fs.writeFileSync(generatedPath, '{ invalid json');
    fs.writeFileSync(path.join(fsh, `model-${index}.fsh`), `Logical: Model${index}\nId: ${id}\n`);

    if (omitResources.includes(id)) return;
    const finalResource = { ...resource, meta: resource.meta && { ...resource.meta } };
    fs.writeFileSync(path.join(finalResources, `StructureDefinition-${id}.json`), JSON.stringify(finalResource));
    if (!omitReports.includes(id)) {
      const options = reportOptions[id] || {};
      const xml = validationReport({ active, ...options });
      fs.writeFileSync(path.join(reports, `StructureDefinition-${id}-validation.xhtml`), xml);
    }
  });
  return root;
}

test('discovers and validates the 12 current StructureDefinitions', () => {
  const root = fixture();
  const result = audit(root);
  assert.equal(result.discovered, 12);
  assert.equal(result.shareableValidated, 12);
  assert.equal(result.shareableFailures, 0);
  assert.equal(result.publishableRequired, 0);
  assert.equal(result.publishableFailures, 0);
});

test('fails Shareable validation when required metadata is missing', () => {
  const root = fixture({ ids: ['missing-title'] });
  const finalPath = path.join(root, 'temp', 'pages', 'StructureDefinition-missing-title.json');
  const resource = JSON.parse(fs.readFileSync(finalPath, 'utf8'));
  delete resource.title;
  fs.writeFileSync(finalPath, JSON.stringify(resource));
  const result = audit(root);
  assert.equal(result.shareableFailures, 1);
  assert.ok(result.diagnostics.some((item) => item.path === 'StructureDefinition.title'));
});

test('fails when Publisher reports an invalid CRMI constraint', () => {
  const root = fixture({
    ids: ['invalid-constraint'],
    reportOptions: { 'invalid-constraint': { error: { path: 'StructureDefinition/invalid-constraint: StructureDefinition.name', message: 'Name is required by CRMI.' } } },
  });
  const result = audit(root);
  assert.equal(result.shareableFailures, 1);
  assert.ok(result.diagnostics.some((item) => item.path.includes('StructureDefinition.name') && item.message.includes('Name is required')));
});

test('accepts a valid draft against Shareable without requiring Publishable', () => {
  const result = audit(fixture({ ids: ['draft-profile'] }));
  assert.equal(result.shareableValidated, 1);
  assert.equal(result.publishableRequired, 0);
  assert.equal(result.publishableFailures, 0);
});

test('requires Publishable and date for an active StructureDefinition', () => {
  const root = fixture({ ids: ['active-no-date'], activeIds: ['active-no-date'] });
  const finalPath = path.join(root, 'temp', 'pages', 'StructureDefinition-active-no-date.json');
  const resource = JSON.parse(fs.readFileSync(finalPath, 'utf8'));
  delete resource.date;
  fs.writeFileSync(finalPath, JSON.stringify(resource));
  const result = audit(root);
  assert.equal(result.publishableRequired, 1);
  assert.equal(result.publishableFailures, 1);
  assert.ok(result.diagnostics.some((item) => item.profile === 'CRMIPublishableStructureDefinition' && item.path === 'StructureDefinition.date'));
});

test('accepts an active, published resource that passes both CRMI profiles', () => {
  const result = audit(fixture({ ids: ['active-valid'], activeIds: ['active-valid'] }));
  assert.equal(result.shareableValidated, 1);
  assert.equal(result.publishableRequired, 1);
  assert.equal(result.publishableValidated, 1);
  assert.equal(result.publishableFailures, 0);
});

test('automatically includes a newly added StructureDefinition', () => {
  const root = fixture({ ids: baselineIds });
  fs.writeFileSync(path.join(root, 'input', 'fsh', 'models', 'new-extension.fsh'), 'Extension: NewExtension\nId: den-new-extension\n');
  const extension = makeStructureDefinition('den-new-extension');
  fs.writeFileSync(path.join(root, 'fsh-generated', 'resources', 'StructureDefinition-den-new-extension.json'), JSON.stringify(extension));
  const finalResources = path.join(root, 'temp', 'pages');
  fs.writeFileSync(path.join(finalResources, 'StructureDefinition-den-new-extension.json'), JSON.stringify(extension));
  fs.writeFileSync(path.join(finalResources, '_includes', 'StructureDefinition-den-new-extension-validation.xhtml'), validationReport());
  const result = audit(root);
  assert.equal(result.discovered, 13);
  assert.equal(result.shareableValidated, 13);
});

test('a missing validation report makes the command fail', () => {
  const root = fixture({ ids: ['no-report'], omitReports: ['no-report'] });
  const originalLog = console.log;
  const originalError = console.error;
  let exitCode;
  console.log = () => {};
  console.error = () => {};
  try {
    exitCode = main(['--root', root]);
  } finally {
    console.log = originalLog;
    console.error = originalError;
  }
  assert.equal(exitCode, 1);
  assert.ok(audit(root).diagnostics.some((item) => item.message.includes('validation report is missing')));
});

test('reports missing package dependencies, malformed resources, and incomplete inventory', () => {
  const missingDependencyRoot = fixture({ ids: ['no-dependency'] });
  const igPath = path.join(missingDependencyRoot, 'fsh-generated', 'resources', 'ImplementationGuide-test.json');
  const ig = JSON.parse(fs.readFileSync(igPath, 'utf8'));
  ig.dependsOn = [];
  fs.writeFileSync(igPath, JSON.stringify(ig));
  assert.ok(audit(missingDependencyRoot).diagnostics.some((item) => item.message.includes('does not resolve the hl7.fhir.uv.crmi dependency')));

  const malformedRoot = fixture({ ids: ['broken-resource'], malformedGenerated: true });
  assert.ok(audit(malformedRoot).diagnostics.some((item) => item.message.includes('Cannot read valid JSON')));

  const incompleteRoot = fixture({ ids: ['expected-but-not-generated'] });
  fs.rmSync(path.join(incompleteRoot, 'fsh-generated', 'resources', 'StructureDefinition-expected-but-not-generated.json'));
  const incomplete = audit(incompleteRoot);
  assert.ok(incomplete.diagnostics.some((item) => item.message.includes('absent from the generated inventory')));
});
