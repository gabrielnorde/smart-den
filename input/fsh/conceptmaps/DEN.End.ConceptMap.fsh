Instance: DENEndConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.End End of Follow-up ConceptMap"
Description: "Mapping between DEN.End End of Follow-up Data Elements and standard terminologies (SNOMED CT, LOINC)."
* url = "https://smart.who.int/den/ConceptMap/DEN.End.ConceptMap"
* version = "0.1.0"
* name = "DEN_End_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/StructureDefinition/DEN.End"

* group[+]
  * source = $DENConcepts
  * target = $SCT
  * element[+]
    * code = #DEN.End.3
    * display = "Lost to follow-up"
    * target[+]
      * code = #399307001
      * display = "Lost to follow-up (finding)"
      * equivalence = #equivalent

* group[+]
  * source = $DENConcepts
  * target = $LNC
  * element[+]
    * code = #DEN.End.2
    * display = "Death"
    * target[+]
      * code = #81954-0
      * display = "Date of death [Date]"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.End.3
    * display = "Lost to follow-up"
    * target[+]
      * code = #45237-5
      * display = "Date lost to HIV treatment follow-up"
      * equivalence = #equivalent
