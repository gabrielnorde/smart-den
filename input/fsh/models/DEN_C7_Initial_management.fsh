Logical: DENC7InitialManagement
Id: DEN.C7
Title: "DEN.C7 Initial management"
Description: "Data elements for the DEN.C7 Initial management Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_C7_Initial_management"
* ^version = "0.1.0"

// DEN.C7.1 Starts hydration
* startsHydration 1..1 code "Starts hydration" "Indicates whether hydration therapy has been initiated for a patient with suspected or confirmed dengue"
  * ^code[+] = $DENConcepts#DEN.C7.1.DE1 "Starts hydration"
  * ^code[+] = $SCT#243221009 "Rehydration therapy (procedure)"
* startsHydration from DENC71DE1 (required)
  * ^comment = "Select one. Options: Oral hydration (DEN.C7.1.DE2), IV hydration (DEN.C7.1.DE3), No hydration (DEN.C7.1.DE4). Required: R."

// DEN.C7.2. Define management
* defineManagement 0..1 code "Define management" "Define management categories aligned with severity classification and available resources"
  * ^code[+] = $DENConcepts#DEN.C7.2.DE1 "Define management"
* defineManagement from DENC72DE1 (required)
  * ^comment = "Select one. Options: Ambulatory care (DEN.C7.2.DE2), In-Hospital care (DEN.C7.2.DE3), Hospital care (DEN.C7.2.DE4), Intensive care (ICU) (DEN.C7.2.DE5)."

