Instance: DENC9ConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.C9 Refer to Complex Services ConceptMap"
Description: "Mapping between DEN.C9 Refer to Complex Services Data Elements and standard terminologies (SNOMED CT, LOINC)."
* url = "https://smart.who.int/den/ConceptMap/DEN.C9.ConceptMap"
* version = "0.1.0"
* name = "DEN_C9_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/StructureDefinition/DEN.C9"

* group[+]
  * source = $DENConcepts
  * target = $SCT
  * element[+]
    * code = #DEN.C9.DE1
    * display = "Emergency referral"
    * target[+]
      * code = #134403003
      * display = "Referral to emergency clinic (procedure)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE3
    * display = "Location of referral"
    * target[+]
      * code = #246267002
      * display = "Location (attribute)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE4
    * display = "Date referral was made"
    * target[+]
      * code = #439272007
      * display = "Date of procedure (observable entity)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE5
    * display = "Provider's facility"
    * target[+]
      * code = #257622000
      * display = "Healthcare facility (environment)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE6
    * display = "Provider's telephone number"
    * target[+]
      * code = #734005006
      * display = "Telephone number (property) (qualifier value)"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE7
    * display = "Referral notes"
    * target[+]
      * code = #721927009
      * display = "Referral note (record artifact)"
      * equivalence = #equivalent

* group[+]
  * source = $DENConcepts
  * target = $LNC
  * element[+]
    * code = #DEN.C9.DE1
    * display = "Emergency referral"
    * target[+]
      * code = #39269-6
      * display = "Follow-up (referred to) provider/specialist, provider type [CPHS]"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE2
    * display = "Any treatment given before referral?"
    * target[+]
      * code = #34484-6
      * display = "Administered medication, time administration started"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE3
    * display = "Location of referral"
    * target[+]
      * code = #39270-4
      * display = "Follow-up (referred to) provider/specialist, address [CPHS]"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE4
    * display = "Date referral was made"
    * target[+]
      * code = #57202-4
      * display = "Date of referral"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE6
    * display = "Provider's telephone number"
    * target[+]
      * code = #81230-5
      * display = "Referring physician phone number"
      * equivalence = #equivalent
  * element[+]
    * code = #DEN.C9.DE7
    * display = "Referral notes"
    * target[+]
      * code = #57133-1
      * display = "Referral note"
      * equivalence = #equivalent
