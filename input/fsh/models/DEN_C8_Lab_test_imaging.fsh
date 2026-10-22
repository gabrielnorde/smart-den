Logical: DENC8LabTestImaging
Id: DEN.C8
Title: "DEN C8. Lab test & imaging"
Description: "Data elements for the DEN C8. Lab test & imaging Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^url = "https://smart.who.int/den/StructureDefinition/DEN.C8"
* ^type = "https://smart.who.int/den/StructureDefinition/DENC8"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_C8_Lab_test_imaging"
* ^version = "0.1.0"

// DEN.C8. Order Complementary exams (1)
* orderComplementaryExams 1..* code "Order Complementary exams" "First laboratory test order"
  * ^code[+] = $DENConcepts#DEN.C8.DE1 "Order Complementary exams"
* orderComplementaryExams from DENC8DE1 (required)
  * ^comment = "Select all that apply. Options: Complete blood count (DEN.C8.DE2), Hematocrit (DEN.C8.DE3), Platelet count (DEN.C8.DE4), Dengue PCR (DEN.C8.DE5), Dengue serology (DEN.C8.DE6). Required: R."

* orderComplementaryExams2 1..* code "Order Complementary exams (2)" "Second laboratory test order"
  * ^code[+] = $DENConcepts#DEN.C8.DE7 "Order Complementary exams (2)"
* orderComplementaryExams2 from DENC8DE7 (required)
  * ^comment = "Select all that apply. Options: CBC (DEN.C8.DE8), Hematocrit (DEN.C8.DE9), Platelet count (DEN.C8.DE10). Required: R."

* orderComplementaryExams3 1..* code "Order Complementary exams (3)" "Third laboratory test order"
  * ^code[+] = $DENConcepts#DEN.C8.DE11 "Order Complementary exams (3)"
* orderComplementaryExams3 from DENC8DE11 (required)
  * ^comment = "Select all that apply. Options: CBC (DEN.C8.DE12), Hematocrit (DEN.C8.DE13), Platelet count (DEN.C8.DE14). Required: R."

* orderComplementaryExams4 1..* code "Order Complementary exams (4)" "Fourth laboratory test order"
  * ^code[+] = $DENConcepts#DEN.C8.DE15 "Order Complementary exams (4)"
* orderComplementaryExams4 from DENC8DE15 (required)
  * ^comment = "Select all that apply. Options: CBC (DEN.C8.DE16), Hematocrit (DEN.C8.DE17), Platelet count (DEN.C8.DE18). Required: R."

* orderComplementaryExams5 1..* code "Order Complementary exams (5)" "Fifth laboratory test order"
  * ^code[+] = $DENConcepts#DEN.C8.DE19 "Order Complementary exams (5)"
* orderComplementaryExams5 from DENC8DE19 (required)
  * ^comment = "Select all that apply. Options: CBC (DEN.C8.DE20), Hematocrit (DEN.C8.DE21), Platelet count (DEN.C8.DE22). Required: R."

* orderComplementaryExams6 1..* code "Order Complementary exams (6)" "Sixth laboratory test order"
  * ^code[+] = $DENConcepts#DEN.C8.DE23 "Order Complementary exams (6)"
* orderComplementaryExams6 from DENC8DE23 (required)
  * ^comment = "Select all that apply. Options: CBC (DEN.C8.DE24), Hematocrit (DEN.C8.DE25), Platelet count (DEN.C8.DE26). Required: R."

* orderComplementaryExams7 1..* code "Order Complementary exams (7)" "Seventh laboratory test order"
  * ^code[+] = $DENConcepts#DEN.C8.DE27 "Order Complementary exams (7)"
* orderComplementaryExams7 from DENC8DE27 (required)
  * ^comment = "Select all that apply. Options: CBC (DEN.C8.DE28), Hematocrit (DEN.C8.DE29), Platelet count (DEN.C8.DE30). Required: R."

// Results (1)
* hematocritHtResults1 0..1 Quantity "Hematocrit (Ht) results (1)" "Hematocrit percentage (first reading)"
  * ^code[+] = $DENConcepts#DEN.C8.DE31 "Hematocrit (Ht) results (1)"
  * ^code[+] = $LNC#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
  * ^code[+] = $SCT#365616005 "Finding of hematocrit (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity. Required: C."

* plateletCountResults1 0..1 Quantity "Platelet count results (1)" "Quantitative platelet count (first reading)"
  * ^code[+] = $DENConcepts#DEN.C8.DE32 "Platelet count results (1)"
  * ^code[+] = $LNC#26515-7 "Platelets [#/volume] in Blood"
  * ^code[+] = $SCT#365632008 "Finding of platelet count (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity."

