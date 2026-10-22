Instance: den-encounter-example
InstanceOf: DENEncounter
Usage: #example
* id = "den-encounter-example"
* meta.profile = "https://smart.who.int/den/StructureDefinition/den-encounter"
* status = #finished
* class = $BRModalidadeAssistencialCS#09 "Assistência Ambulatorial"
* priority = $BRCaraterAtendimentoCS#01 "Eletivo"
* subject = Reference(den-patient-example)
* period.start = "2026-10-22T10:00:00-03:00"
* serviceProvider.identifier.value = "example-facility"
* serviceProvider.display = "Example health facility"
