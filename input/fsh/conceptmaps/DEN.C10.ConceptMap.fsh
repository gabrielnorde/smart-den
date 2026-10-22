Instance: DENC10ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.C10 Clinical Management ConceptMap"
Description: "Mapping between DEN.C10 Clinical Management Data Elements and standard terminologies (SNOMED CT)."
* url = "https://smart.who.int/den/ConceptMap/DEN.C10.ConceptMap"
* id = "DEN.C10.ConceptMap"
* version = "0.1.0"
* name = "DEN_C10_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/ValueSet/DENConcepts"

* group[+]
  * source = $DENConcepts
  * target = $SCT
  * element[+]
    * code = #DEN.C10.DE7
    * display = "Expansion phase 1"
    * target[+]
      * code = #21191007
      * display = "Phase (attribute)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C10.DE8
    * display = "Expansion phase 2"
    * target[+]
      * code = #21191007
      * display = "Phase (attribute)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C10.DE9
    * display = "Expansion phase 3"
    * target[+]
      * code = #21191007
      * display = "Phase (attribute)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C10.DE10
    * display = "Maintenance phase 1"
    * target[+]
      * code = #21191007
      * display = "Phase (attribute)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C10.DE11
    * display = "Maintenance phase 2"
    * target[+]
      * code = #21191007
      * display = "Phase (attribute)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C10.DE12
    * display = "Paracetamol"
    * target[+]
      * code = #387517004
      * display = "Paracetamol (substance)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C10.DE13
    * display = "Dipyrone"
    * target[+]
      * code = #22165008
      * display = "Metamizole sodium (substance)"
      * equivalence = #equivalent
