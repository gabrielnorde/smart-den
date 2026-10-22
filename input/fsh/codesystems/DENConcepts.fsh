CodeSystem: DENConcepts
Id: DENConcepts
Title: "DEN Concepts CodeSystem"
Description: "CodeSystem grouping all data elements and concepts for the WHO Dengue Digital Adaptation Kit (DAK)"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = false
* ^content = #complete

// =============================================================================
// DEN.A. Registration
// =============================================================================
* #DEN.A2.DE1 "Unique identification" "Unique identifier generated (SUS card number)"
* #DEN.A2.DE2 "First name" "Client's first name"
* #DEN.A2.DE3 "Last name" "Client's family name or last name"
* #DEN.A2.DE4 "Visit date" "The date and time of the client's contact"
* #DEN.A2.DE5 "Date of birth" "The client's date of birth (DOB), if known"
* #DEN.A2.DE6 "Age" "Age (number of years) of the client based on date of birth"
* #DEN.A2.DE7 "Gender identity" "Gender identity of the client"
* #DEN.A2.DE8 "Female" "Client identifies as female"
* #DEN.A2.DE9 "Male" "Client identifies as male"
* #DEN.A2.DE10 "Transgender male" "Client identifies as transgender male"
* #DEN.A2.DE11 "Transgender female" "Client identifies as transgender female"
* #DEN.A2.DE12 "Other" "Additional category"
* #DEN.A2.DE13 "Other (specify)" "Additional category (please specify)"
* #DEN.A2.DE14 "Address" "Client's home address or address that the client is consenting to disclose"
* #DEN.A2.DE15 "Mobile phone number" "Client's mobile phone number"
* #DEN.A2.DE16 "Alternative contact's name" "Name of an alternative contact, which could be next of kin (e.g. partner, mother, sibling); the alternative contact would be used in the case of an emergency situation"
* #DEN.A2.DE17 "Alternative contact's phone number" "Phone number of the alternative contact"
* #DEN.A2.DE18 "Mother´s name" "Client's mother name"

// =============================================================================
// DEN.B Screening
// =============================================================================
* #DEN.B3.DE1 "Systolic blood pressure" "Systolic blood pressure (SBP) in mmHg"
* #DEN.B3.DE2 "Diastolic blood pressure" "Diastolic blood pressure (DBP) in mmHg"
* #DEN.B3.DE3 "Blood pressure cannot be taken" "If the client's blood pressure cannot be taken, this should be indicated here; otherwise, blood pressure should be measured"
* #DEN.B3.DE3-temp "Body temperature" "The client's body temperature in degrees Celsius (°C) (first reading)"
* #DEN.B3.DE4 "Fever onset" "How many days the patient experience fever"
* #DEN.B3.DE5 "Pulse rate" "The client's pulse rate in beats per minute (bpm)"
* #DEN.B3.DE6 "Pallor present" "Whether or not the client has pallor"
* #DEN.B3.DE8 "Respiratory exam result" "The client's respiratory condition based on respiratory exam"
* #DEN.B3.DE9 "Respiratory exam not done" "Respiratory exam was not done"
* #DEN.B3.DE10 "Normal respiratory exam result" "Respiratory exam result was normal"
* #DEN.B3.DE11 "Dyspnoea" "Abnormal respiratory exam result: Dyspnoea"
* #DEN.B3.DE12 "Cough" "Abnormal respiratory exam result: Cough"
* #DEN.B3.DE13 "Rapid breathing" "Abnormal respiratory exam result: Rapid breathing"
* #DEN.B3.DE14 "Slow breathing" "Abnormal respiratory exam result: Slow breathing"
* #DEN.B3.DE15 "Wheezing" "Abnormal respiratory exam result: Wheezing"
* #DEN.B3.DE16 "Rales" "Abnormal respiratory exam result: Rales"
* #DEN.B3.DE17 "Kussmaul's respiration" "Abnormal respiratory exam result: Kussmaul's respiration"

