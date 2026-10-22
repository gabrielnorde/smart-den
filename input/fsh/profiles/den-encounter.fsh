Profile: DENEncounter
Parent: $BRCoreEncounter
Id: den-encounter
Title: "DEN Encounter"
Description: "Encounter profile for the Brazilian dengue adaptation, derived from BRCoreEncounter and covering the DEN.A registration visit date."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DENEncounter"
* ^publisher = "Federal University of Santa Catarina (UFSC)"

// DEN.A2.DE4: visit date. This period start also supplies the reference date for calculating age.
* subject 1..1
* subject only Reference(DENPatient)
* period.start 1..1
* priority 1..1
* serviceProvider 1..1
