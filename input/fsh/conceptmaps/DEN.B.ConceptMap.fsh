Instance: DENBConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.B Screening ConceptMap"
Description: "Mapping between DEN.B Screening Data Elements and standard terminologies (SNOMED CT, LOINC, ICD-11, ICD-10), establishing semantic equivalences according to the WHO Dengue DAK."
* url = "https://smart.who.int/den/ConceptMap/DEN.B.ConceptMap"
* version = "0.1.0"
* name = "DEN_B_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/StructureDefinition/DEN.B"

// =============================================================================
// Group 1: DAK DEN Concepts -> SNOMED CT
// =============================================================================
* group[+]
  * source = $DENConcepts
  * target = $SCT

  * element[+]
    * code = #DEN.B3.DE1
    * display = "Systolic blood pressure"
    * target[+]
      * code = #271649006
      * display = "Systolic blood pressure (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE2
    * display = "Diastolic blood pressure"
    * target[+]
      * code = #271650006
      * display = "Diastolic blood pressure (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE3-temp
    * display = "Body temperature"
    * target[+]
      * code = #386725007
      * display = "Body temperature (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE4
    * display = "Fever onset"
    * target[+]
      * code = #386661006
      * display = "Fever (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE5
    * display = "Pulse rate"
    * target[+]
      * code = #301147003
      * display = "Pulse rate finding (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE6
    * display = "Pallor present"
    * target[+]
      * code = #267029006
      * display = "Pale – symptom (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE9
    * display = "Respiratory exam not done"
    * target[+]
      * code = #373121007
      * display = "Test not done (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE10
    * display = "Normal respiratory exam result"
    * target[+]
      * code = #162889004
      * display = "On examination – normal respiration (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE11
    * display = "Dyspnoea"
    * target[+]
      * code = #267036007
      * display = "Dyspnea (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE12
    * display = "Cough"
    * target[+]
      * code = #49727002
      * display = "Cough (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE13
    * display = "Rapid breathing"
    * target[+]
      * code = #271823003
      * display = "Tachypnea (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE14
    * display = "Slow breathing"
    * target[+]
      * code = #86684002
      * display = "Slow respiration (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE15
    * display = "Wheezing"
    * target[+]
      * code = #56018004
      * display = "Wheezing (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE16
    * display = "Rales"
    * target[+]
      * code = #48409008
      * display = "Respiratory crackles (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE17
    * display = "Kussmaul's respiration"
    * target[+]
      * code = #414563008
      * display = "Kussmaul's respiration (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B4.DE1
    * display = "Current height"
    * target[+]
      * code = #50373000
      * display = "Body height measure (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B4.DE2
    * display = "Current weight"
    * target[+]
      * code = #27113001
      * display = "Body weight (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B4.DE3
    * display = "BMI"
    * target[+]
      * code = #60621009
      * display = "Body mass index (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE2
    * display = "None"
    * target[+]
      * code = #161915001
      * display = "No general symptom (situation)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE3
    * display = "Headache"
    * target[+]
      * code = #25064002
      * display = "Headache (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE4
    * display = "Severe headache"
    * target[+]
      * code = #25064002
      * display = "Headache (finding)"
      * equivalence = #narrower

  * element[+]
    * code = #DEN.B5.DE5
    * display = "Vomiting"
    * target[+]
      * code = #422400008
      * display = "Vomiting (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE6
    * display = "Nausea"
    * target[+]
      * code = #422587007
      * display = "Nausea (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE7
    * display = "Diarrhea"
    * target[+]
      * code = #62315008
      * display = "Diarrhea (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE8
    * display = "Skin rash (maculopapular rash)"
    * target[+]
      * code = #47725002
      * display = "Maculopapular rash (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE3
    * display = "Dizziness"
    * target[+]
      * code = #404640003
      * display = "Dizziness (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE4
    * display = "Irritability"
    * target[+]
      * code = #55929007
      * display = "Feeling irritable (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE5
    * display = "Drowsiness"
    * target[+]
      * code = #271782001
      * display = "Drowsy (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE6
    * display = "Lethargy"
    * target[+]
      * code = #214264003
      * display = "Lethargy (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE7
    * display = "Fainting"
    * target[+]
      * code = #271594007
      * display = "Syncope (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE8
    * display = "Convulsion"
    * target[+]
      * code = #91175000
      * display = "Seizure (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE9
    * display = "Vertigo"
    * target[+]
      * code = #399153001
      * display = "Vertigo (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE2
    * display = "Normal urine output"
    * target[+]
      * code = #53461003
      * display = "Normal size (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE3
    * display = "Oliguria"
    * target[+]
      * code = #83128009
      * display = "Oliguria (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE4
    * display = "Anuria"
    * target[+]
      * code = #2472002
      * display = "Anuria (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE5
    * display = "Polyuria"
    * target[+]
      * code = #28442001
      * display = "Polyuria (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE6
    * display = "Unknown / Not assessed"
    * target[+]
      * code = #261665006
      * display = "Unknown (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE2
    * display = "No chronic or past health conditions"
    * target[+]
      * code = #14732006
      * display = "No history of (contextual qualifier) (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE3
    * display = "Don't know if there are any chronic or past health conditions"
    * target[+]
      * code = #261665006
      * display = "Unknown (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE4
    * display = "Infants (<24 months)"
    * target[+]
      * code = #263784005
      * display = "Infantile (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE5
    * display = "Adults >65 years"
    * target[+]
      * code = #271872005
      * display = "Old age (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE6
    * display = "Obesity"
    * target[+]
      * code = #414915002
      * display = "Obese (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE7
    * display = "Pregnant women"
    * target[+]
      * code = #77386006
      * display = "Pregnant woman (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE8
    * display = "Asthma"
    * target[+]
      * code = #195967001
      * display = "Asthma (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE9
    * display = "Other respiratory conditions"
    * target[+]
      * code = #50043002
      * display = "Disorder of respiratory system (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE10
    * display = "Diabetes, pre-existing type 1"
    * target[+]
      * code = #46635009
      * display = "Diabetes mellitus type 1 (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE11
    * display = "Diabetes, pre-existing type 2"
    * target[+]
      * code = #44054006
      * display = "Diabetes mellitus type 2 (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE12
    * display = "Hypertension"
    * target[+]
      * code = #38341003
      * display = "Hypertensive disorder, systemic arterial (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE13
    * display = "Cardiovascular disease"
    * target[+]
      * code = #49601007
      * display = "Disorder of cardiovascular system (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE14
    * display = "Previous dengue infections"
    * target[+]
      * code = #38362002
      * display = "Dengue (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE15
    * display = "Social circumstances"
    * target[+]
      * code = #82996008
      * display = "Social status (social concept)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B9.DE1
    * display = "Recent travel to endemic area"
    * target[+]
      * code = #443846001
      * display = "Detail of history of travel (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B9.DE3
    * display = "None exposure"
    * target[+]
      * code = #14732006
      * display = "No history of (contextual qualifier) (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B10.DE1
    * display = "Perform tourniquet test"
    * target[+]
      * code = #42106004
      * display = "Capillary fragility test (procedure)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B10.DE2
    * display = "Negative tourniquet test"
    * target[+]
      * code = #829990003
      * display = "Capillary fragility not detected by tourniquet test (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B10.DE3
    * display = "Positive tourniquet test"
    * target[+]
      * code = #846603004
      * display = "Capillary fragility detected by tourniquet test (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE2
    * display = "Abdominal pain"
    * target[+]
      * code = #21522001
      * display = "Abdominal pain (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE3
    * display = "Persistent vomiting"
    * target[+]
      * code = #196746003
      * display = "Persistent vomiting (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE4
    * display = "Fluid accumulation"
    * target[+]
      * code = #17672001
      * display = "Accumulation of fluid (morphologic abnormality)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE5
    * display = "Mucosal bleeding"
    * target[+]
      * code = #128145008
      * display = "Mucosal finding (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE6
    * display = "Lethargy (warning sign)"
    * target[+]
      * code = #214264003
      * display = "Lethargy (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE7
    * display = "Irritability (warning sign)"
    * target[+]
      * code = #55929007
      * display = "Feeling irritable (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE8
    * display = "Postural hypotension"
    * target[+]
      * code = #28651003
      * display = "Orthostatic hypotension (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE9
    * display = "Syncope"
    * target[+]
      * code = #271594007
      * display = "Syncope (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE10
    * display = "Hepatomegaly"
    * target[+]
      * code = #80515008
      * display = "Large liver (disorder)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE11
    * display = "Looks very ill"
    * target[+]
      * code = #39104002
      * display = "Illness (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE12
    * display = "Unconscious"
    * target[+]
      * code = #418107008
      * display = "Unconscious (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE13
    * display = "No warn sign"
    * target[+]
      * code = #14732006
      * display = "No history of (contextual qualifier) (qualifier value)"
      * equivalence = #equivalent

