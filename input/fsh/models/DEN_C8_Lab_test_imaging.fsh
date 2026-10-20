// -----------------------------------------------------------------------------
// Source worksheet: "DEN C8. Lab test & imaging"

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENC8LabTestImaging
Id: DEN-C8-Lab-test-imaging
Title: "DEN C8. Lab test & imaging"
Description: "Data elements for the DEN C8. Lab test & imaging Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN C8. Lab test & imaging data dictionary."
* orderComplementaryExams 1..1 code "Order Complementary exams"
  * ^code[+] = $DENConcepts#DEN.C8.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE2 ('Complete blood count test (1)'; Required=O); DEN.C8.DE3 ('Hematocrit (1)'; Required=not specified); DEN.C8.DE4 ('Platelet count (1)'; Required=not specified); DEN.C8.DE5 ('Dengue PCR'; Required=not specified); DEN.C8.DE6 ('Dengue virus serology'; Required=not specified). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams2 1..1 code "Order Complementary exams (2)"
  * ^code[+] = $DENConcepts#DEN.C8.DE7
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE8 ('Complete blood count test (2)'; Required=O); DEN.C8.DE9 ('Hematocrit (2)'; Required=O); DEN.C8.DE10 ('Platelet count (2)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams3 1..1 code "Order Complementary exams (3)"
  * ^code[+] = $DENConcepts#DEN.C8.DE11
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE12 ('Complete blood count test (3)'; Required=O); DEN.C8.DE13 ('Hematocrit (3)'; Required=O); DEN.C8.DE14 ('Platelet count (3)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams4 1..1 code "Order Complementary exams (4)"
  * ^code[+] = $DENConcepts#DEN.C8.DE15
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE16 ('Complete blood count test (4)'; Required=O); DEN.C8.DE17 ('Hematocrit (4)'; Required=O); DEN.C8.DE18 ('Platelet count (4)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams5 1..1 code "Order Complementary exams (5)"
  * ^code[+] = $DENConcepts#DEN.C8.DE19
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE20 ('Complete blood count test (5)'; Required=O); DEN.C8.DE21 ('Hematocrit (5)'; Required=O); DEN.C8.DE22 ('Platelet count (5)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams6 1..1 code "Order Complementary exams (6)"
  * ^code[+] = $DENConcepts#DEN.C8.DE23
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE24 ('Complete blood count test (6)'; Required=O); DEN.C8.DE25 ('Hematocrit (6)'; Required=O); DEN.C8.DE26 ('Platelet count (6)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams7 1..1 code "Order Complementary exams (7)"
  * ^code[+] = $DENConcepts#DEN.C8.DE27
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE28 ('Complete blood count test (7)'; Required=O); DEN.C8.DE29 ('Hematocrit (7)'; Required=O); DEN.C8.DE30 ('Platelet count (7)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* hematocritHtResults1 0..1 Quantity "Hematocrit (Ht) results (1)"
  "Hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE31
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults1 0..1 Quantity "Platelet count (observable entity) results (1)"
  "Quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE32
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* dengueVirusSerologyResults 0..1 Quantity "Dengue virus serology results"
  "Results of laboratory tests for dengue confirmation. Required for surveillance/confirmation, but not essential for immediate clinical management."
  * ^code[+] = $DENConcepts#DEN.C8.DE33
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available. | Data Type is blank in the source dictionary; a provisional FHIR logical type was inferred. Confirm before publication."
* denguePCRResults 0..1 Quantity "Dengue PCR results"
  "Results of laboratory tests for dengue confirmation. Required for surveillance/confirmation, but not essential for immediate clinical management."
  * ^code[+] = $DENConcepts#DEN.C8.DE34
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available. | Data Type is blank in the source dictionary; a provisional FHIR logical type was inferred. Confirm before publication."
* hematocritHtResults2 0..1 Quantity "Hematocrit (Ht) results (2)"
  "Results of second hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE35
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults2 0..1 Quantity "Platelet count (observable entity) results (2)"
  "Results of second quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE36
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults3 0..1 Quantity "Hematocrit (Ht) results (3)"
  "Results of third hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE37
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults3 0..1 Quantity "Platelet count (observable entity) results (3)"
  "Results of third quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE38
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults4 0..1 Quantity "Hematocrit (Ht) results (4)"
  "Results of fourth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE39
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults4 0..1 Quantity "Platelet count (observable entity) results (4)"
  "Results of fourth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE40
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults5 0..1 Quantity "Hematocrit (Ht) results (5)"
  "Results of fifth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE41
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults5 0..1 Quantity "Platelet count (observable entity) results (5)"
  "Results of fifth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE42
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults6 0..1 Quantity "Hematocrit (Ht) results (6)"
  "Results of sixth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE43
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults6 0..1 Quantity "Platelet count (observable entity) results (6)"
  "Results of sixth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE44
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults7 0..1 Quantity "Hematocrit (Ht) results (7)"
  "Results of seventh hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE45
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults7 0..1 Quantity "Platelet count (observable entity) results (7)"
  "Results of seventh quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE46
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
