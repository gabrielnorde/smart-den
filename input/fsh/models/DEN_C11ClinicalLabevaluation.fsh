Logical: DENC11ClinicalLabEvaluation
Id: DEN.C11
Title: "DEN.C11 Clinical/Lab evaluation"
Description: "Data elements for the DEN.C11 Clinical/Lab evaluation Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_C11_Clinical_Lab_evaluation"
* ^version = "0.1.0"

* hematocritEvaluationFirst 0..1 code "Hematocrit evaluation - first" "First hematocrit evaluation against reference range"
  * ^code[+] = $DENConcepts#DEN.C11.DE1 "Hematocrit evaluation - first"
* hematocritEvaluationFirst from DENC11DE1 (required)
  * ^comment = "Select one. Options: Below reference (DEN.C11.DE2), Above reference (DEN.C11.DE3), Normal (DEN.C11.DE4)."

* hematocritEvaluationSecond 0..1 code "Hematocrit evaluation - second" "Second hematocrit evaluation trend"
  * ^code[+] = $DENConcepts#DEN.C11.DE5 "Hematocrit evaluation - second"
* hematocritEvaluationSecond from DENC11DE5 (required)
  * ^comment = "Select one. Options: Rising (DEN.C11.DE6), Falling (DEN.C11.DE7), Normal/stable (DEN.C11.DE8)."

* hematocritEvaluationThird 0..1 code "Hematocrit evaluation - third" "Third hematocrit evaluation trend"
  * ^code[+] = $DENConcepts#DEN.C11.DE9 "Hematocrit evaluation - third"
* hematocritEvaluationThird from DENC11DE9 (required)
  * ^comment = "Select one. Options: Rising (DEN.C11.DE10), Falling (DEN.C11.DE11), Normal/stable (DEN.C11.DE12)."

* hematocritEvaluationFourth 0..1 code "Hematocrit evaluation - fourth" "Fourth hematocrit evaluation trend"
  * ^code[+] = $DENConcepts#DEN.C11.DE13 "Hematocrit evaluation - fourth"
* hematocritEvaluationFourth from DENC11DE13 (required)
  * ^comment = "Select one. Options: Rising (DEN.C11.DE14), Falling (DEN.C11.DE15), Normal/stable (DEN.C11.DE16)."

* hematocritEvaluationFifth 0..1 code "Hematocrit evaluation - fifth" "Fifth hematocrit evaluation trend"
  * ^code[+] = $DENConcepts#DEN.C11.DE17 "Hematocrit evaluation - fifth"
* hematocritEvaluationFifth from DENC11DE17 (required)
  * ^comment = "Select one. Options: Rising (DEN.C11.DE18), Falling (DEN.C11.DE19), Normal/stable (DEN.C11.DE20)."

* hematocritEvaluationSixth 0..1 code "Hematocrit evaluation - sixth" "Sixth hematocrit evaluation trend"
  * ^code[+] = $DENConcepts#DEN.C11.DE21 "Hematocrit evaluation - sixth"
* hematocritEvaluationSixth from DENC11DE21 (required)
  * ^comment = "Select one. Options: Rising (DEN.C11.DE22), Falling (DEN.C11.DE23), Normal/stable (DEN.C11.DE24)."

