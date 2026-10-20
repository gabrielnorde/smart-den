// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C11 ClinicalLab evaluation"

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENC11ClinicalLabEvaluation
Id: DEN-C11-ClinicalLab-evaluation
Title: "DEN.C11 ClinicalLab evaluation"
Description: "Data elements for the DEN.C11 ClinicalLab evaluation Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C11 ClinicalLab evaluation data dictionary."
* hematocritEvaluationFirst 0..1 code "Hematocrit evaluation - first"
  * ^code[+] = $DENConcepts#DEN.C11.DE1
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C11.DE2 ('Hematocrit below reference range'; Required=O); DEN.C11.DE3 ('Hematocrit above reference range'; Required=O); DEN.C11.DE4 ('Normal hematocrit'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* hematocritEvaluationSecond 0..1 code "Hematocrit evaluation - second"
  * ^code[+] = $DENConcepts#DEN.C11.DE5
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C11.DE6 ('Rising hematocrit'; Required=O); DEN.C11.DE7 ('Falling hematocrit'; Required=O); DEN.C11.DE8 ('Normal/stable hematocrit'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* hematocritEvaluationThird 0..1 code "Hematocrit evaluation - third"
  * ^code[+] = $DENConcepts#DEN.C11.DE9
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C11.DE10 ('Rising hematocrit'; Required=O); DEN.C11.DE11 ('Falling hematocrit'; Required=O); DEN.C11.DE12 ('Normal/stable hematocrit'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* hematocritEvaluationFourth 0..1 code "Hematocrit evaluation - fourth"
  * ^code[+] = $DENConcepts#DEN.C11.DE13
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C11.DE14 ('Rising hematocrit'; Required=O); DEN.C11.DE15 ('Falling hematocrit'; Required=O); DEN.C11.DE16 ('Normal/stable hematocrit'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* hematocritEvaluationFifth 0..1 code "Hematocrit evaluation - fifth"
  * ^code[+] = $DENConcepts#DEN.C11.DE17
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C11.DE18 ('Rising hematocrit'; Required=O); DEN.C11.DE19 ('Falling hematocrit'; Required=O); DEN.C11.DE20 ('Normal/stable hematocrit'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* hematocritEvaluationSixth 0..1 code "Hematocrit evaluation - sixth"
  * ^code[+] = $DENConcepts#DEN.C11.DE21
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C11.DE22 ('Rising hematocrit'; Required=O); DEN.C11.DE23 ('Falling hematocrit'; Required=O); DEN.C11.DE24 ('Normal/stable hematocrit'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
