Profile: DENC10HydrationVolumeObservation
Parent: $BRCoreObservation
Id: den-c10-hydration-volume-observation
Title: "DEN.C10 Hydration Volume Observation"
Description: "BR-Core Observation for DEN.C10 hydration quantity answers. The worksheet marks these values as required and read-only and refers their calculation to DEN.DT.03, which is not present in the supplied workbook. No unit or range is specified."

* subject 1..1
* subject only Reference($BRCorePatient)
* code 1..1
* code from $DENC10HydrationVolumeCodes (required)
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.value 1..1

Profile: DENC10HydrationPhaseObservation
Parent: $BRCoreObservation
Id: den-c10-hydration-phase-observation
Title: "DEN.C10 Hydration Phase Observation"
Description: "BR-Core Observation for each selected DEN.C10 hydration phase. Creating an Observation from a QuestionnaireResponse choice is an implementation decision; it does not assert a specific fluid administration."

* subject 1..1
* subject only Reference($BRCorePatient)
* code = $DENCustomCodes#den-c10-de6-hydration-phase "Hydration Phase"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from $DENC10HydrationPhaseCodes (required)

Profile: DENC10MedicationUseObservation
Parent: $BRCoreObservation
Id: den-c10-medication-use-observation
Title: "DEN.C10 Medication Use Observation"
Description: "BR-Core Observation for the DEN.C10 Boolean medication-use answers. This is a derived representation of the questionnaire answer; it does not assert medication dose, administration time, or a MedicationStatement status."

* subject 1..1
* subject only Reference($BRCorePatient)
* code 1..1
* code from $DENC10MedicationUseCodes (required)
* value[x] only boolean
* valueBoolean 1..1
