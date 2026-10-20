// -----------------------------------------------------------------------------
// Source worksheet: "DEN.B Screening"
// Source data-quality issue: option(s) without a preceding Coding field: DEN.B9.DE3 ('None').
// These option concepts are not represented as standalone properties; identify the parent Coding element before binding terminology.

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes


Logical: DENBScreening
Id: DEN-B-Screening
Title: "DEN.B Screening"
Description: "Data elements for the DEN.B Screening Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.B Screening data dictionary."
* systolicBloodPressure 0..1 Quantity "Systolic blood pressure"
  "Systolic blood pressure (SBP) in mmHg"
  * ^code[+] = $DENConcepts#DEN.B3.DE1
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Integer quantity. | Validation: 60 mmHg ≤ \"Systolic blood pressure\" ≤ 260 mmHg. | Source note: Blood pressure category Ask during every contact."
* diastolicBloodPressure 0..1 Quantity "Diastolic blood pressure"
  "Diastolic blood pressure (DBP) in mmHg"
  * ^code[+] = $DENConcepts#DEN.B3.DE2
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Integer quantity. | Validation: 60 mmHg ≤ \"Diastolic blood pressure\" ≤ 260 mmHg. | Source note: Blood pressure category Ask during every contact."
* bloodPressureCannotBeTaken 0..1 boolean "Blood pressure cannot be taken"
  "If the client's blood pressure cannot be taken, this should be indicated here; otherwise, blood pressure should be measured"
  * ^code[+] = $DENConcepts#DEN.B3.DE3
  * ^comment = "Source data-quality issue: identifier DEN.B3.DE3 appears more than once in this worksheet. Verify the identifier before publication; it has not been silently renumbered. | Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Skip logic: Required if \"Systolic blood pressure\" AND \"Diastolic blood pressure\" IS EMPTY. | Source note: Blood pressure category Ask during every contact."
* bodyTemperature 1..1 Quantity "Body temperature"
  "The client's body temperature in degrees Celsius (°C) (first reading)"
  * ^code[+] = $DENConcepts#DEN.B3.DE3
  * ^comment = "Source data-quality issue: identifier DEN.B3.DE3 appears more than once in this worksheet. Verify the identifier before publication; it has not been silently renumbered. | Quantity sub-type: Decimal quantity. | Validation: 35°C ≤ \"Body temperature\" ≤ 42°C."
* feverOnset 1..1 Quantity "Fever onset"
  "How many days the patient experience fever"
  * ^code[+] = $DENConcepts#DEN.B3.DE4
  * ^comment = "Quantity sub-type: Integer quantity."
* pulseRate 0..1 Quantity "Pulse rate"
  "The client's pulse rate in beats per minute (bpm)"
  * ^code[+] = $DENConcepts#DEN.B3.DE5
  * ^comment = "Quantity sub-type: Integer quantity. | Validation: 50 bpm ≤ \"Pulse rate\" ≤ 200 bpm."
* pallorPresent 0..1 boolean "Pallor present"
  "Whether or not the client has pallor"
  * ^code[+] = $DENConcepts#DEN.B3.DE6
