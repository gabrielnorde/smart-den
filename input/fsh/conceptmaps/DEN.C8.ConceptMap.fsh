Instance: DENC8ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.C8 Lab Test & Imaging ConceptMap"
Description: "Mapping between DEN.C8 Lab Test & Imaging Data Elements and standard terminologies (SNOMED CT, LOINC)."
* url = "https://smart.who.int/den/ConceptMap/DEN.C8.ConceptMap"
* version = "0.1.0"
* name = "DEN_C8_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/StructureDefinition/DEN.C8"

* group[+]
  * source = $DENConcepts
  * target = $SCT
  * element[+]
    * code = #DEN.C8.DE2
    * display = "Complete blood count test (1)"
    * target[+]
      * code = #26604007
      * display = "Complete blood count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE3
    * display = "Hematocrit (1)"
    * target[+]
      * code = #28317006
      * display = "Hematocrit determination (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE4
    * display = "Platelet count (1)"
    * target[+]
      * code = #61928009
      * display = "Platelet count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE5
    * display = "Dengue PCR"
    * target[+]
      * code = #399302007
      * display = "Polymerase chain reaction test for Dengue virus (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE6
    * display = "Dengue virus serology"
    * target[+]
      * code = #222551000000108
      * display = "Dengue virus serology (procedure)"
      * equivalence = #equivalent

  // Round 2
  * element[+]
    * code = #DEN.C8.DE8
    * display = "Complete blood count test (2)"
    * target[+]
      * code = #26604007
      * display = "Complete blood count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE9
    * display = "Hematocrit (2)"
    * target[+]
      * code = #28317006
      * display = "Hematocrit determination (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE10
    * display = "Platelet count (2)"
    * target[+]
      * code = #61928009
      * display = "Platelet count (procedure)"
      * equivalence = #equivalent

  // Round 3
  * element[+]
    * code = #DEN.C8.DE12
    * display = "Complete blood count test (3)"
    * target[+]
      * code = #26604007
      * display = "Complete blood count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE13
    * display = "Hematocrit (3)"
    * target[+]
      * code = #28317006
      * display = "Hematocrit determination (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE14
    * display = "Platelet count (3)"
    * target[+]
      * code = #61928009
      * display = "Platelet count (procedure)"
      * equivalence = #equivalent

  // Round 4
  * element[+]
    * code = #DEN.C8.DE16
    * display = "Complete blood count test (4)"
    * target[+]
      * code = #26604007
      * display = "Complete blood count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE17
    * display = "Hematocrit (4)"
    * target[+]
      * code = #28317006
      * display = "Hematocrit determination (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE18
    * display = "Platelet count (4)"
    * target[+]
      * code = #61928009
      * display = "Platelet count (procedure)"
      * equivalence = #equivalent

  // Round 5
  * element[+]
    * code = #DEN.C8.DE20
    * display = "Complete blood count test (5)"
    * target[+]
      * code = #26604007
      * display = "Complete blood count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE21
    * display = "Hematocrit (5)"
    * target[+]
      * code = #28317006
      * display = "Hematocrit determination (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE22
    * display = "Platelet count (5)"
    * target[+]
      * code = #61928009
      * display = "Platelet count (procedure)"
      * equivalence = #equivalent

  // Round 6
  * element[+]
    * code = #DEN.C8.DE24
    * display = "Complete blood count test (6)"
    * target[+]
      * code = #26604007
      * display = "Complete blood count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE25
    * display = "Hematocrit (6)"
    * target[+]
      * code = #28317006
      * display = "Hematocrit determination (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE26
    * display = "Platelet count (6)"
    * target[+]
      * code = #61928009
      * display = "Platelet count (procedure)"
      * equivalence = #equivalent

  // Round 7
  * element[+]
    * code = #DEN.C8.DE28
    * display = "Complete blood count test (7)"
    * target[+]
      * code = #26604007
      * display = "Complete blood count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE29
    * display = "Hematocrit (7)"
    * target[+]
      * code = #28317006
      * display = "Hematocrit determination (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE30
    * display = "Platelet count (7)"
    * target[+]
      * code = #61928009
      * display = "Platelet count (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE31
    * display = "Hematocrit (Ht) results (1)"
    * target[+]
      * code = #365616005
      * display = "Finding of hematocrit (finding)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE32
    * display = "Platelet count results (1)"
    * target[+]
      * code = #365632008
      * display = "Finding of platelet count (finding)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE33
    * display = "Dengue virus serology results"
    * target[+]
      * code = #996161000000105
      * display = "Dengue virus serology (observable entity)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE34
    * display = "Dengue PCR results"
    * target[+]
      * code = #1026631000000106
      * display = "Dengue polymerase chain reaction (observable entity)"
      * equivalence = #equivalent

* group[+]
  * source = $DENConcepts
  * target = $LNC
  * element[+]
    * code = #DEN.C8.DE3
    * display = "Hematocrit (1)"
    * target[+]
      * code = #20570-8
      * display = "Hematocrit [Volume Fraction] of Blood by calculation"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE4
    * display = "Platelet count (1)"
    * target[+]
      * code = #777-3
      * display = "Platelets [#/volume] in Blood by Automated count"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE5
    * display = "Dengue PCR"
    * target[+]
      * code = #88203-5
      * display = "Dengue virus 1 and 2 and 3 and 4 RNA [Identifier] in Serum or Blood by NAA with probe detection"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE6
    * display = "Dengue virus serology"
    * target[+]
      * code = #82519-0
      * display = "Dengue virus 1+3 and 2+4 panel - Serum by NAA with probe detection LHC-Forms"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE31
    * display = "Hematocrit (Ht) results (1)"
    * target[+]
      * code = #20570-8
      * display = "Hematocrit [Volume Fraction] of Blood by calculation"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C8.DE32
    * display = "Platelet count results (1)"
    * target[+]
      * code = #26515-7
      * display = "Platelets [#/volume] in Blood"
      * equivalence = #equivalent