* #DEN.B4.DE1 "Current height" "The client's current height in centimetres"
* #DEN.B4.DE2 "Current weight" "The client's current weight in kilograms"
* #DEN.B4.DE3 "BMI" "Body mass index (BMI): calculated by taking weight in kg divided by the squared height in meters, i.e. kg/(m^2)"

* #DEN.B5.DE1 "Current physiological symptoms" "The physiological symptoms that the client is experiencing right now"
* #DEN.B5.DE2 "None" "No physiological symptoms"
* #DEN.B5.DE3 "Headache" "Client is experiencing headache"
* #DEN.B5.DE4 "Severe headache" "Client has a severe headache"
* #DEN.B5.DE5 "Vomiting" "Client is vomiting"
* #DEN.B5.DE6 "Nausea" "Client is experiencing nausea"
* #DEN.B5.DE7 "Diarrhea" "Client is experiencing diarrhea"
* #DEN.B5.DE8 "Skin rash (maculopapular rash)" "Client has skin rash (maculopapular rash)"
* #DEN.B5.DE9 "Other current physiological symptoms (specify)" "Client is experiencing other physiological symptoms not described above"

* #DEN.B6.DE1 "Evaluate consciousness" "Symptoms that the client is experiencing regarding consciousness"
* #DEN.B6.DE2 "None consciousness symptoms" "No consciousness symptoms"
* #DEN.B6.DE3 "Dizziness" "Client is dizzy"
* #DEN.B6.DE4 "Irritability" "Client is experiencing irritability"
* #DEN.B6.DE5 "Drowsiness" "Client is drowsy"
* #DEN.B6.DE6 "Lethargy" "Client is lethargic"
* #DEN.B6.DE7 "Fainting" "Client fainted"
* #DEN.B6.DE8 "Convulsion" "Client had convulsion"
* #DEN.B6.DE9 "Vertigo" "Client is experiencing vertigo"

* #DEN.B7.DE1 "Check diuresis" "Client’s urine output status"
* #DEN.B7.DE2 "Normal urine output" "Client is experiencing normal urine output"
* #DEN.B7.DE3 "Oliguria" "Client is experiencing low urine output"
* #DEN.B7.DE4 "Anuria" "Client is experiencing no urine output"
* #DEN.B7.DE5 "Polyuria" "Client is experiencing excessive urine"
* #DEN.B7.DE6 "Unknown / Not assessed" "Client urine output was not assessed"

* #DEN.B8.DE1 "Investigate pre-existing conditions" "Investigate about pre-existing conditions that may complicate dengue management"
* #DEN.B8.DE2 "No chronic or past health conditions" "Client does not have chronic diseases or any past health conditions"
* #DEN.B8.DE3 "Don't know if there are any chronic or past health conditions" "Client does not know whether she has any chronic diseases or past health conditions"
* #DEN.B8.DE4 "Infants (<24 months)" "Client is younger than 24 month years old"
* #DEN.B8.DE5 "Adults >65 years" "Client is older than 65 years old"
* #DEN.B8.DE6 "Obesity" "Client has a BMI that is defined as obese"
* #DEN.B8.DE7 "Pregnant women" "Woman is pregnant"
* #DEN.B8.DE8 "Asthma" "Client has pre-existing asthma"
* #DEN.B8.DE9 "Other respiratory conditions" "Client has other pre-existing respiratory condition"
* #DEN.B8.DE10 "Diabetes, pre-existing type 1" "Client has pre-existing type 1 diabetes mellitus"
* #DEN.B8.DE11 "Diabetes, pre-existing type 2" "Client has pre-existing type 2 diabetes mellitus"
* #DEN.B8.DE12 "Hypertension" "High blood pressure"
* #DEN.B8.DE13 "Cardiovascular disease" "Client has pre-existing cardiovascular disease"
* #DEN.B8.DE14 "Previous dengue infections" "Client has a history of previous dengue infection(s)"
* #DEN.B8.DE15 "Social circumstances" "Relevant social circumstances that may affect care, including living alone or having limited access to a health facility"