* dengueVirusSerologyResults 0..1 string "Dengue virus serology results" "Results of dengue virus serology test"
  * ^code[+] = $DENConcepts#DEN.C8.DE33 "Dengue virus serology results"

* denguePcrResults 0..1 string "Dengue PCR results" "Results of dengue PCR test"
  * ^code[+] = $DENConcepts#DEN.C8.DE34 "Dengue PCR results"

// Results (2)
* hematocritHtResults2 0..1 Quantity "Hematocrit (Ht) results (2)" "Results of second hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE35 "Hematocrit (Ht) results (2)"
  * ^code[+] = $LNC#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
  * ^code[+] = $SCT#365616005 "Finding of hematocrit (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity. Required: C."

* plateletCountResults2 0..1 Quantity "Platelet count results (2)" "Results of second quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE36 "Platelet count results (2)"
  * ^code[+] = $LNC#26515-7 "Platelets [#/volume] in Blood"
  * ^code[+] = $SCT#365632008 "Finding of platelet count (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity."

// Results (3)
* hematocritHtResults3 0..1 Quantity "Hematocrit (Ht) results (3)" "Results of third hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE37 "Hematocrit (Ht) results (3)"
  * ^code[+] = $LNC#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
  * ^code[+] = $SCT#365616005 "Finding of hematocrit (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity. Required: C."

* plateletCountResults3 0..1 Quantity "Platelet count results (3)" "Results of third quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE38 "Platelet count results (3)"
  * ^code[+] = $LNC#26515-7 "Platelets [#/volume] in Blood"
  * ^code[+] = $SCT#365632008 "Finding of platelet count (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity."

// Results (4)
* hematocritHtResults4 0..1 Quantity "Hematocrit (Ht) results (4)" "Results of fourth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE39 "Hematocrit (Ht) results (4)"
  * ^code[+] = $LNC#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
  * ^code[+] = $SCT#365616005 "Finding of hematocrit (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity. Required: C."

* plateletCountResults4 0..1 Quantity "Platelet count results (4)" "Results of fourth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE40 "Platelet count results (4)"
  * ^code[+] = $LNC#26515-7 "Platelets [#/volume] in Blood"
  * ^code[+] = $SCT#365632008 "Finding of platelet count (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity."

// Results (5)
* hematocritHtResults5 0..1 Quantity "Hematocrit (Ht) results (5)" "Results of fifth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE41 "Hematocrit (Ht) results (5)"
  * ^code[+] = $LNC#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
  * ^code[+] = $SCT#365616005 "Finding of hematocrit (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity. Required: C."

* plateletCountResults5 0..1 Quantity "Platelet count results (5)" "Results of fifth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE42 "Platelet count results (5)"
  * ^code[+] = $LNC#26515-7 "Platelets [#/volume] in Blood"
  * ^code[+] = $SCT#365632008 "Finding of platelet count (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity."

// Results (6)
* hematocritHtResults6 0..1 Quantity "Hematocrit (Ht) results (6)" "Results of sixth hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE43 "Hematocrit (Ht) results (6)"
  * ^code[+] = $LNC#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
  * ^code[+] = $SCT#365616005 "Finding of hematocrit (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity. Required: C."

* plateletCountResults6 0..1 Quantity "Platelet count results (6)" "Results of sixth quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE44 "Platelet count results (6)"
  * ^code[+] = $LNC#26515-7 "Platelets [#/volume] in Blood"
  * ^code[+] = $SCT#365632008 "Finding of platelet count (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity."

// Results (7)
* hematocritHtResults7 0..1 Quantity "Hematocrit (Ht) results (7)" "Results of seventh hematocrit percentage"
  * ^code[+] = $DENConcepts#DEN.C8.DE45 "Hematocrit (Ht) results (7)"
  * ^code[+] = $LNC#20570-8 "Hematocrit [Volume Fraction] of Blood by calculation"
  * ^code[+] = $SCT#365616005 "Finding of hematocrit (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity. Required: C."

* plateletCountResults7 0..1 Quantity "Platelet count results (7)" "Results of seventh quantitative platelet count"
  * ^code[+] = $DENConcepts#DEN.C8.DE46 "Platelet count results (7)"
  * ^code[+] = $LNC#26515-7 "Platelets [#/volume] in Blood"
  * ^code[+] = $SCT#365632008 "Finding of platelet count (finding)"
  * ^comment = "Quantity sub-type: Decimal quantity."

