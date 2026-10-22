Logical: DENBScreening
Id: DEN.B
Title: "DEN.B Screening"
Description: "Data elements for the DEN.B Screening Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_B_Screening"
* ^version = "0.1.0"

// DEN.B1. Enter the triage room - No data is recorded during this activity
// DEN.B2. Open Client Record - No data is recorded during this activity

// DEN.B3. Assess vital signs
* systolicBloodPressure 0..1 Quantity "Systolic blood pressure" "Systolic blood pressure (SBP) in mmHg"
  * ^code[+] = $DENConcepts#DEN.B3.DE1 "Systolic blood pressure"
  * ^code[+] = $LNC#8480-6 "Systolic blood pressure"
  * ^code[+] = $SCT#271649006 "Systolic blood pressure (observable entity)"
  * ^comment = "Quantity sub-type: Integer quantity. Validation: 60 mmHg <= Systolic blood pressure <= 260 mmHg. Required: C. Editable: Yes."

* diastolicBloodPressure 0..1 Quantity "Diastolic blood pressure" "Diastolic blood pressure (DBP) in mmHg"
  * ^code[+] = $DENConcepts#DEN.B3.DE2 "Diastolic blood pressure"
  * ^code[+] = $LNC#8462-4 "Diastolic blood pressure"
  * ^code[+] = $SCT#271650006 "Diastolic blood pressure (observable entity)"
  * ^comment = "Quantity sub-type: Integer quantity. Validation: 60 mmHg <= Diastolic blood pressure <= 260 mmHg. Required: C. Editable: Yes."

* bloodPressureCannotBeTaken 0..1 boolean "Blood pressure cannot be taken" "If the client's blood pressure cannot be taken, this should be indicated here; otherwise, blood pressure should be measured"
  * ^code[+] = $DENConcepts#DEN.B3.DE3 "Blood pressure cannot be taken"
  * ^comment = "Skip logic: Required if Systolic blood pressure AND Diastolic blood pressure IS EMPTY. Required: C. Editable: Yes."

* bodyTemperature 1..1 Quantity "Body temperature" "The client's body temperature in degrees Celsius (°C) (first reading)"
  * ^code[+] = $DENConcepts#DEN.B3.DE3-temp "Body temperature"
  * ^code[+] = $LNC#8310-5 "Body temperature"
  * ^code[+] = $SCT#386725007 "Body temperature (observable entity)"
  * ^comment = "Quantity sub-type: Decimal quantity. Validation: 35°C <= Body temperature <= 42°C. Required: R."

* feverOnset 1..1 Quantity "Fever onset" "How many days the patient experience fever"
  * ^code[+] = $DENConcepts#DEN.B3.DE4 "Fever onset"
  * ^code[+] = $SCT#386661006 "Fever (finding)"
  * ^comment = "Quantity sub-type: Integer quantity. Required: R."

* pulseRate 0..1 Quantity "Pulse rate" "The client's pulse rate in beats per minute (bpm)"
  * ^code[+] = $DENConcepts#DEN.B3.DE5 "Pulse rate"
  * ^code[+] = $LNC#8884-9 "Heart rate rhythm"
  * ^code[+] = $SCT#301147003 "Pulse rate finding (finding)"
  * ^comment = "Quantity sub-type: Integer quantity. Validation: 50 bpm <= Pulse rate <= 200 bpm. Required: O."

* pallorPresent 0..1 boolean "Pallor present" "Whether or not the client has pallor"
  * ^code[+] = $DENConcepts#DEN.B3.DE6 "Pallor present"
  * ^code[+] = $ICD11#ME64.2 "Pallor"
  * ^code[+] = $ICD10#R23.1 "Pallor"
  * ^code[+] = $SCT#267029006 "Pale – symptom (finding)"
  * ^comment = "Required: O."

* respiratoryExamResult 0..1 code "Respiratory exam result" "The client's respiratory condition based on respiratory exam"
  * ^code[+] = $DENConcepts#DEN.B3.DE8 "Respiratory exam result"