// =============================================================================
// Group 2: DAK DEN Concepts -> LOINC
// =============================================================================
* group[+]
  * source = $DENConcepts
  * target = $LNC

  * element[+]
    * code = #DEN.B3.DE1
    * display = "Systolic blood pressure"
    * target[+]
      * code = #8480-6
      * display = "Systolic blood pressure"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE2
    * display = "Diastolic blood pressure"
    * target[+]
      * code = #8462-4
      * display = "Diastolic blood pressure"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE3-temp
    * display = "Body temperature"
    * target[+]
      * code = #8310-5
      * display = "Body temperature"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE5
    * display = "Pulse rate"
    * target[+]
      * code = #8884-9
      * display = "Heart rate rhythm"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE11
    * display = "Dyspnoea"
    * target[+]
      * code = #82950-7
      * display = "Dyspnea [ALSFRS-R]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE12
    * display = "Cough"
    * target[+]
      * code = #64439-3
      * display = "Over the past 3 months, I have coughed [PhenX]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE13
    * display = "Rapid breathing"
    * target[+]
      * code = #28148-5
      * display = "Breathing pattern impairment [CCC]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE14
    * display = "Slow breathing"
    * target[+]
      * code = #28148-5
      * display = "Breathing pattern impairment [CCC]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE15
    * display = "Wheezing"
    * target[+]
      * code = #28399-4
      * display = "Wheezing [HIV-SSC]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B4.DE1
    * display = "Current height"
    * target[+]
      * code = #8302-2
      * display = "Body height"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B4.DE2
    * display = "Current weight"
    * target[+]
      * code = #29463-7
      * display = "Body weight"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B4.DE3
    * display = "BMI"
    * target[+]
      * code = #39156-5
      * display = "Body mass index (BMI) [Ratio]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE3
    * display = "Headache"
    * target[+]
      * code = #45715-0
      * display = "Headache [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE4
    * display = "Severe headache"
    * target[+]
      * code = #45715-0
      * display = "Headache [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE5
    * display = "Vomiting"
    * target[+]
      * code = #45708-5
      * display = "Vomiting [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE6
    * display = "Nausea"
    * target[+]
      * code = #42848-2
      * display = "Nausea [CCC]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE7
    * display = "Diarrhea"
    * target[+]
      * code = #28089-1
      * display = "Diarrhea [CCC]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE8
    * display = "Skin rash (maculopapular rash)"
    * target[+]
      * code = #280915-1
      * display = "Rash and other nonspecific skin eruption"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE3
    * display = "Dizziness"
    * target[+]
      * code = #45699-6
      * display = "Dizziness or vertigo [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE6
    * display = "Lethargy"
    * target[+]
      * code = #45495-9
      * display = "Periods of lethargy [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE7
    * display = "Fainting"
    * target[+]
      * code = #45706-9
      * display = "Syncope [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE8
    * display = "Convulsion"
    * target[+]
      * code = #99311-3
      * display = "Seizure onset"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE9
    * display = "Vertigo"
    * target[+]
      * code = #104032-8
      * display = "Dizziness, vertigo"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE7
    * display = "Pregnant women"
    * target[+]
      * code = #82810-3
      * display = "Pregnancy status"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE8
    * display = "Asthma"
    * target[+]
      * code = #45669-9
      * display = "Asthma [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE9
    * display = "Other respiratory conditions"
    * target[+]
      * code = #10177-4
      * display = "History of Respiratory system disorders Narrative"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE10
    * display = "Diabetes, pre-existing type 1"
    * target[+]
      * code = #45636-8
      * display = "Diabetes mellitus [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE11
    * display = "Diabetes, pre-existing type 2"
    * target[+]
      * code = #45636-8
      * display = "Diabetes mellitus [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE12
    * display = "Hypertension"
    * target[+]
      * code = #45643-4
      * display = "Hypertension [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE13
    * display = "Cardiovascular disease"
    * target[+]
      * code = #2469101
      * display = "History of Cardiovascular system disorders"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B10.DE3
    * display = "Positive tourniquet test"
    * target[+]
      * code = #38520-3
      * display = "Capillary fragility [Presence]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE2
    * display = "Abdominal pain"
    * target[+]
      * code = #45720-0
      * display = "Stomach pain [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE3
    * display = "Persistent vomiting"
    * target[+]
      * code = #81224-8
      * display = "Vomiting [CCC]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE6
    * display = "Lethargy (warning sign)"
    * target[+]
      * code = #45495-9
      * display = "Periods of lethargy [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE8
    * display = "Postural hypotension"
    * target[+]
      * code = #54781-0
      * display = "Orthostatic hypotension in last 7 days"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE9
    * display = "Syncope"
    * target[+]
      * code = #45706-9
      * display = "Syncope [Minimum Data Set]"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE11
    * display = "Looks very ill"
    * target[+]
      * code = #70410-6
      * display = "I feel ill in the past 7 days [FACIT]"
      * equivalence = #equivalent

