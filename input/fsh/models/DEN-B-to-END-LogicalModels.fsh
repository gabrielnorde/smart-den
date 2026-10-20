// Draft Logical Models generated from the DEN Data Dictionary workbook.
// Scope: DEN.B Screening, DEN.C3 Physical examination, DEN.C4-6 Diagnostic,
// DEN.C7 Initial management, DEN.C8 Lab test & imaging, DEN.C9 Referral,
// DEN.C10 Clinical management, DEN.C11 Clinical/Lab evaluation, and DEN.End.
// Review before publication: confirm cardinalities, terminology bindings, and source data quality.
// Data Type=Codes rows are treated as terminology options, not separate logical properties,
// following the workbook READ ME guidance for Coding/Codes. Author/verify CodeSystem/ValueSet separately.
// NOTE: DEN.B3.DE3 is duplicated in the source sheet (blood pressure cannot be taken and body temperature).

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

// -----------------------------------------------------------------------------
// Source worksheet: "DEN.B Screening"
// Source data-quality issue: option(s) without a preceding Coding field: DEN.B9.DE3 ('None').
// These option concepts are not represented as standalone properties; identify the parent Coding element before binding terminology.
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

// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C3 Physical examination"
Logical: DENC3PhysicalExamination
Id: DEN-C3-Physical-examination
Title: "DEN.C3 Physical examination"
Description: "Data elements for the DEN.C3 Physical examination Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C3 Physical examination data dictionary."
* dangerSign 0..1 code "Danger sign"
  "Evaluate if patient is in shock"
  * ^code[+] = $DENConcepts#DEN.C3.DE1
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C3.DE3 ('Hypotensive shock'; Required=R); DEN.C3.DE4 ('Severe bleeding'; Required=R); DEN.C3.DE5 ('Severe organ impairment'; Required=R); DEN.C3.DE6 ('None'; Required=O); validation: Cannot select with any other option. Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* quantityOfOralIntake 0..1 Quantity "Quantity of oral intake"
  "Volume of fluids consumed by the patient."
  * ^code[+] = $DENConcepts#DEN.C3.DE7
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Integer quantity."

// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C4-6 Diagnostic"
Logical: DENC46Diagnostic
Id: DEN-C4-6-Diagnostic
Title: "DEN.C4-6 Diagnostic"
Description: "Data elements for the DEN.C4-6 Diagnostic Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C4-6 Diagnostic data dictionary."
* suspectedDengueFever 0..1 boolean "Suspected dengue fever"
  "Indicates whether the patient presents with signs and symptoms consistent with dengue."
  * ^code[+] = $DENConcepts#DEN.C4.DE1
* confirmedDengueFever 0..1 boolean "Confirmed dengue fever"
  "Indicates that the patient’s diagnosis of dengue has been confirmed by laboratory tests."
  * ^code[+] = $DENConcepts#DEN.C4.DE2
* dengueClassification 1..1 code "Dengue classification"
  * ^code[+] = $DENConcepts#DEN.C6.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C6.DE2 ('Group A'; Required=R); DEN.C6.DE3 ('Group B'; Required=R); DEN.C6.DE4 ('Group C'; Required=R); DEN.C6.DE5 ('Group D'; Required=R). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."

// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C7 Initial management"
Logical: DENC7InitialManagement
Id: DEN-C7-Initial-management
Title: "DEN.C7 Initial management"
Description: "Data elements for the DEN.C7 Initial management Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C7 Initial management data dictionary."
* startsHydration 1..1 code "Starts hydration"
  "Indicates whether hydration therapy has been initiated for a patient with suspected or confirmed dengue."
  * ^code[+] = $DENConcepts#DEN.C7.1.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C7.1.DE2 ('Oral hydration'; Required=R); DEN.C7.1.DE3 ('IV hydration'; Required=R); DEN.C7.1.DE4 ('No hydration'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* defineManagement 0..1 code "Define management"
  "Define management categories aligned with severity classification and available resources."
  * ^code[+] = $DENConcepts#DEN.C7.2.DE1
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Input-option concepts from the source dictionary (not separate logical properties): DEN.C7.2.DE2 ('Ambulatory care'; Required=O); DEN.C7.2.DE3 ('In-Hospital care'; Required=not specified); DEN.C7.2.DE4 ('Hospital care'; Required=O); DEN.C7.2.DE5 ('Intensive care (ICU)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."

// -----------------------------------------------------------------------------
// Source worksheet: "DEN C8. Lab test & imaging"
Logical: DENC8LabTestImaging
Id: DEN-C8-Lab-test-imaging
Title: "DEN C8. Lab test & imaging"
Description: "Data elements for the DEN C8. Lab test & imaging Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN C8. Lab test & imaging data dictionary."
* orderComplementaryExams 1..1 code "Order Complementary exams"
  * ^code[+] = $DENConcepts#DEN.C8.DE1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE2 ('Complete blood count test (1)'; Required=O); DEN.C8.DE3 ('Hematocrit (1)'; Required=not specified); DEN.C8.DE4 ('Platelet count (1)'; Required=not specified); DEN.C8.DE5 ('Dengue PCR'; Required=not specified); DEN.C8.DE6 ('Dengue virus serology'; Required=not specified). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams2 1..1 code "Order Complementary exams (2)"
  * ^code[+] = $DENConcepts#DEN.C8.DE7
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE8 ('Complete blood count test (2)'; Required=O); DEN.C8.DE9 ('Hematocrit (2)'; Required=O); DEN.C8.DE10 ('Platelet count (2)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams3 1..1 code "Order Complementary exams (3)"
  * ^code[+] = $DENConcepts#DEN.C8.DE11
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE12 ('Complete blood count test (3)'; Required=O); DEN.C8.DE13 ('Hematocrit (3)'; Required=O); DEN.C8.DE14 ('Platelet count (3)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams4 1..1 code "Order Complementary exams (4)"
  * ^code[+] = $DENConcepts#DEN.C8.DE15
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE16 ('Complete blood count test (4)'; Required=O); DEN.C8.DE17 ('Hematocrit (4)'; Required=O); DEN.C8.DE18 ('Platelet count (4)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams5 1..1 code "Order Complementary exams (5)"
  * ^code[+] = $DENConcepts#DEN.C8.DE19
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE20 ('Complete blood count test (5)'; Required=O); DEN.C8.DE21 ('Hematocrit (5)'; Required=O); DEN.C8.DE22 ('Platelet count (5)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams6 1..1 code "Order Complementary exams (6)"
  * ^code[+] = $DENConcepts#DEN.C8.DE23
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE24 ('Complete blood count test (6)'; Required=O); DEN.C8.DE25 ('Hematocrit (6)'; Required=O); DEN.C8.DE26 ('Platelet count (6)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* orderComplementaryExams7 1..1 code "Order Complementary exams (7)"
  * ^code[+] = $DENConcepts#DEN.C8.DE27
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.C8.DE28 ('Complete blood count test (7)'; Required=O); DEN.C8.DE29 ('Hematocrit (7)'; Required=O); DEN.C8.DE30 ('Platelet count (7)'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
* hematocritHtResults1 0..1 Quantity "Hematocrit (Ht) results (1)"
  "Hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE31
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults1 0..1 Quantity "Platelet count (observable entity) results (1)"
  "Quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE32
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* dengueVirusSerologyResults 0..1 Quantity "Dengue virus serology results"
  "Results of laboratory tests for dengue confirmation. Required for surveillance/confirmation, but not essential for immediate clinical management."
  * ^code[+] = $DENConcepts#DEN.C8.DE33
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available. | Data Type is blank in the source dictionary; a provisional FHIR logical type was inferred. Confirm before publication."
* denguePCRResults 0..1 Quantity "Dengue PCR results"
  "Results of laboratory tests for dengue confirmation. Required for surveillance/confirmation, but not essential for immediate clinical management."
  * ^code[+] = $DENConcepts#DEN.C8.DE34
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available. | Data Type is blank in the source dictionary; a provisional FHIR logical type was inferred. Confirm before publication."
* hematocritHtResults2 0..1 Quantity "Hematocrit (Ht) results (2)"
  "Results of second hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE35
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults2 0..1 Quantity "Platelet count (observable entity) results (2)"
  "Results of second quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE36
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults3 0..1 Quantity "Hematocrit (Ht) results (3)"
  "Results of third hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE37
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults3 0..1 Quantity "Platelet count (observable entity) results (3)"
  "Results of third quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE38
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults4 0..1 Quantity "Hematocrit (Ht) results (4)"
  "Results of fourth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE39
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults4 0..1 Quantity "Platelet count (observable entity) results (4)"
  "Results of fourth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE40
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults5 0..1 Quantity "Hematocrit (Ht) results (5)"
  "Results of fifth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE41
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults5 0..1 Quantity "Platelet count (observable entity) results (5)"
  "Results of fifth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE42
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults6 0..1 Quantity "Hematocrit (Ht) results (6)"
  "Results of sixth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE43
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults6 0..1 Quantity "Platelet count (observable entity) results (6)"
  "Results of sixth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE44
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* hematocritHtResults7 0..1 Quantity "Hematocrit (Ht) results (7)"
  "Results of seventh hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE45
  * ^comment = "Conditional element in the source dictionary; implement the stated skip logic/condition in the consuming workflow. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."
* plateletCountObservableEntityResults7 0..1 Quantity "Platelet count (observable entity) results (7)"
  "Results of seventh quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE46
  * ^comment = "Requiredness is not specified in the source dictionary; cardinality is provisionally 0..1. | Quantity sub-type: Decimal quantity. | Calculation: Can be linked to lab information system if available."

// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C9. Refer to complex servic"
Logical: DENC9ReferToComplexServices
Id: DEN-C9-Refer-to-complex-services
Title: "DEN.C9. Refer to complex services"
Description: "Data elements for the DEN.C9. Refer to complex services Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C9. Refer to complex services data dictionary."
* emergencyReferral 1..1 boolean "Emergency referral"
  "Referral for urgent care"
  * ^code[+] = $DENConcepts#DEN.C9.DE1
* anyTreatmentGivenBeforeReferral 1..1 boolean "Any treatment given before referral?"
  "If patient was referred, was any treatment provided before referral?"
  * ^code[+] = $DENConcepts#DEN.C9.DE2
* locationOfReferral 1..1 string "Location of referral"
  "Where the client is being referred to"
  * ^code[+] = $DENConcepts#DEN.C9.DE3
  * ^comment = "Validation: Should come from facility registry list."
* dateReferralWasMade 1..1 dateTime "Date referral was made"
  "The date the referral was made"
  * ^code[+] = $DENConcepts#DEN.C9.DE4
  * ^comment = "Quantity sub-type: =\"contact date\". | Validation: =\"contact date\"."
* providerSFacility 1..1 string "Provider's facility"
  "Facility client is being referred from"
  * ^code[+] = $DENConcepts#DEN.C9.DE5
  * ^comment = "Quantity sub-type: Same as end-user's profile. | Validation: Same as end-user's profile."
* providerSTelephoneNumber 1..1 string "Provider's telephone number"
  "The contact details of the provider making the referral"
  * ^code[+] = $DENConcepts#DEN.C9.DE6
  * ^comment = "Quantity sub-type: Same as end-user's profile. | Validation: Same as end-user's profile. | Calculation: Integer quantity. | Source specifies Quantity/integer, but telephone numbers are represented as string to preserve leading zeroes and formatting; confirm."
* referralNotes 1..1 string "Referral notes"
  "Any additional relevant details of clinical significance for the referral facility to provide continuity of care"
  * ^code[+] = $DENConcepts#DEN.C9.DE7

// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C10 Clinical management"
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

// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C11 ClinicalLab evaluation"
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

// -----------------------------------------------------------------------------
// Source worksheet: "DEN.End"
Logical: DENEnd
Id: DEN-End
Title: "DEN.End"
Description: "Data elements for the DEN.End Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.End data dictionary."
* reasonForClosingDENRecord 1..1 code "Reason for closing DEN record"
  "Select the reason why you are closing the patient's DEN record"
  * ^code[+] = $DENConcepts#DEN.End.1
  * ^comment = "Input-option concepts from the source dictionary (not separate logical properties): DEN.End.2 ('Death'; Required=O); DEN.End.3 ('Lost to follow-up'; Required=O); DEN.End.4 ('Discharge'; Required=O). Create/verify the corresponding CodeSystem concepts and ValueSet, then bind this field. Do not infer terminology bindings solely from labels."