* respiratoryExamResult from DENB3DE8 (required)
  * ^comment = "Select one. Options: Respiratory exam not done (DEN.B3.DE9), Normal (DEN.B3.DE10), Dyspnoea (DEN.B3.DE11), Cough (DEN.B3.DE12), Rapid breathing (DEN.B3.DE13), Slow breathing (DEN.B3.DE14), Wheezing (DEN.B3.DE15), Rales (DEN.B3.DE16), Kussmaul's respiration (DEN.B3.DE17). Required: O."

// DEN.B4. Record height and weight
* currentHeight 1..1 Quantity "Current height" "The client's current height in centimetres"
  * ^code[+] = $DENConcepts#DEN.B4.DE1 "Current height"
  * ^code[+] = $LNC#8302-2 "Body height"
  * ^code[+] = $SCT#50373000 "Body height measure (observable entity)"
  * ^comment = "Quantity sub-type: Integer quantity. Validation: Height <= 200 cm. Required: R. Editable: Yes."

* currentWeight 1..1 Quantity "Current weight" "The client's current weight in kilograms"
  * ^code[+] = $DENConcepts#DEN.B4.DE2 "Current weight"
  * ^code[+] = $LNC#29463-7 "Body weight"
  * ^code[+] = $SCT#27113001 "Body weight (observable entity)"
  * ^comment = "Quantity sub-type: Integer quantity. Validation: Body weight <= 200 kg. Required: R. Editable: Yes."

* bmi 1..1 Quantity "BMI" "Body mass index (BMI): calculated by taking weight in kg divided by the squared height in meters, i.e. kg/(m^2)"
  * ^code[+] = $DENConcepts#DEN.B4.DE3 "BMI"
  * ^code[+] = $LNC#39156-5 "Body mass index (BMI) [Ratio]"
  * ^code[+] = $SCT#60621009 "Body mass index (observable entity)"
  * ^comment = "Quantity sub-type: Decimal quantity. Calculation: kg/(m^2). Required: R. Editable: No."

// DEN.B5. Check symptoms
* currentPhysiologicalSymptoms 1..* code "Current physiological symptoms" "The physiological symptoms that the client is experiencing right now"
  * ^code[+] = $DENConcepts#DEN.B5.DE1 "Current physiological symptoms"
* currentPhysiologicalSymptoms from DENB5DE1 (required)
  * ^comment = "Select all that apply. Options include None (DEN.B5.DE2), Headache (DEN.B5.DE3), Severe headache (DEN.B5.DE4), Vomiting (DEN.B5.DE5), Nausea (DEN.B5.DE6), Diarrhea (DEN.B5.DE7), Skin rash (DEN.B5.DE8). Required: R."

* otherCurrentPhysiologicalSymptomsSpecify 0..1 string "Other current physiological symptoms (specify)" "Client is experiencing other physiological symptoms not described above"
  * ^code[+] = $DENConcepts#DEN.B5.DE9 "Other current physiological symptoms (specify)"
  * ^comment = "Free text field. Required: O."

// DEN.B6. Evaluate consciousness
* evaluateConsciousness 1..* code "Evaluate consciousness" "The symptoms that the client is experiencing right now regarding consciousness"
  * ^code[+] = $DENConcepts#DEN.B6.DE1 "Evaluate consciousness"
* evaluateConsciousness from DENB6DE1 (required)
  * ^comment = "Select all that apply. Options include None (DEN.B6.DE2), Dizziness (DEN.B6.DE3), Irritability (DEN.B6.DE4), Drowsiness (DEN.B6.DE5), Lethargy (DEN.B6.DE6), Fainting (DEN.B6.DE7), Convulsion (DEN.B6.DE8), Vertigo (DEN.B6.DE9). Required: R."

// DEN.B7. Check diuresis
* checkDiuresis 1..1 code "Check diuresis" "Client’s urine output status"
  * ^code[+] = $DENConcepts#DEN.B7.DE1 "Check diuresis"
