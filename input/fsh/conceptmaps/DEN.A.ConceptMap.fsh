Instance: DENAConceptMap
InstanceOf: ConceptMap
Usage: #definition
Title: "DEN.A Registration ConceptMap"
Description: "Mapping between DEN.A Registration Data Elements and standard terminologies (SNOMED CT, LOINC, ICD-11), establishing semantic equivalences according to the WHO Dengue DAK."
* url = "https://smart.who.int/den/ConceptMap/DEN.A.ConceptMap"
* id = "DEN.A.ConceptMap"
* version = "0.1.0"
* name = "DEN_A_ConceptMap"
* status = #draft
* experimental = true
* publisher = "World Health Organization"
* sourceCanonical = "https://smart.who.int/den/ValueSet/DENConcepts"

// =============================================================================
// Group 1: DAK DEN Concepts -> SNOMED CT
// =============================================================================
* group[+]
  * source = $DENConcepts
  * target = $SCT

  * element[+]
    * code = #DEN.A2.DE1
    * display = "Unique identification"

  * element[+]
    * code = #DEN.A2.DE2
    * display = "First name"
    * target[+]
      * code = #184095009
      * display = "Patient forename (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE3
    * display = "Last name"
    * target[+]
      * code = #184096005
      * display = "Patient surname (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE4
    * display = "Visit date"
    * target[+]
      * code = #406543005
      * display = "Date of visit (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE5
    * display = "Date of birth"
    * target[+]
      * code = #184099003
      * display = "Date of birth (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE6
    * display = "Age"
    * target[+]
      * code = #424144002
      * display = "Current chronological age (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE8
    * display = "Female"
    * target[+]
      * code = #446141000124107
      * display = "Identifies as female gender (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE9
    * display = "Male"
    * target[+]
      * code = #446151000124109
      * display = "Identifies as male gender (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE10
    * display = "Transgender male"
    * target[+]
      * code = #407377005
      * display = "Female-to-male transsexual (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE11
    * display = "Transgender female"
    * target[+]
      * code = #407376001
      * display = "Male-to-female transsexual (finding)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE12
    * display = "Other"
    * target[+]
      * code = #33791000087105
      * display = "Identifies as nonbinary gender (finding)"
      * equivalence = #narrower
      * comment = "The DAK category 'Other' may include additional identities; this target represents only nonbinary gender identity."

  * element[+]
    * code = #DEN.A2.DE13
    * display = "Other (specify)"
    * target[+]
      * code = #33821000087103
      * display = "Gender identity (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE14
    * display = "Address"
    * target[+]
      * code = #184097001
      * display = "Patient address (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE15
    * display = "Mobile phone number"
    * target[+]
      * code = #734005006
      * display = "Telephone number (property) (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE16
    * display = "Alternative contact's name"
    * target[+]
      * code = #70862002
      * display = "Contact person (person)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE17
    * display = "Alternative contact's phone number"
    * target[+]
      * code = #734005006
      * display = "Telephone number (property) (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE18
    * display = "Mother´s name"
    * target[+]
      * code = #72705000
      * display = "Mother (person)"
      * equivalence = #equivalent

// =============================================================================
// Group 2: DAK DEN Concepts -> LOINC
// =============================================================================
* group[+]
  * source = $DENConcepts
  * target = $LNC

  * element[+]
    * code = #DEN.A2.DE2
    * display = "First name"
    * target[+]
      * code = #45392-8
      * display = "First Name"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE3
    * display = "Last name"
    * target[+]
      * code = #45394-4
      * display = "Last Name"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE4
    * display = "Visit date"
    * target[+]
      * code = #21975-8
      * display = "Date last contact"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE5
    * display = "Date of birth"
    * target[+]
      * code = #21112-8
      * display = "Birth date"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE6
    * display = "Age"
    * target[+]
      * code = #63900-5
      * display = "Current age or age at death"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE8
    * display = "Female"
    * target[+]
      * code = #76691-5
      * display = "Gender identity"
      * equivalence = #wider

  * element[+]
    * code = #DEN.A2.DE9
    * display = "Male"
    * target[+]
      * code = #76691-5
      * display = "Gender identity"
      * equivalence = #wider

  * element[+]
    * code = #DEN.A2.DE10
    * display = "Transgender male"
    * target[+]
      * code = #76691-5
      * display = "Gender identity"
      * equivalence = #wider

  * element[+]
    * code = #DEN.A2.DE11
    * display = "Transgender female"
    * target[+]
      * code = #76691-5
      * display = "Gender identity"
      * equivalence = #wider

  * element[+]
    * code = #DEN.A2.DE12
    * display = "Other"
    * target[+]
      * code = #76691-5
      * display = "Gender identity"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE13
    * display = "Other (specify)"
    * target[+]
      * code = #76691-5
      * display = "Gender identity"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE14
    * display = "Address"
    * target[+]
      * code = #56799-0
      * display = "Address"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE15
    * display = "Mobile phone number"
    * target[+]
      * code = #42077-8
      * display = "Patient phone number"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE16
    * display = "Alternative contact's name"
    * target[+]
      * code = #89059-0
      * display = "Secondary contact name"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE17
    * display = "Alternative contact's phone number"
    * target[+]
      * code = #89060-8
      * display = "Contact Phone number"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE18
    * display = "Mother´s name"
    * target[+]
      * code = #74025-8
      * display = "Mother identifier"
      * equivalence = #equivalent

