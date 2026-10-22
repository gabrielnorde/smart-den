Logical: DENC3PhysicalExamination
Id: DEN.C3
Title: "DEN.C3 Physical examination"
Description: "Data elements for the DEN.C3 Physical examination Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_C3_Physical_examination"
* ^version = "0.1.0"

// DEN.C1. Enter doctor office - No data is recorded during this activity
// DEN.C2. Take history - No data is recorded during this activity

// DEN.C3. Physical examination
* dangerSign 0..* code "Danger sign" "Evaluate if patient is in shock"
  * ^code[+] = $DENConcepts#DEN.C3.DE1 "Danger sign"
* dangerSign from DENC3DE1 (required)
  * ^comment = "Select all that apply. Options: Hypotensive shock (DEN.C3.DE3), Severe bleeding (DEN.C3.DE4), Severe organ impairment (DEN.C3.DE5), None (DEN.C3.DE6)."

* quantityOfOralIntake 0..1 Quantity "Quantity of oral intake" "Volume of fluids consumed by the patient"
  * ^code[+] = $DENConcepts#DEN.C3.DE7 "Quantity of oral intake"
  * ^code[+] = $LNC#9007-06-01 "Fluid intake oral 24 hour"
  * ^code[+] = $SCT#251853006 "Oral fluid input (observable entity)"
  * ^comment = "Quantity sub-type: Integer quantity. Note: It is important to assess the patient's hydration status."