* respiratoryExamResult 0..1 code "Respiratory exam result"
  "The client's respiratory condition based on respiratory exam"
  * ^code[+] = $DENConcepts#DEN.B3.DE8
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.B3.DE9 ('Respiratory exam not done'; Required=O); DEN.B3.DE10 ('Normal respiratory exam result'; Required=O); DEN.B3.DE11 ('Dyspnoea'; Required=O); DEN.B3.DE12 ('Cough'; Required=O); DEN.B3.DE13 ('Rapid breathing'; Required=O); DEN.B3.DE14 ('Slow breathing'; Required=O); DEN.B3.DE15 ('Wheezing'; Required=O); DEN.B3.DE16 ('Rales'; Required=O); DEN.B3.DE17 ('Kussmaul's respiration'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* currentHeight 1..1 Quantity "Current height"
  "The client's current height in centimetres"
  * ^code[+] = $DENConcepts#DEN.B4.DE1
  * ^comment = "Quantity sub-type: Integer quantity. | Validation: \"Height\" ≤ 200 cm."
* currentWeight 1..1 Quantity "Current weight"
  "The client's current weight in kilograms"
  * ^code[+] = $DENConcepts#DEN.B4.DE2
  * ^comment = "Quantity sub-type: Integer quantity. | Validation: \"Body weight\" ≤ 200 kg."
* bmi 1..1 Quantity "BMI"
  "Body mass index (BMI): calculated by taking weight in kg divided by the squared height in meters, i.e. kg/(m^2)"
  * ^code[+] = $DENConcepts#DEN.B4.DE3
  * ^comment = "Quantity sub-type: Decimal quantity. | Calculation: IF (\"BMI\" > 30) THEN \"Weight category\" = \"Obese\"."
* currentPhysiologicalSymptoms 1..1 code "Current physiological symptoms"
  "The physiological symptoms that the client is experiencing right now: select \"None\" if she/he is experiencing none of these symptoms"
  * ^code[+] = $DENConcepts#DEN.B5.DE1
  * ^comment = "Source note: Physiological symptoms category Ask during every contact. | Input-option concepts from the source dictionary (not separate logical properties): DEN.B5.DE2 ('None'; Required=O); DEN.B5.DE3 ('Headache'; Required=O); DEN.B5.DE4 ('Severe headache'; Required=O); DEN.B5.DE5 ('Vomiting'; Required=O); DEN.B5.DE6 ('Nausea'; Required=O); DEN.B5.DE7 ('Diarrhea'; Required=O); DEN.B5.DE8 ('Skin rash (maculopapular rash)'; Required=O); DEN.B5.DE9 ('Other current physiological symptoms (specify)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* evaluateConsciousness 1..1 code "Evaluate consciousness"
  "The symptoms that the client is experiencing right now: select \"None\" if she/he is experiencing none of these symptoms"
  * ^code[+] = $DENConcepts#DEN.B6.DE1
  * ^comment = "Source note: Physiological symptoms category Ask during every contact. | Input-option concepts from the source dictionary (not separate logical properties): DEN.B6.DE2 ('None'; Required=O); DEN.B6.DE3 ('Dizziness'; Required=O); DEN.B6.DE4 ('Irritability'; Required=O); DEN.B6.DE5 ('Drowsiness'; Required=O); DEN.B6.DE6 ('Lethargy'; Required=O); DEN.B6.DE7 ('Fainting'; Required=O); DEN.B6.DE8 ('Convulsion'; Required=O); DEN.B6.DE9 ('Vertigo'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* checkDiuresis 1..1 code "Check diuresis"
  "Client’s urine output status"
  * ^code[+] = $DENConcepts#DEN.B7.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.B7.DE2 ('Normal urine output'; Required=O); DEN.B7.DE3 ('Oliguria'; Required=O); DEN.B7.DE4 ('Anuria'; Required=O); DEN.B7.DE5 ('Polyuria'; Required=O); DEN.B7.DE6 ('Unknown / Not assessed'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* investigatePreExistingConditions 1..1 code "Investigate pre-existing conditions"
  "Investigate about pre-existing conditions that may complicate dengue management"
  * ^code[+] = $DENConcepts#DEN.B8.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.B8.DE2 ('No chronic or past health conditions'; Required=O); validation: Cannot select with any other option; DEN.B8.DE3 ('Don't know if there are any chronic or past health conditions'; Required=O); validation: Cannot select with any other option; DEN.B8.DE4 ('Infants (<24 months)'; Required=O); validation: Age<24 months; DEN.B8.DE5 ('Adults >65 years'; Required=O); validation: Age>65 years; DEN.B8.DE6 ('Obesity'; Required=O); DEN.B8.DE7 ('Pregnant women'; Required=O); DEN.B8.DE8 ('Asthma'; Required=O); DEN.B8.DE9 ('Other respiratory conditions'; Required=O); DEN.B8.DE10 ('Diabetes, pre-existing type 1'; Required=O); DEN.B8.DE11 ('Diabetes, pre-existing type 2'; Required=O); DEN.B8.DE12 ('Hypertension'; Required=O); DEN.B8.DE13 ('Cardiovascular disease'; Required=O); DEN.B8.DE14 ('Previous dengue infections'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* socialCircumstances 0..1 boolean "Social circumstances"
  "Relevant social circumstances that may affect care, including living alone or having limited access to a health facility due to distance or lack of reliable transport."
  * ^code[+] = $DENConcepts#DEN.B8.DE15
* recentTravelToEndemicArea 0..1 boolean "Recent travel to endemic area"
  "Client has recently traveled to a dengue-endemic area"
  * ^code[+] = $DENConcepts#DEN.B9.DE1
* householdOrCommunityMemberWithSimilarSymptoms 0..1 boolean "Household or community member with similar symptoms"
  "Client reports someone nearby with similar symptoms"
  * ^code[+] = $DENConcepts#DEN.B9.DE2
* performTourniquetTest 1..1 code "Perform tourniquet test"
  "Apply the tourniquet test as described in the clinical protocol to assess capillary fragility."
  * ^code[+] = $DENConcepts#DEN.B10.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.B10.DE2 ('Negative tourniquet test'; Required=O); DEN.B10.DE3 ('Positive tourniquet test'; Required=O); DEN.B10.DE4 ('Tourniquet test not done'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* warningSign 1..1 code "Warning sign"
  "Check if patient presents any Warning sign"
  * ^code[+] = $DENConcepts#DEN.B11.DE1
  * ^comment = "Source marks this parent as Data Type=Codes, although it heads the following input-option rows; confirm/correct the source to Coding. | Input-option concepts from the source dictionary (not separate logical properties): DEN.B11.DE2 ('Abdominal pain'; Required=O); DEN.B11.DE3 ('Persistent vomiting'; Required=O); DEN.B11.DE4 ('Fluid accumulation'; Required=O); DEN.B11.DE5 ('Mucosal bleeding'; Required=O); DEN.B11.DE6 ('Lethargy'; Required=O); DEN.B11.DE7 ('Irritability'; Required=O); DEN.B11.DE8 ('Postural hypotension'; Required=O); DEN.B11.DE9 ('Syncope'; Required=O); DEN.B11.DE10 ('Hepatomegaly'; Required=O); DEN.B11.DE11 ('Looks very ill'; Required=O); DEN.B11.DE12 ('Unconscious'; Required=O); DEN.B11.DE13 ('No warn sign'; Required=O); validation: Cannot select with any other option. Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