// =============================================================================
// Group 3: DAK DEN Concepts -> ICD-11
// =============================================================================
* group[+]
  * source = $DENConcepts
  * target = $ICD11

  * element[+]
    * code = #DEN.B3.DE6
    * display = "Pallor present"
    * target[+]
      * code = #ME64.2
      * display = "Pallor"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE9
    * display = "Respiratory exam not done"
    * target[+]
      * code = #QC1Z
      * display = "Intervention not carried out, unspecified reason"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE11
    * display = "Dyspnoea"
    * target[+]
      * code = #MD11.5
      * display = "Dyspnoea"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE12
    * display = "Cough"
    * target[+]
      * code = #MD12
      * display = "Cough"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE13
    * display = "Rapid breathing"
    * target[+]
      * code = #MD11.Y
      * display = "Other specified abnormalities of breathing"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE14
    * display = "Slow breathing"
    * target[+]
      * code = #MD11.Y
      * display = "Other specified abnormalities of breathing"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE15
    * display = "Wheezing"
    * target[+]
      * code = #MD11.C
      * display = "Wheezing"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE16
    * display = "Rales"
    * target[+]
      * code = #MD32
      * display = "Rales"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE17
    * display = "Kussmaul's respiration"
    * target[+]
      * code = #MD11.Y
      * display = "Other specified abnormalities of breathing"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE3
    * display = "Headache"
    * target[+]
      * code = #MB4D
      * display = "Headache, not elsewhere classified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE4
    * display = "Severe headache"
    * target[+]
      * code = #MG31.1
      * display = "Acute headache, not elsewhere classified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE5
    * display = "Vomiting"
    * target[+]
      * code = #MD90.1
      * display = "Vomiting"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE6
    * display = "Nausea"
    * target[+]
      * code = #MD90.0
      * display = "Nausea"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE7
    * display = "Diarrhea"
    * target[+]
      * code = #ME05.1
      * display = "Diarrhoea"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE8
    * display = "Skin rash (maculopapular rash)"
    * target[+]
      * code = #ME62.3
      * display = "Acute maculopapular skin eruption"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE3
    * display = "Dizziness"
    * target[+]
      * code = #MB48.Z
      * display = "Dizziness and giddiness, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE4
    * display = "Irritability"
    * target[+]
      * code = #MB24.C
      * display = "Irritability"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE5
    * display = "Drowsiness"
    * target[+]
      * code = #MG42
      * display = "Somnolence, not elsewhere classified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE6
    * display = "Lethargy"
    * target[+]
      * code = #MG22
      * display = "Fatigue"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE7
    * display = "Fainting"
    * target[+]
      * code = #MG45
      * display = "Syncope or collapse"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE8
    * display = "Convulsion"
    * target[+]
      * code = #8A68.Z
      * display = "Type of seizure, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE9
    * display = "Vertigo"
    * target[+]
      * code = #MB48.0
      * display = "Vertigo"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE3
    * display = "Oliguria"
    * target[+]
      * code = #MF51
      * display = "Anuria or oliguria"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE4
    * display = "Anuria"
    * target[+]
      * code = #MF51
      * display = "Anuria or oliguria"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE5
    * display = "Polyuria"
    * target[+]
      * code = #MF55
      * display = "Polyuria"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE6
    * display = "Obesity"
    * target[+]
      * code = #5B81.Z
      * display = "Obesity, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE7
    * display = "Pregnant women"
    * target[+]
      * code = #XT0S
      * display = "Pregnancy"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE8
    * display = "Asthma"
    * target[+]
      * code = #CA23
      * display = "Asthma"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE9
    * display = "Other respiratory conditions"
    * target[+]
      * code = #CB7Z
      * display = "Diseases of the respiratory system, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE10
    * display = "Diabetes, pre-existing type 1"
    * target[+]
      * code = #5A10
      * display = "Type 1 diabetes mellitus"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE11
    * display = "Diabetes, pre-existing type 2"
    * target[+]
      * code = #5A11
      * display = "Type 2 diabetes mellitus"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE12
    * display = "Hypertension"
    * target[+]
      * code = #BA00.Z
      * display = "Essential hypertension, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE13
    * display = "Cardiovascular disease"
    * target[+]
      * code = #BE2Z
      * display = "Diseases of the circulatory system, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE14
    * display = "Previous dengue infections"
    * target[+]
      * code = #1D2Z
      * display = "Dengue fever, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE2
    * display = "Abdominal pain"
    * target[+]
      * code = #MD81
      * display = "Abdominal or pelvic pain"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE3
    * display = "Persistent vomiting"
    * target[+]
      * code = #SM3L
      * display = "Vomiting disorder (TM2)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE4
    * display = "Fluid accumulation"
    * target[+]
      * code = #MG29
      * display = "Oedema"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE5
    * display = "Mucosal bleeding"
    * target[+]
      * code = #MG27
      * display = "Haemorrhage, not elsewhere classified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE6
    * display = "Lethargy (warning sign)"
    * target[+]
      * code = #MG22
      * display = "Fatigue"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE7
    * display = "Irritability (warning sign)"
    * target[+]
      * code = #MB24.C
      * display = "Irritability"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE8
    * display = "Postural hypotension"
    * target[+]
      * code = #BA21
      * display = "Orthostatic hypotension"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE9
    * display = "Syncope"
    * target[+]
      * code = #MG45
      * display = "Syncope or collapse"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE10
    * display = "Hepatomegaly"
    * target[+]
      * code = #ME10.0
      * display = "Hepatomegaly or splenomegaly"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE12
    * display = "Unconscious"
    * target[+]
      * code = #MB20.1
      * display = "Coma"
      * equivalence = #equivalent

