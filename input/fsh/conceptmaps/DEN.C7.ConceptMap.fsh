Instance: DENC7ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.C7 Initial Management ConceptMap"
Description: "Mapping between DEN.C7 Initial Management Data Elements and standard terminologies (SNOMED CT)."
* url = "https://smart.who.int/den/ConceptMap/DEN.C7.ConceptMap"
* id = "DEN.C7.ConceptMap"
* version = "0.1.0"
* name = "DEN_C7_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/ValueSet/DENConcepts"

* group[+]
  * source = $DENConcepts
  * target = $SCT
  * element[+]
    * code = #DEN.C7.1.DE1
    * display = "Starts hydration"
    * target[+]
      * code = #243221009
      * display = "Rehydration therapy (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C7.1.DE2
    * display = "Oral hydration"
    * target[+]
      * code = #243222002
      * display = "Oral rehydration therapy (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C7.1.DE3
    * display = "IV hydration"
    * target[+]
      * code = #1290011002
      * display = "Intravenous rehydration therapy (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C7.1.DE4
    * display = "No hydration"
    * target[+]
      * code = #262001002
      * display = "None used (qualifier value)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C7.2.DE2
    * display = "Ambulatory care"
    * target[+]
      * code = #35971002
      * display = "Ambulatory care site (environment)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C7.2.DE3
    * display = "In-Hospital care"
    * target[+]
      * code = #702881000
      * display = "Medical day care (environment)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C7.2.DE4
    * display = "Hospital care"
    * target[+]
      * code = #45131006
      * display = "Primary care hospital (environment)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C7.2.DE5
    * display = "Intensive care (ICU)"
    * target[+]
      * code = #309904001
      * display = "Intensive care unit (environment)"
      * equivalence = #equivalent