// =============================================================================
// Group 3: DAK DEN Concepts -> ICD-11
// =============================================================================
* group[+]
  * source = $DENConcepts
  * target = $ICD11

  * element[+]
    * code = #DEN.A2.DE10
    * display = "Transgender male"
    * target[+]
      * code = #HA60
      * display = "Gender incongruence of adolescence or adulthood"
      * equivalence = #equivalent

  * element[+]
    * code = #DEN.A2.DE11
    * display = "Transgender female"
    * target[+]
      * code = #HA60
      * display = "Gender incongruence of adolescence or adulthood"
      * equivalence = #equivalent

// =============================================================================
// Group 4: Cross-Terminology Mappings: LOINC -> SNOMED CT
// =============================================================================
* group[+]
  * source = $LNC
  * target = $SCT

  * element[+]
    * code = #45392-8
    * display = "First Name"
    * target[+]
      * code = #184095009
      * display = "Patient forename (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #45394-4
    * display = "Last Name"
    * target[+]
      * code = #184096005
      * display = "Patient surname (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #21975-8
    * display = "Date last contact"
    * target[+]
      * code = #406543005
      * display = "Date of visit (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #21112-8
    * display = "Birth date"
    * target[+]
      * code = #184099003
      * display = "Date of birth (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #63900-5
    * display = "Current age or age at death"
    * target[+]
      * code = #424144002
      * display = "Current chronological age (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #76691-5
    * display = "Gender identity"
    * target[+]
      * code = #33821000087103
      * display = "Gender identity (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #56799-0
    * display = "Address"
    * target[+]
      * code = #184097001
      * display = "Patient address (observable entity)"
      * equivalence = #equivalent

  * element[+]
    * code = #42077-8
    * display = "Patient phone number"
    * target[+]
      * code = #734005006
      * display = "Telephone number (property) (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #89059-0
    * display = "Secondary contact name"
    * target[+]
      * code = #70862002
      * display = "Contact person (person)"
      * equivalence = #equivalent

  * element[+]
    * code = #89060-8
    * display = "Contact Phone number"
    * target[+]
      * code = #734005006
      * display = "Telephone number (property) (qualifier value)"
      * equivalence = #equivalent

  * element[+]
    * code = #74025-8
    * display = "Mother identifier"
    * target[+]
      * code = #72705000
      * display = "Mother (person)"
      * equivalence = #equivalent

// =============================================================================
// Group 5: Cross-Terminology Mappings: ICD-11 -> SNOMED CT
// =============================================================================
* group[+]
  * source = $ICD11
  * target = $SCT

  * element[+]
    * code = #HA60
    * display = "Gender incongruence of adolescence or adulthood"
    * target[+]
      * code = #446151000124109
      * display = "Identifies as male gender (finding)"
      * equivalence = #narrower
      * comment = "This target captures the male gender identity subtype within the broader ICD-11 category."

  * element[+]
    * code = #HA60
    * display = "Gender incongruence of adolescence or adulthood"
    * target[+]
      * code = #446141000124107
      * display = "Identifies as female gender (finding)"
      * equivalence = #narrower
      * comment = "This target captures the female gender identity subtype within the broader ICD-11 category."

