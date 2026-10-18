Alias: $BRCoreObservation = https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-observation
Alias: $BRCoreVitalSigns = https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-vitalsigns
Alias: $DEN = https://smart.who.int/den/CodeSystem/den-custom-codes
Alias: $LOINC = http://loinc.org
Alias: $UCUM = http://unitsofmeasure.org
Alias: $DenObservationCodes = https://smart.who.int/den/ValueSet/den-observation-codes
Alias: $DenB3De8Answers = https://smart.who.int/den/ValueSet/den-b3-de8-choice-grouper
Alias: $DenB5De1Answers = https://smart.who.int/den/ValueSet/den-b5-de1-choice-grouper
Alias: $DenB6De1Answers = https://smart.who.int/den/ValueSet/den-b6-de1-choice-grouper
Alias: $DenB7De1Answers = https://smart.who.int/den/ValueSet/den-b7-de1-choice-grouper
Alias: $DenB8De1Answers = https://smart.who.int/den/ValueSet/den-b8-de1-choice-grouper
Alias: $DenB9De3Answers = https://smart.who.int/den/ValueSet/den-b9-de3-choice-grouper
Alias: $DenB10De1Answers = https://smart.who.int/den/ValueSet/den-b10-de1-choice-grouper
Alias: $DenB11De1Answers = https://smart.who.int/den/ValueSet/den-b11-de1-choice-grouper

Invariant: den-systolic-bp-range
Description: "Systolic blood pressure is between 60 and 260 mmHg."
Severity: #error
Expression: "$this >= 60 and $this <= 260"

Invariant: den-diastolic-bp-range
Description: "Diastolic blood pressure is between 60 and 260 mmHg."
Severity: #error
Expression: "$this >= 60 and $this <= 260"

Invariant: den-body-temperature-range
Description: "Body temperature is between 35 and 42 degrees Celsius."
Severity: #error
Expression: "$this >= 35 and $this <= 42"

Invariant: den-pulse-rate-range
Description: "Pulse rate is between 50 and 200 beats per minute."
Severity: #error
Expression: "$this >= 50 and $this <= 200"

Profile: DenVitalSigns
Parent: $BRCoreVitalSigns
Id: den-vitalsigns
Title: "DEN Vital Signs"
Description: "Vital-sign observations collected by the DEN.B questionnaire, based on BR-Core Vital Signs and its required terminology."

Profile: DenObservation
Parent: $BRCoreObservation
Id: den-observation
Title: "DEN Observation"
Description: "A DEN questionnaire observation derived from the Brazilian Core Observation profile."
* subject 1..1
* code from $DenObservationCodes (required)

Profile: DenB3De1SystolicBloodPressure
Parent: DenVitalSigns
Id: den-b3-de1-systolic-blood-pressure
Title: "DEN.B3.DE1 Systolic Blood Pressure"
* code = $LOINC#8480-6
* value[x] only Quantity
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm[Hg]
* valueQuantity.unit = "mmHg"
* valueQuantity.value obeys den-systolic-bp-range

Profile: DenB3De2DiastolicBloodPressure
Parent: DenVitalSigns
Id: den-b3-de2-diastolic-blood-pressure
Title: "DEN.B3.DE2 Diastolic Blood Pressure"
* code = $LOINC#8462-4
* value[x] only Quantity
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm[Hg]
* valueQuantity.unit = "mmHg"
* valueQuantity.value obeys den-diastolic-bp-range

Profile: DenB3De3BloodPressureUnavailable
Parent: DenObservation
Id: den-b3-de3-bp-unavailable
Title: "DEN.B3.DE3 Blood Pressure Unavailable"
Description: "Records whether blood pressure could not be taken."
* code = $DEN#den-b3-de3-bp-unavailable
* value[x] only boolean

Profile: DenB3De3BodyTemperature
Parent: DenVitalSigns
Id: den-b3-de3-body-temperature
Title: "DEN.B3.DE3 Body Temperature"
* code = $LOINC#8310-5
* value[x] only Quantity
* valueQuantity.system = $UCUM
* valueQuantity.code = #Cel
* valueQuantity.unit = "°C"
* valueQuantity.value obeys den-body-temperature-range

Profile: DenB3De4FeverOnset
Parent: DenObservation
Id: den-b3-de4-fever-onset
Title: "DEN.B3.DE4 Fever Onset"
Description: "Records the number of days the patient has experienced fever."
* code = $DEN#den-b3-de4-fever-onset
* value[x] only Quantity
* valueQuantity.system = $UCUM
* valueQuantity.code = #d
* valueQuantity.unit = "days"

Profile: DenB3De5PulseRate
Parent: DenVitalSigns
Id: den-b3-de5-pulse-rate
Title: "DEN.B3.DE5 Pulse Rate"
Description: "Records pulse rate using the BR-Core heart rate LOINC code."
* code = $LOINC#8867-4
* value[x] only Quantity
* valueQuantity.system = $UCUM
* valueQuantity.code = #/min
* valueQuantity.unit = "beats/min"
* valueQuantity.value obeys den-pulse-rate-range

