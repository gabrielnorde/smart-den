Instance: den-patient-example
InstanceOf: DENPatient
Usage: #example
* id = "den-patient-example"
* meta.profile = "https://smart.who.int/den/StructureDefinition/den-patient"
* identifier[cpf].use = #official
* identifier[cpf].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#TAX "Tax ID number"
* identifier[cpf].system = "https://saude.gov.br/fhir/sid/cpf"
* identifier[cpf].value = "12345678901"
* identifier[cns].use = #official
* identifier[cns].type.coding = http://terminology.hl7.org/CodeSystem/v2-0203#HC "Health Card Number"
* identifier[cns].system = "https://saude.gov.br/fhir/sid/cns"
* identifier[cns].value = "123456789012345"
* name.use = #official
* name.family = "Silva"
* name.given[0] = "Ana"
* gender = #female
* birthDate = "1990-03-15"
* extension[identidadeGenero].url = "http://hl7.org/fhir/StructureDefinition/patient-genderIdentity"
* extension[identidadeGenero].valueCodeableConcept.coding = $SCT#446141000124107 "Identifies as female gender (finding)"
* extension[raca].url = "https://ips.saude.gov.br/fhir/StructureDefinition/raca-br-ips"
* extension[raca].valueCodeableConcept.coding = $BRRacaCorCS#02 "Preta"
* address[0].use = #home
* address[0].text = "Rua Exemplo, 100, Florianópolis, SC"
* address[0].city = "Florianópolis"
* address[0].state = "SC"
* address[0].country = "Brasil"
* telecom[mobile].system = #phone
* telecom[mobile].value = "+55 48 99999-0000"
* telecom[mobile].use = #mobile
* contact[mother].name.text = "Maria Silva"
* contact[mother].relationship = $V3RoleCode#MTH "mother"
