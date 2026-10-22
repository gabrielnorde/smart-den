Instance: DENC3ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.C3 Physical Examination ConceptMap"
Description: "Mapping between DEN.C3 Physical Examination Data Elements and standard terminologies (SNOMED CT, LOINC, ICD-11, ICD-10)."
* url = "https://smart.who.int/den/ConceptMap/DEN.C3.ConceptMap"
* version = "0.1.0"
* name = "DEN_C3_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/StructureDefinition/DEN.C3"

* group[+]
  * source = $DENConcepts
  * target = $SCT
  * element[+]
    * code = #DEN.C3.DE3
    * display = "Hypotensive shock"
    * target[+]
      * code = #409671005
      * display = "Dengue shock syndrome (disorder)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C3.DE4
    * display = "Severe bleeding"
    * target[+]
      * code = #112648003
      * display = "Massive hemorrhage (morphologic abnormality)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C3.DE5
    * display = "Severe organ impairment"
    * target[+]
      * code = #57653000
      * display = "Multiple organ failure (disorder)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C3.DE6
    * display = "None danger signs"
    * target[+]
      * code = #14732006
      * display = "No history of (contextual qualifier) (qualifier value)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C3.DE7
    * display = "Quantity of oral intake"
    * target[+]
      * code = #251853006
      * display = "Oral fluid input (observable entity)"
      * equivalence = #equivalent

* group[+]
  * source = $DENConcepts
  * target = $LNC
  * element[+]
    * code = #DEN.C3.DE4
    * display = "Severe bleeding"
    * target[+]
      * code = #45703-6
      * display = "Internal bleeding [Minimum Data Set]"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C3.DE7
    * display = "Quantity of oral intake"
    * target[+]
      * code = #9007-06-01
      * display = "Fluid intake oral 24 hour"
      * equivalence = #equivalent

* group[+]
  * source = $DENConcepts
  * target = $ICD11
  * element[+]
    * code = #DEN.C3.DE3
    * display = "Hypotensive shock"
    * target[+]
      * code = #MG40
      * display = "Shock"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C3.DE4
    * display = "Severe bleeding"
    * target[+]
      * code = #MG27
      * display = "Haemorrhage, not elsewhere classified"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C3.DE5
    * display = "Severe organ impairment"
    * target[+]
      * code = #MG4A
      * display = "Multi organ failure"
      * equivalence = #equivalent

* group[+]
  * source = $DENConcepts
  * target = $ICD10
  * element[+]
    * code = #DEN.C3.DE3
    * display = "Hypotensive shock"
    * target[+]
      * code = #R57
      * display = "Shock, not elsewhere classified"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C3.DE4
    * display = "Severe bleeding"
    * target[+]
      * code = #R58
      * display = "Haemorrhage, not elsewhere classified"
      * equivalence = #equivalent