* #DEN.B9.DE1 "Recent travel to endemic area" "Client has recently traveled to a dengue-endemic area"
* #DEN.B9.DE2 "Household or community member with similar symptoms" "Client reports someone nearby with similar symptoms"
* #DEN.B9.DE3 "None exposure" "Client has no history of exposure"

* #DEN.B10.DE1 "Perform tourniquet test" "Apply the tourniquet test as described in the clinical protocol to assess capillary fragility"
* #DEN.B10.DE2 "Negative tourniquet test" "Capillary fragility not detected by tourniquet test"
* #DEN.B10.DE3 "Positive tourniquet test" "Capillary fragility detected by tourniquet test"
* #DEN.B10.DE4 "Tourniquet test not done" "Tourniquet test could not be done"

* #DEN.B11.DE1 "Warning sign" "Check if patient presents any Warning sign"
* #DEN.B11.DE2 "Abdominal pain" "Client has severe and continuous abdominal pain"
* #DEN.B11.DE3 "Persistent vomiting" "Client has persistent vomiting (>=3 episodes in 24h)"
* #DEN.B11.DE4 "Fluid accumulation" "Client presents with ascites, pleural or pericardial effusion"
* #DEN.B11.DE5 "Mucosal bleeding" "Client has mucosal bleeding (e.g., gums, nose, menorrhagia)"
* #DEN.B11.DE6 "Lethargy (warning sign)" "Client is lethargic"
* #DEN.B11.DE7 "Irritability (warning sign)" "Client is irritable"
* #DEN.B11.DE8 "Postural hypotension" "Client has postural hypotension"
* #DEN.B11.DE9 "Syncope" "Client has fainted"
* #DEN.B11.DE10 "Hepatomegaly" "Client has hepatomegaly (>2 cm below costal margin)"
* #DEN.B11.DE11 "Looks very ill" "Client looks very ill"
* #DEN.B11.DE12 "Unconscious" "Client is unconscious"
* #DEN.B11.DE13 "No warn sign" "Client has no warn sign"

// =============================================================================
// DEN.C3 Physical examination
// =============================================================================
* #DEN.C3.DE1 "Danger sign" "Evaluate if patient is in shock"
* #DEN.C3.DE3 "Hypotensive shock" "When compensatory mechanisms fail and BP drops below normal resulting in inadequate perfusion"
* #DEN.C3.DE4 "Severe bleeding" "Clinician assessment of severe bleeding requiring intervention"
* #DEN.C3.DE5 "Severe organ impairment" "Presence of severe organ involvement as assessed by clinician"
* #DEN.C3.DE6 "None danger signs" "Client does not have any of danger signs"
* #DEN.C3.DE7 "Quantity of oral intake" "Volume of fluids consumed by the patient"

// =============================================================================
// DEN.C4-6 Diagnostic
// =============================================================================
* #DEN.C4.DE1 "Suspected dengue fever" "Indicates whether the patient presents with signs and symptoms consistent with dengue"
* #DEN.C4.DE2 "Confirmed dengue fever" "Indicates that the patient’s diagnosis of dengue has been confirmed by laboratory tests"
* #DEN.C6.DE1 "Dengue classification" "Severity classification of the dengue patient"
* #DEN.C6.DE2 "Group A" "Dengue without warning signs, special conditions, social risk factors, or comorbidities"
* #DEN.C6.DE3 "Group B" "Dengue fever without warning signs, but with special conditions, social risk factors, or comorbidities"
* #DEN.C6.DE4 "Group C" "Dengue fever with presence of warning signs"
* #DEN.C6.DE5 "Group D" "Severe forms of dengue fever with shock, severe bleeding, or organ dysfunction"

