Profile: DENC46DiagnosticCondition
Parent: $BRCoreCondition
Id: den-c4-6-diagnostic-condition
Title: "DEN.C4-6 Diagnostic Condition"
Description: "BR-Core Condition profile for the suspected or confirmed dengue concepts and the selected DEN.C6 dengue classification. Boolean questionnaire answers remain in QuestionnaireResponse; this profile does not infer a Condition verificationStatus from them."

* subject only Reference($BRCorePatient)
* code 1..1
* code from $DENC46DiagnosticConditions (required)
