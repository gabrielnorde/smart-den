// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C7 Initial management"

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENC7InitialManagement
Id: DEN-C7-Initial-management
Title: "DEN.C7 Initial management"
Description: "Data elements for the DEN.C7 Initial management Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C7 Initial management data dictionary."
* startsHydration 1..1 code "Starts hydration"
  "Indicates whether hydration therapy has been initiated for a patient with suspected or confirmed dengue."
  * ^code[+] = $DENConcepts#DEN.C7.1.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C7.1.DE2 ('Oral hydration'; Required=R); DEN.C7.1.DE3 ('IV hydration'; Required=R); DEN.C7.1.DE4 ('No hydration'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* defineManagement 0..1 code "Define management"
  "Define management categories aligned with severity classification and available resources."
  * ^code[+] = $DENConcepts#DEN.C7.2.DE1
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C7.2.DE2 ('Ambulatory care'; Required=O); DEN.C7.2.DE3 ('In-Hospital care'; Required=not specified); DEN.C7.2.DE4 ('Hospital care'; Required=O); DEN.C7.2.DE5 ('Intensive care (ICU)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