// =============================================================================
// DEN.C7 Initial management
// =============================================================================
* #DEN.C7.1.DE1 "Starts hydration" "Indicates whether hydration therapy has been initiated for a patient with suspected or confirmed dengue"
* #DEN.C7.1.DE2 "Oral hydration" "Patient started oral fluid therapy"
* #DEN.C7.1.DE3 "IV hydration" "Patient started intravenous fluid therapy"
* #DEN.C7.1.DE4 "No hydration" "Not indicated or not yet initiated"
* #DEN.C7.2.DE1 "Define management" "Define management categories aligned with severity classification and available resources"
* #DEN.C7.2.DE2 "Ambulatory care" "Management provided on an outpatient basis"
* #DEN.C7.2.DE3 "In-Hospital care" "Patient requires closer monitoring than ambulatory care but not full hospital admission"
* #DEN.C7.2.DE4 "Hospital care" "Includes continuous monitoring, IV fluids, management of complications, and supportive care"
* #DEN.C7.2.DE5 "Intensive care (ICU)" "Requires advanced monitoring, aggressive fluid management, blood products, and organ support"

// =============================================================================
// DEN.C8 Lab test & imaging
// =============================================================================
* #DEN.C8.DE1 "Order Complementary exams" "Order complementary exams (first evaluation)"
* #DEN.C8.DE2 "Complete blood count test (1)" "First laboratory test to evaluate hemoglobin, hematocrit, leukocytes, and platelets"
* #DEN.C8.DE3 "Hematocrit (1)" "First laboratory test to evaluate hematocrit"
* #DEN.C8.DE4 "Platelet count (1)" "First laboratory test to evaluate platelet count"
* #DEN.C8.DE5 "Dengue PCR" "Laboratory tests for dengue confirmation: Dengue PCR"
* #DEN.C8.DE6 "Dengue virus serology" "Laboratory tests for dengue confirmation: Dengue virus serology"

* #DEN.C8.DE7 "Order Complementary exams (2)" "Second laboratory test order"
* #DEN.C8.DE8 "Complete blood count test (2)" "Second laboratory test to evaluate hemoglobin, hematocrit, leukocytes, and platelets"
* #DEN.C8.DE9 "Hematocrit (2)" "Second laboratory test to evaluate hematocrit"
* #DEN.C8.DE10 "Platelet count (2)" "Second laboratory test to evaluate platelet count"

* #DEN.C8.DE11 "Order Complementary exams (3)" "Third laboratory test order"
* #DEN.C8.DE12 "Complete blood count test (3)" "Third laboratory test to evaluate hemoglobin, hematocrit, leukocytes, and platelets"
* #DEN.C8.DE13 "Hematocrit (3)" "Third laboratory test to evaluate hematocrit"
* #DEN.C8.DE14 "Platelet count (3)" "Third laboratory test to evaluate platelet count"

* #DEN.C8.DE15 "Order Complementary exams (4)" "Fourth laboratory test order"
* #DEN.C8.DE16 "Complete blood count test (4)" "Fourth laboratory test to evaluate hemoglobin, hematocrit, leukocytes, and platelets"
* #DEN.C8.DE17 "Hematocrit (4)" "Fourth laboratory test to evaluate hematocrit"
* #DEN.C8.DE18 "Platelet count (4)" "Fourth laboratory test to evaluate platelet count"

* #DEN.C8.DE19 "Order Complementary exams (5)" "Fifth laboratory test order"
* #DEN.C8.DE20 "Complete blood count test (5)" "Fifth laboratory test to evaluate hemoglobin, hematocrit, leukocytes, and platelets"
* #DEN.C8.DE21 "Hematocrit (5)" "Fifth laboratory test to evaluate hematocrit"
* #DEN.C8.DE22 "Platelet count (5)" "Fifth laboratory test to evaluate platelet count"

