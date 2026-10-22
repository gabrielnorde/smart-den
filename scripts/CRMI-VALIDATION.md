# CRMI StructureDefinition validation

The build runs `node scripts/validate-crmi.js --root "$PWD"` after IG Publisher. SUSHI creates the authoritative project resources in `fsh-generated/resources`; IG Publisher processes those resources and writes the final resources and per-resource validation reports under `temp/pages`.

The check discovers every `StructureDefinition` JSON in `fsh-generated/resources` and every directly authored `StructureDefinition` JSON under `input`. It also compares generated resources with the FSH `Profile`, `Logical`, `Extension`, and `Resource` declarations, so a declared definition that SUSHI failed to generate is an error. Dependency packages are outside these project-owned directories and are not included in the inventory.

For each discovered resource, the check requires IG Publisher output and its validation report to show actual validation against CRMI `ShareableStructureDefinition`; a `meta.profile` declaration alone is not considered evidence. It also checks the required Shareable metadata fields (`url`, `version`, `title`, `experimental`, and `description`) in the Publisher-processed resource. Publisher errors fail the check. Warnings are counted and reported without failing it.

`PublishableStructureDefinition` is required when the Publisher-processed resource has `status = active`. In that case the report must show actual validation against the CRMI Publishable profile and `date` must be present. Draft resources are checked against Shareable only. The project currently declares FHIR R4 `4.0.1` and CRMI package `hl7.fhir.uv.crmi#1.0.0`; these are read from the generated ImplementationGuide and reported by the check.

The command fails if Publisher did not process a resource, its validation report is missing or unreadable, validation evidence is absent, a required metadata field is missing, a Publisher error exists, or source and generated inventories disagree. Run the automated checks with:

```sh
node tests/validate-crmi.test.js
node scripts/validate-crmi.js --root .
```

The second command is a post-Publisher check and therefore expects a complete, successful IG Publisher run first. The project build wrapper and CI job run it after Publisher automatically.