Profile: DenB3De6PallorPresent
Parent: DenObservation
Id: den-b3-de6-pallor-present
Title: "DEN.B3.DE6 Pallor Present"
Description: "Records whether pallor is present."
* code = $DEN#den-b3-de6-pallor-present
* value[x] only boolean

Profile: DenB3De8RespiratoryExamResult
Parent: DenObservation
Id: den-b3-de8-respiratory-exam-result
Title: "DEN.B3.DE8 Respiratory Exam Result"
Description: "Records the respiratory examination result as a coded concept."
* code = $DEN#den-b3-de8-respiratory-exam-result
* value[x] only CodeableConcept
* valueCodeableConcept from $DenB3De8Answers (required)

Profile: DenB4De1Height
Parent: DenVitalSigns
Id: den-b4-de1-height
Title: "DEN.B4.DE1 Height"
* code = $LOINC#8302-2
* value[x] only Quantity
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"

Profile: DenB4De2Weight
Parent: DenVitalSigns
Id: den-b4-de2-weight
Title: "DEN.B4.DE2 Weight"
* code = $LOINC#29463-7
* value[x] only Quantity
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg
* valueQuantity.unit = "kg"

Profile: DenB4De3BMI
Parent: DenVitalSigns
Id: den-b4-de3-bmi
Title: "DEN.B4.DE3 Body Mass Index"
* code = $LOINC#39156-5
* value[x] only Quantity
* valueQuantity.system = $UCUM
* valueQuantity.code = #kg/m2
* valueQuantity.unit = "kg/m²"

Profile: DenB5De1PhysiologicalSymptoms
Parent: DenObservation
Id: den-b5-de1-physiological-symptoms
Title: "DEN.B5.DE1 Current Physiological Symptoms"
Description: "Records current physiological symptoms as coded concepts."
* code = $DEN#den-b5-de1-physiological-symptoms
* value[x] only CodeableConcept
* valueCodeableConcept from $DenB5De1Answers (required)

Profile: DenB6De1Consciousness
Parent: DenObservation
Id: den-b6-de1-consciousness
Title: "DEN.B6.DE1 Evaluate Consciousness"
Description: "Records the consciousness assessment as coded concepts."
* code = $DEN#den-b6-de1-consciousness
* value[x] only CodeableConcept
* valueCodeableConcept from $DenB6De1Answers (required)

Profile: DenB7De1Diuresis
Parent: DenObservation
Id: den-b7-de1-diuresis
Title: "DEN.B7.DE1 Check Diuresis"
Description: "Records the diuresis assessment as a coded concept."
* code = $DEN#den-b7-de1-diuresis
* value[x] only CodeableConcept
* valueCodeableConcept from $DenB7De1Answers (required)

Profile: DenB8De1PreexistingConditions
Parent: DenObservation
Id: den-b8-de1-preexisting-conditions
Title: "DEN.B8.DE1 Pre-existing Conditions"
Description: "Records pre-existing conditions as coded concepts."
* code = $DEN#den-b8-de1-preexisting-conditions
* value[x] only CodeableConcept
* valueCodeableConcept from $DenB8De1Answers (required)

Profile: DenB9De1EndemicAreaTravel
Parent: DenObservation
Id: den-b9-de1-endemic-area-travel
Title: "DEN.B9.DE1 Recent Travel to Endemic Area"
Description: "Records whether the client recently travelled to an endemic area."
* code = $DEN#den-b9-de1-endemic-area-travel
* value[x] only boolean

Profile: DenB9De2SimilarSymptomsContact
Parent: DenObservation
Id: den-b9-de2-similar-symptoms-contact
Title: "DEN.B9.DE2 Household or Community Member with Similar Symptoms"
Description: "Records whether a household or community member has similar symptoms."
* code = $DEN#den-b9-de2-similar-symptoms-contact
* value[x] only boolean

Profile: DenB9De3NoExposureHistory
Parent: DenObservation
Id: den-b9-de3-no-exposure-history
Title: "DEN.B9.DE3 No History of Exposure"
Description: "Records the data dictionary's exclusive no-exposure choice."
* code = $DEN#den-b9-de3-no-exposure-history
* value[x] only CodeableConcept
* valueCodeableConcept from $DenB9De3Answers (required)

Profile: DenB10De1TourniquetTest
Parent: DenObservation
Id: den-b10-de1-tourniquet-test
Title: "DEN.B10.DE1 Tourniquet Test"
Description: "Records the tourniquet test result as a coded concept."
* code = $DEN#den-b10-de1-tourniquet-test
* value[x] only CodeableConcept
* valueCodeableConcept from $DenB10De1Answers (required)

Profile: DenB11De1WarningSign
Parent: DenObservation
Id: den-b11-de1-warning-sign
Title: "DEN.B11.DE1 Warning Sign"
Description: "Records warning signs as coded concepts."
* code = $DEN#den-b11-de1-warning-sign
* value[x] only CodeableConcept
* valueCodeableConcept from $DenB11De1Answers (required)