* #DEN.C8.DE23 "Order Complementary exams (6)" "Sixth laboratory test order"
* #DEN.C8.DE24 "Complete blood count test (6)" "Sixth laboratory test to evaluate hemoglobin, hematocrit, leukocytes, and platelets"
* #DEN.C8.DE25 "Hematocrit (6)" "Sixth laboratory test to evaluate hematocrit"
* #DEN.C8.DE26 "Platelet count (6)" "Sixth laboratory test to evaluate platelet count"

* #DEN.C8.DE27 "Order Complementary exams (7)" "Seventh laboratory test order"
* #DEN.C8.DE28 "Complete blood count test (7)" "Seventh laboratory test to evaluate hemoglobin, hematocrit, leukocytes, and platelets"
* #DEN.C8.DE29 "Hematocrit (7)" "Seventh laboratory test to evaluate hematocrit"
* #DEN.C8.DE30 "Platelet count (7)" "Seventh laboratory test to evaluate platelet count"

* #DEN.C8.DE31 "Hematocrit (Ht) results (1)" "Hematocrit percentage (first reading)"
* #DEN.C8.DE32 "Platelet count results (1)" "Quantitative platelet count (first reading)"
* #DEN.C8.DE33 "Dengue virus serology results" "Results of dengue virus serology test"
* #DEN.C8.DE34 "Dengue PCR results" "Results of dengue PCR test"
* #DEN.C8.DE35 "Hematocrit (Ht) results (2)" "Results of second hematocrit percentage"
* #DEN.C8.DE36 "Platelet count results (2)" "Results of second quantitative platelet count"
* #DEN.C8.DE37 "Hematocrit (Ht) results (3)" "Results of third hematocrit percentage"
* #DEN.C8.DE38 "Platelet count results (3)" "Results of third quantitative platelet count"
* #DEN.C8.DE39 "Hematocrit (Ht) results (4)" "Results of fourth hematocrit percentage"
* #DEN.C8.DE40 "Platelet count results (4)" "Results of fourth quantitative platelet count"
* #DEN.C8.DE41 "Hematocrit (Ht) results (5)" "Results of fifth hematocrit percentage"
* #DEN.C8.DE42 "Platelet count results (5)" "Results of fifth quantitative platelet count"
* #DEN.C8.DE43 "Hematocrit (Ht) results (6)" "Results of sixth hematocrit percentage"
* #DEN.C8.DE44 "Platelet count results (6)" "Results of sixth quantitative platelet count"
* #DEN.C8.DE45 "Hematocrit (Ht) results (7)" "Results of seventh hematocrit percentage"
* #DEN.C8.DE46 "Platelet count results (7)" "Results of seventh quantitative platelet count"

// =============================================================================
// DEN.C9. Refer to complex services
// =============================================================================
* #DEN.C9.DE1 "Emergency referral" "Referral for urgent care"
* #DEN.C9.DE2 "Any treatment given before referral?" "If patient was referred, was any treatment provided before referral?"
* #DEN.C9.DE3 "Location of referral" "Where the client is being referred to"
* #DEN.C9.DE4 "Date referral was made" "The date the referral was made"
* #DEN.C9.DE5 "Provider's facility" "Facility client is being referred from"
* #DEN.C9.DE6 "Provider's telephone number" "The contact details of the provider making the referral"
* #DEN.C9.DE7 "Referral notes" "Any additional relevant details of clinical significance for the referral facility"

