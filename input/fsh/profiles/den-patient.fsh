Profile: DENPatient
Parent: $BRCorePatient
Id: den-patient
Title: "DEN Patient"
Description: "Patient profile for the Brazilian dengue adaptation, derived from BRCorePatient and covering the DEN.A registration patient data elements."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DENPatient"
* ^publisher = "Federal University of Santa Catarina (UFSC)"

// DEN.A2 patient data elements
* identifier[cns] 1..1
* identifier[cns].value 1..1
* name 1..1
* name.given 1..*
* name.family 1..1
* birthDate ^comment = "DEN.A2.DE5. DEN.A2.DE6 (age) is derived from birthDate and the associated Encounter.period.start."
* gender 1..1
* gender from $AdministrativeGenderVS (required)
* extension[identidadeGenero] 1..1
* extension[identidadeGenero] only $BRGenderIdentityExtension
* extension[identidadeGenero].valueCodeableConcept 1..1
* extension[identidadeGenero].valueCodeableConcept from $BRIdentidadeGenero (required)
* extension[identidadeGenero].valueCodeableConcept.text ^comment = "DEN.A2.DE13. Optional free-text clarification for the selected gender identity."
* address 1..*
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[0].path = "system"
* telecom ^slicing.discriminator[1].type = #value
* telecom ^slicing.discriminator[1].path = "use"
* telecom ^slicing.rules = #open
* telecom contains mobile 1..1
* telecom[mobile].system = #phone (exactly)
* telecom[mobile].use = #mobile (exactly)

// The mother's name is required in DEN.A. Other Patient.contact entries can carry an optional alternative contact.
* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "relationship"
* contact ^slicing.rules = #open
* contact contains mother 1..1
* contact[mother].relationship = $V3RoleCode#MTH "mother"
* contact[mother].name.text 1..1
* contact.name.text ^comment = "DEN.A2.DE16 is represented by a non-mother contact name; DEN.A2.DE18 is represented by contact[mother].name."
* contact.telecom ^comment = "DEN.A2.DE17 is represented by the telecom element on the alternative Patient.contact entry."
