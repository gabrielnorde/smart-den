// -----------------------------------------------------------------------------
// Source worksheet: "DEN.C9. Refer to complex servic"

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENC9ReferToComplexServices
Id: DEN-C9-Refer-to-complex-services
Title: "DEN.C9. Refer to complex services"
Description: "Data elements for the DEN.C9. Refer to complex services Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.C9. Refer to complex services data dictionary."
* emergencyReferral 1..1 boolean "Emergency referral"
  "Referral for urgent care"
  * ^code[+] = $DENConcepts#DEN.C9.DE1
* anyTreatmentGivenBeforeReferral 1..1 boolean "Any treatment given before referral?"
  "If patient was referred, was any treatment provided before referral?"
  * ^code[+] = $DENConcepts#DEN.C9.DE2
* locationOfReferral 1..1 string "Location of referral"
  "Where the client is being referred to"
  * ^code[+] = $DENConcepts#DEN.C9.DE3
  * ^comment = "Validation: Should come from facility registry list."
* dateReferralWasMade 1..1 dateTime "Date referral was made"
  "The date the referral was made"
  * ^code[+] = $DENConcepts#DEN.C9.DE4
  * ^comment = "Quantity sub-type: =\"contact date\". | Validation: =\"contact date\"."
* providerSFacility 1..1 string "Provider's facility"
  "Facility client is being referred from"
  * ^code[+] = $DENConcepts#DEN.C9.DE5
  * ^comment = "Quantity sub-type: Same as end-user's profile. | Validation: Same as end-user's profile."
* providerSTelephoneNumber 1..1 string "Provider's telephone number"
  "The contact details of the provider making the referral"
  * ^code[+] = $DENConcepts#DEN.C9.DE6
  * ^comment = "Quantity sub-type: Same as end-user's profile. | Validation: Same as end-user's profile. | Calculation: Integer quantity. | Source specifies Quantity/integer, but telephone numbers are represented as string to preserve leading zeroes and formatting; confirm."
* referralNotes 1..1 string "Referral notes"
  "Any additional relevant details of clinical significance for the referral facility to provide continuity of care"
  * ^code[+] = $DENConcepts#DEN.C9.DE7
