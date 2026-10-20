// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C3 Physical examination"

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENC3PhysicalExamination
Id: DEN-C3-Physical-examination
Title: "DEN.C3 Physical examination"
Description: "Data elements for the DEN.C3 Physical examination Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C3 Physical examination data dictionary."
* dangerSign 0..1 code "Danger sign"
  "Evaluate if patient is in shock"
  * ^code[+] = $DENConcepts#DEN.C3.DE1
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C3.DE3 ('Hypotensive shock'; Required=R); DEN.C3.DE4 ('Severe bleeding'; Required=R); DEN.C3.DE5 ('Severe organ impairment'; Required=R); DEN.C3.DE6 ('None'; Required=O); validation: Cannot select with any other option. Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* quantityOfOralIntake 0..1 Quantity "Quantity of oral intake"
  "Volume of fluids consumed by the patient."
  * ^code[+] = $DENConcepts#DEN.C3.DE7
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Integer quantity."
