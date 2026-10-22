Logical: DENC46Diagnostic
Id: DEN.C4-6
Title: "DEN.C4-6 Diagnostic"
Description: "Data elements for the DEN.C4-6 Diagnostic Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^url = "https://smart.who.int/den/StructureDefinition/DEN.C4-6"
* ^type = "https://smart.who.int/den/StructureDefinition/DENC46"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_C4_6_Diagnostic"
* ^version = "0.1.0"

// DEN.C4. Suspected dengue fever
* suspectedDengueFever 0..1 boolean "Suspected dengue fever" "Indicates whether the patient presents with signs and symptoms consistent with dengue"
  * ^code[+] = $DENConcepts#DEN.C4.DE1 "Suspected dengue fever"
  * ^code[+] = $ICD11#1D2Z "Dengue, unspecified"
  * ^code[+] = $ICD10#A97.9 "Dengue, unspecified"
  * ^code[+] = $SCT#418429061000132101 "Suspected dengue (situation)"
  * ^comment = "Required: O."

* confirmedDengueFever 0..1 boolean "Confirmed dengue fever" "Indicates that the patient’s diagnosis of dengue has been confirmed by laboratory tests"
  * ^code[+] = $DENConcepts#DEN.C4.DE2 "Confirmed dengue fever"
  * ^code[+] = $ICD11#1D2Z "Dengue, unspecified"
  * ^code[+] = $ICD10#A97.9 "Dengue, unspecified"
  * ^code[+] = $SCT#38362002 "Dengue (disorder)"
  * ^comment = "Required: O."

// DEN.C5. Investigate other causes - No data is recorded during this activity

// DEN.C6. Classify the patient
* dengueClassification 1..1 code "Dengue classification" "Severity classification of the patient"
  * ^code[+] = $DENConcepts#DEN.C6.DE1 "Dengue classification"
* dengueClassification from DENC6DE1 (required)
  * ^comment = "Select one. Options: Group A (DEN.C6.DE2), Group B (DEN.C6.DE3), Group C (DEN.C6.DE4), Group D (DEN.C6.DE5). Required: R."