// =============================================================================
// DEN.C10 Clinical management
// =============================================================================
* #DEN.C10.DE1 "Define Volume hydration" "Hydration: Daily fluid requirement based on patient’s body weight"
* #DEN.C10.DE2 "Homemade Fluids" "Fluids commonly prepared at home"
* #DEN.C10.DE3 "Oral rehydration solution (ORS)" "Mixture of glucose and electrolytes dissolved in water used to treat dehydration"
* #DEN.C10.DE4 "Isotonic solutions" "Solutions that match body fluid concentration for IV administration"
* #DEN.C10.DE5 "Plasma expanders" "Plasma expanders (albumin 0.5–1 g/kg)"
* #DEN.C10.DE6 "Hydration Phase" "Select the active hydration phase"
* #DEN.C10.DE7 "Expansion phase 1" "Patient is in the first expansion phase"
* #DEN.C10.DE8 "Expansion phase 2" "Patient is in the second expansion phase"
* #DEN.C10.DE9 "Expansion phase 3" "Patient is in the third expansion phase"
* #DEN.C10.DE10 "Maintenance phase 1" "Patient is in maintenance phase 1"
* #DEN.C10.DE11 "Maintenance phase 2" "Patient is in maintenance phase 2"
* #DEN.C10.DE12 "Paracetamol" "Record of paracetamol (acetaminophen) use for fever or pain"
* #DEN.C10.DE13 "Dipyrone" "Record of dipyrone (metamizole) use for fever or pain"

// =============================================================================
// DEN.C11 Clinical/Lab evaluation
// =============================================================================
* #DEN.C11.DE1 "Hematocrit evaluation - first" "First evaluation of hematocrit"
* #DEN.C11.DE2 "Hematocrit below reference range" "Result of hematocrit is below reference range"
* #DEN.C11.DE3 "Hematocrit above reference range" "Result of hematocrit is above reference range"
* #DEN.C11.DE4 "Normal hematocrit" "Result of hematocrit is within normal reference range"
* #DEN.C11.DE5 "Hematocrit evaluation - second" "Second hematocrit evaluation"
* #DEN.C11.DE6 "Rising hematocrit" "Hematocrit is rising"
* #DEN.C11.DE7 "Falling hematocrit" "Hematocrit is falling"
* #DEN.C11.DE8 "Normal/stable hematocrit" "Hematocrit is normal or stable"
* #DEN.C11.DE9 "Hematocrit evaluation - third" "Third hematocrit evaluation"
* #DEN.C11.DE10 "Rising hematocrit (3)" "Hematocrit is rising (evaluation 3)"
* #DEN.C11.DE11 "Falling hematocrit (3)" "Hematocrit is falling (evaluation 3)"
* #DEN.C11.DE12 "Normal/stable hematocrit (3)" "Hematocrit is normal or stable (evaluation 3)"
* #DEN.C11.DE13 "Hematocrit evaluation - fourth" "Fourth hematocrit evaluation"
* #DEN.C11.DE14 "Rising hematocrit (4)" "Hematocrit is rising (evaluation 4)"
* #DEN.C11.DE15 "Falling hematocrit (4)" "Hematocrit is falling (evaluation 4)"
* #DEN.C11.DE16 "Normal/stable hematocrit (4)" "Hematocrit is normal or stable (evaluation 4)"
* #DEN.C11.DE17 "Hematocrit evaluation - fifth" "Fifth hematocrit evaluation"
* #DEN.C11.DE18 "Rising hematocrit (5)" "Hematocrit is rising (evaluation 5)"
* #DEN.C11.DE19 "Falling hematocrit (5)" "Hematocrit is falling (evaluation 5)"
* #DEN.C11.DE20 "Normal/stable hematocrit (5)" "Hematocrit is normal or stable (evaluation 5)"
* #DEN.C11.DE21 "Hematocrit evaluation - sixth" "Sixth hematocrit evaluation"
* #DEN.C11.DE22 "Rising hematocrit (6)" "Hematocrit is rising (evaluation 6)"
* #DEN.C11.DE23 "Falling hematocrit (6)" "Hematocrit is falling (evaluation 6)"
* #DEN.C11.DE24 "Normal/stable hematocrit (6)" "Hematocrit is normal or stable (evaluation 6)"

// =============================================================================
// DEN.End
// =============================================================================
* #DEN.End.1 "Reason for closing DEN record" "Select the reason why you are closing the patient's DEN record"
* #DEN.End.2 "Death" "Patient died"
* #DEN.End.3 "Lost to follow-up" "The patient was lost to follow-up"
* #DEN.End.4 "Discharge" "Patient was discharged"
