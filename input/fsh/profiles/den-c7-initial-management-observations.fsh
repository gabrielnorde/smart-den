Profile: DENC7HydrationObservation
Parent: $BRCoreObservation
Id: den-c7-hydration-observation
Title: "DEN.C7 Hydration Selection Observation"
Description: "BR-Core Observation for the DEN.C7.1 response about hydration initiation. It may be derived from the raw QuestionnaireResponse answer as an implementation choice and does not assert that a procedure was completed."

* subject 1..1
* subject only Reference($BRCorePatient)
* code = $DENCustomCodes#starts-hydration "Starts hydration"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $DENC7HydrationChoices (required)

Profile: DENC7ManagementObservation
Parent: $BRCoreObservation
Id: den-c7-management-observation
Title: "DEN.C7 Management Selection Observation"
Description: "BR-Core Observation for the DEN.C7.2 selected management category. It may be derived from the raw QuestionnaireResponse answer as an implementation choice and does not assert that an Encounter or admission has occurred."

* subject 1..1
* subject only Reference($BRCorePatient)
* code = $DENCustomCodes#define-management "Define management"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $DENC7ManagementChoices (required)
