Logical: DENA
Id: DEN.A
Title: "DEN.A. Registration"
Description: "Data elements for the DEN.A. Registration Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_A"
* ^version = "0.1.0"

// DEN.A1. Arrive at facility - No data is recorded during this activity

// DEN.A2. Gather client details
* uniqueIdentification 1..1 string "Unique identification" "Unique identifier generated (SUS card number)"
  * ^code[+] = $DENConcepts#DEN.A2.DE1 "Unique identification"
  * ^code[+] = $SCT#900000000000474000 "Universally Unique Identifier (foundation metadata concept)"
  * ^comment = "Validation condition: 15 characters (only numbers), based on local policy. Editable: No. Required: R."

* firstName 1..1 string "First name" "Client's first name"
  * ^code[+] = $DENConcepts#DEN.A2.DE2 "First name"
  * ^code[+] = $LNC#45392-8 "First Name"
  * ^code[+] = $SCT#184095009 "Patient forename (observable entity)"
  * ^comment = "Validation condition: Only letters and special characters (period, dash) allowed. Editable: Yes. Required: R."

* lastName 1..1 string "Last name" "Client's family name or last name"
  * ^code[+] = $DENConcepts#DEN.A2.DE3 "Last name"
  * ^code[+] = $LNC#45394-4 "Last Name"
  * ^code[+] = $SCT#184096005 "Patient surname (observable entity)"
  * ^comment = "Validation condition: Only letters and special characters (full stop/period, dash) allowed. Editable: Yes. Required: R."

* visitDate 1..1 dateTime "Visit date" "The date and time of the client's contact"
  * ^code[+] = $DENConcepts#DEN.A2.DE4 "Visit date"
  * ^code[+] = $LNC#21975-8 "Date last contact"
  * ^code[+] = $SCT#406543005 "Date of visit (observable entity)"
  * ^comment = "Validation condition: DateTime <= Current DateTime. Editable: Yes. Required: R. Note: The encounter date may be system generated, but there is a requirement to be able to back-enter data."

* dateOfBirth 0..1 date "Date of birth" "The client's date of birth (DOB), if known"
  * ^code[+] = $DENConcepts#DEN.A2.DE5 "Date of birth"
  * ^code[+] = $LNC#21112-8 "Birth date"
  * ^code[+] = $SCT#184099003 "Date of birth (observable entity)"
  * ^comment = "Required: Conditional (C). Editable: Yes."

* age 0..1 Quantity "Age" "Age (number of years) of the client based on date of birth"
  * ^code[+] = $DENConcepts#DEN.A2.DE6 "Age"
  * ^code[+] = $LNC#63900-5 "Current age or age at death"
  * ^code[+] = $SCT#424144002 "Current chronological age (observable entity)"
  * ^comment = "Calculation: ('Visit date' - 'Date of birth') / 365.25. Quantity sub-type: Duration. Required: Conditional (C). Editable: N/A."

* gender 1..1 code "Gender" "Gender of the client"
  * ^code[+] = $DENConcepts#DEN.A2.DE7 "Gender"
* gender from DENA2DE7 (required)
  * ^comment = "Multiple Choice: Select one. Data Type in DAK: Coding. Options include Female (DEN.A2.DE8), Male (DEN.A2.DE9), Transgender male (DEN.A2.DE10), Transgender female (DEN.A2.DE11), Other (DEN.A2.DE12). Editable: Yes. Required: R."

* genderOtherSpecify 0..1 string "Other (specify)" "Additional category (please specify)"
  * ^code[+] = $DENConcepts#DEN.A2.DE13 "Other (specify)"
  * ^code[+] = $LNC#76691-5 "Gender identity"
  * ^code[+] = $SCT#33821000087103 "Gender identity (observable entity)"
  * ^comment = "Associated with option 'Other' (DEN.A2.DE12). Additional category (please specify). Data Type: String."

* address 1..1 string "Address" "Client's home address or address that the client is consenting to disclose"
  * ^code[+] = $DENConcepts#DEN.A2.DE14 "Address"
  * ^code[+] = $LNC#56799-0 "Address"
  * ^code[+] = $SCT#184097001 "Patient address (observable entity)"
  * ^comment = "Note: Also unknown. Editable: Yes. Required: R."

* mobilePhoneNumber 1..1 string "Mobile phone number" "Client's mobile phone number"
  * ^code[+] = $DENConcepts#DEN.A2.DE15 "Mobile phone number"
  * ^code[+] = $LNC#42077-8 "Patient phone number"
  * ^code[+] = $SCT#734005006 "Telephone number (property) (qualifier value)"
  * ^comment = "Quantity sub-type: Integer quantity. Represented as string to preserve phone number formatting and leading zeroes. Editable: Yes. Required: R."

* alternativeContactName 0..1 string "Alternative contact's name" "Name of an alternative contact, which could be next of kin (e.g. partner, mother, sibling); the alternative contact would be used in the case of an emergency situation"
  * ^code[+] = $DENConcepts#DEN.A2.DE16 "Alternative contact's name"
  * ^code[+] = $LNC#89059-0 "Secondary contact name"
  * ^code[+] = $SCT#70862002 "Contact person (person)"
  * ^comment = "Validation condition: Only letters and special characters (full stop/period, dash) allowed. Editable: Yes. Required: O."

* alternativeContactPhoneNumber 0..1 string "Alternative contact's phone number" "Phone number of the alternative contact"
  * ^code[+] = $DENConcepts#DEN.A2.DE17 "Alternative contact's phone number"
  * ^code[+] = $LNC#89060-8 "Contact Phone number"
  * ^code[+] = $SCT#734005006 "Telephone number (property) (qualifier value)"
  * ^comment = "Quantity sub-type: Integer quantity. Represented as string. Editable: Yes. Required: O."

* mothersName 1..1 string "Mother's name" "Client's mother name"
  * ^code[+] = $DENConcepts#DEN.A2.DE18 "Mother´s name"
  * ^code[+] = $LNC#74025-8 "Mother identifier"
  * ^code[+] = $SCT#72705000 "Mother (person)"
  * ^comment = "Validation condition: Only letters and special characters (full stop/period, dash) allowed. Note: for notification purpose. Editable: Yes. Required: R."

// DEN.A3. Search for clients - No data is recorded during this activity
// DEN.A4. Create client record - No data is recorded during this activity
// DEN.A5. Validate client details - No data is recorded during this activity
// DEN.A6. Check in client - No data is recorded during this activity

