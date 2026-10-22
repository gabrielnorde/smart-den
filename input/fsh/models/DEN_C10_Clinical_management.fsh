Logical: DENC10ClinicalManagement
Id: DEN.C10
Title: "DEN.C10 Clinical management"
Description: "Data elements for the DEN.C10 Clinical management Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^url = "https://smart.who.int/den/StructureDefinition/DEN.C10"
* ^type = "https://smart.who.int/den/StructureDefinition/DENC10"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_C10_Clinical_management"
* ^version = "0.1.0"

// Define hydration
* defineVolumeHydration 1..1 Quantity "Define Volume hydration" "Hydration: Daily fluid requirement based on patient’s body weight"
  * ^code[+] = $DENConcepts#DEN.C10.DE1 "Define Volume hydration"
  * ^comment = "Quantity sub-type: Decimal quantity. Calculation: see on DEN.DT.03 Define hydration. Required: R."

* homemadeFluids 1..1 Quantity "Homemade Fluids" "Fluids commonly prepared at home, such as water, fruit juices, soups, teas, coconut water"
  * ^code[+] = $DENConcepts#DEN.C10.DE2 "Homemade Fluids"
  * ^comment = "Quantity sub-type: Decimal quantity. Calculation: see on DEN.DT.03 Define hydration. Required: R."

* oralRehydrationSolutionORS 1..1 Quantity "Oral rehydration solution (ORS)" "Mixture of glucose and electrolytes dissolved in water used to treat dehydration"
  * ^code[+] = $DENConcepts#DEN.C10.DE3 "Oral rehydration solution (ORS)"
  * ^comment = "Quantity sub-type: Decimal quantity. Calculation: see on DEN.DT.03 Define hydration. Required: R."

* isotonicSolutions 1..1 Quantity "Isotonic solutions" "Solutions that match the body's natural fluid concentration, safe for IV administration"
  * ^code[+] = $DENConcepts#DEN.C10.DE4 "Isotonic solutions"
  * ^comment = "Quantity sub-type: Decimal quantity. Calculation: see on DEN.DT.03 Define hydration. Required: R."

* plasmaExpanders 1..1 Quantity "Plasma expanders" "Plasma expanders (albumin 0.5–1 g/kg): prepare 5% albumin solution; or synthetic colloids"
  * ^code[+] = $DENConcepts#DEN.C10.DE5 "Plasma expanders"
  * ^comment = "Quantity sub-type: Decimal quantity. Calculation: see on DEN.DT.03 Define hydration. Required: R."

* hydrationPhase 0..* code "Hydration Phase" "Select the active hydration phase"
  * ^code[+] = $DENConcepts#DEN.C10.DE6 "Hydration Phase"
* hydrationPhase from DENC10DE6 (required)
  * ^comment = "Select all that apply. Options: Expansion phase 1 (DEN.C10.DE7), Expansion phase 2 (DEN.C10.DE8), Expansion phase 3 (DEN.C10.DE9), Maintenance phase 1 (DEN.C10.DE10), Maintenance phase 2 (DEN.C10.DE11)."

// Define Medication
* paracetamol 0..1 boolean "Paracetamol" "Record of paracetamol (acetaminophen) use for management of fever or pain"
  * ^code[+] = $DENConcepts#DEN.C10.DE12 "Paracetamol"
  * ^code[+] = $SCT#387517004 "Paracetamol (substance)"
  * ^comment = "Note: Interval should not be less than 6 hours."

* dipyrone 0..1 boolean "Dipyrone" "Record of dipyrone (metamizole) use for management of fever or pain"
  * ^code[+] = $DENConcepts#DEN.C10.DE13 "Dipyrone"
  * ^code[+] = $SCT#22165008 "Metamizole sodium (substance)"

