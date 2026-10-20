// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C4-6 Diagnostic"

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENC46Diagnostic
Id: DEN-C4-6-Diagnostic
Title: "DEN.C4-6 Diagnostic"
Description: "Data elements for the DEN.C4-6 Diagnostic Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C4-6 Diagnostic data dictionary."
* suspectedDengueFever 0..1 boolean "Suspected dengue fever"
  "Indicates whether the patient presents with signs and symptoms consistent with dengue."
  * ^code[+] = $DENConcepts#DEN.C4.DE1
* confirmedDengueFever 0..1 boolean "Confirmed dengue fever"
  "Indicates that the patient’s diagnosis of dengue has been confirmed by laboratory tests."
  * ^code[+] = $DENConcepts#DEN.C4.DE2
* dengueClassification 1..1 code "Dengue classification"
  * ^code[+] = $DENConcepts#DEN.C6.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C6.DE2 ('Group A'; Required=R); DEN.C6.DE3 ('Group B'; Required=R); DEN.C6.DE4 ('Group C'; Required=R); DEN.C6.DE5 ('Group D'; Required=R). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
