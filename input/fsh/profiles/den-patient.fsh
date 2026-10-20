Alias: $BRCorePatient = https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient

Profile: DENPatient
Parent: $BRCorePatient
Id: den-patient
Title: "DEN Patient"
Description: "Patient profile for the Brazilian dengue adaptation, derived from BRCorePatient."

* identifier[cns] 1..1
* identifier[cns].value 1..1
* name 1..1
* name.given 1..*
* name.family 1..1
* address 1..*
* telecom 1..*
* contact.name.text 1..1
