Instance: DENC46ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.C4-6 Diagnostic ConceptMap"
Description: "Mapping between DEN.C4-6 Diagnostic Data Elements and standard terminologies (SNOMED CT, ICD-11, ICD-10)."
* url = "https://smart.who.int/den/ConceptMap/DEN.C4-6.ConceptMap"
* version = "0.1.0"
* name = "DEN_C4_6_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/StructureDefinition/DEN.C4-6"

* group[+]
  * source = $DENConcepts
  * target = $SCT
  * element[+]
    * code = #DEN.C4.DE1
    * display = "Suspected dengue fever"
    * target[+]
      * code = #418429061000132101
      * display = "Suspected dengue (situation)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C4.DE2
    * display = "Confirmed dengue fever"
    * target[+]
      * code = #38362002
      * display = "Dengue (disorder)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE2
    * display = "Group A"
    * target[+]
      * code = #722862003
      * display = "Dengue without warning signs (disorder)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE3
    * display = "Group B"
    * target[+]
      * code = #722862003
      * display = "Dengue without warning signs (disorder)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE4
    * display = "Group C"
    * target[+]
      * code = #722863008
      * display = "Dengue with warning signs (disorder)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE5
    * display = "Group D"
    * target[+]
      * code = #722863008
      * display = "Dengue with warning signs (disorder)"
      * equivalence = #wider

* group[+]
  * source = $DENConcepts
  * target = $ICD11
  * element[+]
    * code = #DEN.C4.DE1
    * display = "Suspected dengue fever"
    * target[+]
      * code = #1D2Z
      * display = "Dengue fever, unspecified"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C4.DE2
    * display = "Confirmed dengue fever"
    * target[+]
      * code = #1D2Z
      * display = "Dengue fever, unspecified"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE2
    * display = "Group A"
    * target[+]
      * code = #1D20
      * display = "Dengue without warning signs"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE3
    * display = "Group B"
    * target[+]
      * code = #1D20
      * display = "Dengue without warning signs"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE4
    * display = "Group C"
    * target[+]
      * code = #1D21
      * display = "Dengue with warning signs"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE5
    * display = "Group D"
    * target[+]
      * code = #1D22
      * display = "Severe dengue"
      * equivalence = #equivalent

* group[+]
  * source = $DENConcepts
  * target = $ICD10
  * element[+]
    * code = #DEN.C4.DE1
    * display = "Suspected dengue fever"
    * target[+]
      * code = #A97.9
      * display = "Dengue, unspecified"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C4.DE2
    * display = "Confirmed dengue fever"
    * target[+]
      * code = #A97.9
      * display = "Dengue, unspecified"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE2
    * display = "Group A"
    * target[+]
      * code = #A97.0
      * display = "Dengue without warning signs"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE3
    * display = "Group B"
    * target[+]
      * code = #A97.0
      * display = "Dengue without warning signs"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE4
    * display = "Group C"
    * target[+]
      * code = #A97.1
      * display = "Dengue with warning signs"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C6.DE5
    * display = "Group D"
    * target[+]
      * code = #A97.2
      * display = "Severe Dengue"
      * equivalence = #equivalent
