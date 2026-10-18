Profile: DENC11HematocritEvaluationObservation
Parent: $BRCoreObservation
Id: den-c11-hematocrit-evaluation-observation
Title: "DEN.C11 Hematocrit Evaluation Observation"
Description: "BR-Core Observation for a selected DEN.C11 hematocrit evaluation status. The code identifies the ordinal evaluation question and the coded value records its selected status. The source supplies no measurement time, numeric hematocrit value, unit, reference range, or comparison rule; these are not constrained here. Observation status and Patient context are supplied by the implementing workflow."

* subject 1..1
* subject only Reference($BRCorePatient)
* code 1..1
* code from $DENC11HematocritEvaluationCodes (required)
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $DENC11HematocritEvaluationResults (required)