// =============================================================================
// Group 4: DAK DEN Concepts -> ICD-10
// =============================================================================
* group[+]
  * source = $DENConcepts
  * target = $ICD10

  * element[+]
    * code = #DEN.B3.DE6
    * display = "Pallor present"
    * target[+]
      * code = #R23.1
      * display = "Pallor"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE9
    * display = "Respiratory exam not done"
    * target[+]
      * code = #Z53.9
      * display = "Procedure not carried out, unspecified reason"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE11
    * display = "Dyspnoea"
    * target[+]
      * code = #R06.0
      * display = "Dyspnoea"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE12
    * display = "Cough"
    * target[+]
      * code = #R05
      * display = "Cough"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE13
    * display = "Rapid breathing"
    * target[+]
      * code = #R06.8
      * display = "Other specified abnormalities of breathing"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE14
    * display = "Slow breathing"
    * target[+]
      * code = #R06.8
      * display = "Other specified abnormalities of breathing"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE15
    * display = "Wheezing"
    * target[+]
      * code = #R06.2
      * display = "Wheezing"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE16
    * display = "Rales"
    * target[+]
      * code = #R09.8
      * display = "Other specified symptoms and signs involving the circulatory and respiratory systems"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B3.DE17
    * display = "Kussmaul's respiration"
    * target[+]
      * code = #R06.8
      * display = "Other and unspecified abnormalities of breathing"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE3
    * display = "Headache"
    * target[+]
      * code = #R51
      * display = "Headache"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE4
    * display = "Severe headache"
    * target[+]
      * code = #R51
      * display = "Headache"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE5
    * display = "Vomiting"
    * target[+]
      * code = #R11
      * display = "Nausea and vomiting"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE6
    * display = "Nausea"
    * target[+]
      * code = #R11
      * display = "Nausea and vomiting"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE7
    * display = "Diarrhea"
    * target[+]
      * code = #R19.8
      * display = "Other specified symptoms and signs involving the digestive system and abdomen"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B5.DE8
    * display = "Skin rash (maculopapular rash)"
    * target[+]
      * code = #R21
      * display = "Rash and other nonspecific skin eruption"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE3
    * display = "Dizziness"
    * target[+]
      * code = #R42
      * display = "Dizziness and giddiness"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE4
    * display = "Irritability"
    * target[+]
      * code = #R45.4
      * display = "Irritability and anger"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE5
    * display = "Drowsiness"
    * target[+]
      * code = #R40.0
      * display = "Somnolence"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE6
    * display = "Lethargy"
    * target[+]
      * code = #R53
      * display = "Malaise and fatigue"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE7
    * display = "Fainting"
    * target[+]
      * code = #R55
      * display = "Syncope and collapse"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE8
    * display = "Convulsion"
    * target[+]
      * code = #R56.8
      * display = "Other and unspecified convulsions"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B6.DE9
    * display = "Vertigo"
    * target[+]
      * code = #R42
      * display = "Dizziness and giddiness"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE3
    * display = "Oliguria"
    * target[+]
      * code = #R34
      * display = "Anuria and oliguria"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE4
    * display = "Anuria"
    * target[+]
      * code = #R34
      * display = "Anuria and oliguria"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B7.DE5
    * display = "Polyuria"
    * target[+]
      * code = #R35
      * display = "Polyuria"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE6
    * display = "Obesity"
    * target[+]
      * code = #E66.9
      * display = "Obesity, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE7
    * display = "Pregnant women"
    * target[+]
      * code = #Z32.1
      * display = "Pregnancy confirmed"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE8
    * display = "Asthma"
    * target[+]
      * code = #J45
      * display = "Asthma"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE9
    * display = "Other respiratory conditions"
    * target[+]
      * code = #J98
      * display = "Other respiratory disorders"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE10
    * display = "Diabetes, pre-existing type 1"
    * target[+]
      * code = #E10
      * display = "Type 1 diabetes mellitus"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE11
    * display = "Diabetes, pre-existing type 2"
    * target[+]
      * code = #E11
      * display = "Type 2 diabetes mellitus"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE12
    * display = "Hypertension"
    * target[+]
      * code = #I10
      * display = "Essential (primary) hypertension"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE13
    * display = "Cardiovascular disease"
    * target[+]
      * code = #I98*
      * display = "Other disorders of circulatory system in diseases classified elsewhere"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B8.DE14
    * display = "Previous dengue infections"
    * target[+]
      * code = #A97
      * display = "Dengue"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE2
    * display = "Abdominal pain"
    * target[+]
      * code = #R10
      * display = "Abdominal and pelvic pain"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE3
    * display = "Persistent vomiting"
    * target[+]
      * code = #R11
      * display = "Nausea and vomiting"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE4
    * display = "Fluid accumulation"
    * target[+]
      * code = #R60.9
      * display = "Oedema, unspecified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE5
    * display = "Mucosal bleeding"
    * target[+]
      * code = #R58
      * display = "Haemorrhage, not elsewhere classified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE6
    * display = "Lethargy (warning sign)"
    * target[+]
      * code = #R53
      * display = "Malaise and fatigue"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE7
    * display = "Irritability (warning sign)"
    * target[+]
      * code = #R45.4
      * display = "Irritability and anger"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE8
    * display = "Postural hypotension"
    * target[+]
      * code = #I95.1
      * display = "Orthostatic hypotension"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE9
    * display = "Syncope"
    * target[+]
      * code = #R55
      * display = "Syncope and collapse"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE10
    * display = "Hepatomegaly"
    * target[+]
      * code = #R16
      * display = "Hepatomegaly and splenomegaly, not elsewhere classified"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.B11.DE12
    * display = "Unconscious"
    * target[+]
      * code = #R40.2
      * display = "Coma, unspecified"
      * equivalence = #equivalent