* checkDiuresis from DENB7DE1 (required)
  * ^comment = "Select one. Options: Normal (DEN.B7.DE2), Oliguria (DEN.B7.DE3), Anuria (DEN.B7.DE4), Polyuria (DEN.B7.DE5), Unknown / Not assessed (DEN.B7.DE6). Required: R."

// DEN.B8. Investigate pre-existing conditions
* investigatePreExistingConditions 1..* code "Investigate pre-existing conditions" "Investigate about pre-existing conditions that may complicate dengue management"
  * ^code[+] = $DENConcepts#DEN.B8.DE1 "Investigate pre-existing conditions"
* investigatePreExistingConditions from DENB8DE1 (required)
  * ^comment = "Select all that apply. Options: No chronic conditions (DEN.B8.DE2), Does not know (DEN.B8.DE3), Infants <24m (DEN.B8.DE4), Adults >65y (DEN.B8.DE5), Obesity (DEN.B8.DE6), Pregnant (DEN.B8.DE7), Asthma (DEN.B8.DE8), Other respiratory (DEN.B8.DE9), Diabetes T1 (DEN.B8.DE10), Diabetes T2 (DEN.B8.DE11), Hypertension (DEN.B8.DE12), CVD (DEN.B8.DE13), Previous dengue (DEN.B8.DE14). Required: R."

* socialCircumstances 0..1 boolean "Social circumstances" "Relevant social circumstances that may affect care, including living alone or having limited access to a health facility"
  * ^code[+] = $DENConcepts#DEN.B8.DE15 "Social circumstances"
  * ^code[+] = $SCT#82996008 "Social status (social concept)"
  * ^comment = "Required: O."

// DEN.B9. Assess exposure
* recentTravelToEndemicArea 0..1 boolean "Recent travel to endemic area" "Client has recently traveled to a dengue-endemic area"
  * ^code[+] = $DENConcepts#DEN.B9.DE1 "Recent travel to endemic area"
  * ^code[+] = $SCT#443846001 "Detail of history of travel (observable entity)"
  * ^comment = "Required: O."

* householdOrCommunityMemberWithSimilarSymptoms 0..1 boolean "Household or community member with similar symptoms" "Client reports someone nearby with similar symptoms"
  * ^code[+] = $DENConcepts#DEN.B9.DE2 "Household or community member with similar symptoms"
  * ^comment = "Required: O."

* exposureNone 0..1 boolean "None exposure" "Client has no history of exposure"
  * ^code[+] = $DENConcepts#DEN.B9.DE3 "None exposure"
  * ^code[+] = $SCT#14732006 "No history of (contextual qualifier) (qualifier value)"
  * ^comment = "Validation: Cannot select with any other option. Required: O."

// DEN.B10. Perform tourniquet test
* performTourniquetTest 1..1 code "Perform tourniquet test" "Apply the tourniquet test as described in the clinical protocol to assess capillary fragility"
  * ^code[+] = $DENConcepts#DEN.B10.DE1 "Perform tourniquet test"
  * ^code[+] = $SCT#42106004 "Capillary fragility test (procedure)"
* performTourniquetTest from DENB10DE1 (required)
  * ^comment = "Select one. Options: Negative (DEN.B10.DE2), Positive (DEN.B10.DE3), Not done (DEN.B10.DE4). Required: R."

// DEN.B11. Warning sign
* warningSign 1..* code "Warning sign" "Check if patient presents any Warning sign"
  * ^code[+] = $DENConcepts#DEN.B11.DE1 "Warning sign"
* warningSign from DENB11DE1 (required)
  * ^comment = "Select all that apply. Options include Abdominal pain (DEN.B11.DE2), Persistent vomiting (DEN.B11.DE3), Fluid accumulation (DEN.B11.DE4), Mucosal bleeding (DEN.B11.DE5), Lethargy (DEN.B11.DE6), Irritability (DEN.B11.DE7), Postural hypotension (DEN.B11.DE8), Syncope (DEN.B11.DE9), Hepatomegaly (DEN.B11.DE10), Looks very ill (DEN.B11.DE11), Unconscious (DEN.B11.DE12), No warn sign (DEN.B11.DE13). Required: R."

