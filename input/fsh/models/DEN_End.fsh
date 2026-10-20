// -----------------------------------------------------------------------------
// Source worksheet: "DEN.End"

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENEnd
Id: DEN-End
Title: "DEN.End"
Description: "Data elements for the DEN.End Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.End data dictionary."
* reasonForClosingDENRecord 1..1 code "Reason for closing DEN record"
  "Select the reason why you are closing the patient's DEN record"
  * ^code[+] = $DENConcepts#DEN.End.1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.End.2 ('Death'; Required=O); DEN.End.3 ('Lost to follow-up'; Required=O); DEN.End.4 ('Discharge'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
