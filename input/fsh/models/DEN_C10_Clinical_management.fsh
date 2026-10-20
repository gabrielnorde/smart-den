// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C10 Clinical management"

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENC10ClinicalManagement
Id: DEN-C10-Clinical-management
Title: "DEN.C10 Clinical management"
Description: "Data elements for the DEN.C10 Clinical management Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C10 Clinical management data dictionary."
* defineVolumeHydration 1..1 Quantity "Define Volume hydration"
  "Hydration: Daily fluid requirement based on patient’s body weight"
  * ^code[+] = $DENConcepts#DEN.C10.DE1
  * ^comment = "Quantity sub-type: Decimal quantity. | Calculation: see on DEN.DT.03 Define hydration."
* homemadeFluids 1..1 Quantity "Homemade Fluids"
  "Fluids commonly prepared at home, such as water, fruit juices, soups, teas, coconut water or other readily available household beverages"
  * ^code[+] = $DENConcepts#DEN.C10.DE2
  * ^comment = "Quantity sub-type: Decimal quantity. | Calculation: see on DEN.DT.03 Define hydration."
* oralRehydrationSolutionORS 1..1 Quantity "Oral rehydration solution (ORS)"
  "Mixture of glucose and electrolytes dissolved in water used to treat dehydration"
  * ^code[+] = $DENConcepts#DEN.C10.DE3
  * ^comment = "Quantity sub-type: Decimal quantity. | Calculation: see on DEN.DT.03 Define hydration."
* isotonicSolutions 1..1 Quantity "Isotonic solutions"
  "Solutions that match the body's natural fluid concentration, making them safe for IV administration without damaging cells"
  * ^code[+] = $DENConcepts#DEN.C10.DE4
  * ^comment = "Quantity sub-type: Decimal quantity. | Calculation: see on DEN.DT.03 Define hydration."
* plasmaExpanders 1..1 Quantity "Plasma expanders"
  "Plasma expanders (albumin 0.5–1 g/kg): prepare a 5% albumin solution (for every 100 mL of this solution, use 25 mL of 20% albumin and 75 mL of 0.9% saline); if unavailable, use synthetic colloids."
  * ^code[+] = $DENConcepts#DEN.C10.DE5
  * ^comment = "Quantity sub-type: Decimal quantity. | Calculation: see on DEN.DT.03 Define hydration."
* hydrationPhase 0..1 code "Hydration Phase"
  * ^code[+] = $DENConcepts#DEN.C10.DE6
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C10.DE7 ('Expansion phase 1'; Required=not specified); DEN.C10.DE8 ('Expansion phase 2'; Required=not specified); DEN.C10.DE9 ('Expansion phase 3'; Required=not specified); DEN.C10.DE10 ('Maintenance phase 1'; Required=not specified); DEN.C10.DE11 ('Maintenance phase 2'; Required=not specified). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* paracetamol 0..1 boolean "Paracetamol"
  "Record of paracetamol (acetaminophen) use for management of fever or pain in a patient with suspected or confirmed dengue."
  * ^code[+] = $DENConcepts#DEN.C10.DE12
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1."
* dipyrone 0..1 boolean "Dipyrone"
  "Record of dipyrone (metamizole) use for management of fever or pain in a patient with suspected or confirmed dengue."
  * ^code[+] = $DENConcepts#DEN.C10.DE13
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1."
