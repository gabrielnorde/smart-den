Logical: DENC9ReferToComplexServices
Id: DEN.C9
Title: "DEN.C9. Refer to complex services"
Description: "Data elements for the DEN.C9. Refer to complex services Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_C9_Refer_complex_services"
* ^version = "0.1.0"

* emergencyReferral 1..1 boolean "Emergency referral" "Referral for urgent care"
  * ^code[+] = $DENConcepts#DEN.C9.DE1 "Emergency referral"
  * ^code[+] = $LNC#39269-6 "Follow-up (referred to) provider/specialist, provider type"
  * ^code[+] = $SCT#134403003 "Referral to emergency clinic (procedure)"
  * ^comment = "Required: R."

* anyTreatmentGivenBeforeReferral 1..1 boolean "Any treatment given before referral?" "If patient was referred, was any treatment provided before referral?"
  * ^code[+] = $DENConcepts#DEN.C9.DE2 "Any treatment given before referral?"
  * ^code[+] = $LNC#34484-6 "Administered medication, time administration started"
  * ^comment = "Required: R. Editable: No."

* locationOfReferral 1..1 string "Location of referral" "Where the client is being referred to"
  * ^code[+] = $DENConcepts#DEN.C9.DE3 "Location of referral"
  * ^code[+] = $LNC#39270-4 "Follow-up (referred to) provider/specialist, address"
  * ^code[+] = $SCT#246267002 "Location (attribute)"
  * ^comment = "Validation: Should come from facility registry list. Required: R."

* dateReferralWasMade 1..1 dateTime "Date referral was made" "The date the referral was made"
  * ^code[+] = $DENConcepts#DEN.C9.DE4 "Date referral was made"
  * ^code[+] = $LNC#57202-4 "Date of referral"
  * ^code[+] = $SCT#439272007 "Date of procedure (observable entity)"
  * ^comment = "Quantity sub-type: contact date. Required: R. Editable: No."

* providersFacility 1..1 string "Provider's facility" "Facility client is being referred from"
  * ^code[+] = $DENConcepts#DEN.C9.DE5 "Provider's facility"
  * ^code[+] = $SCT#257622000 "Healthcare facility (environment)"
  * ^comment = "Quantity sub-type: Same as end-user's profile. Required: R. Editable: No."

* providersTelephoneNumber 1..1 string "Provider's telephone number" "The contact details of the provider making the referral"
  * ^code[+] = $DENConcepts#DEN.C9.DE6 "Provider's telephone number"
  * ^code[+] = $LNC#81230-5 "Referring physician phone number"
  * ^code[+] = $SCT#734005006 "Telephone number (property) (qualifier value)"
  * ^comment = "Quantity sub-type: Integer quantity. Represented as string. Required: R. Editable: No."

* referralNotes 1..1 string "Referral notes" "Any additional relevant details of clinical significance for the referral facility to provide continuity of care"
  * ^code[+] = $DENConcepts#DEN.C9.DE7 "Referral notes"
  * ^code[+] = $LNC#57133-1 "Referral note"
  * ^code[+] = $SCT#721927009 "Referral note (record artifact)"
  * ^comment = "Required: R."

