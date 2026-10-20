// Draft Logical Model generated from the worksheet "DEN.A. Registration".
// Review before publication:
// - Confirm canonical URL in sushi-config.yaml.
// - Confirm WHO concept-code conventions with the DENConcepts CodeSystem.
// - Confirm cardinalities and terminology bindings with the DAK terminology team.
// - The gender answer options (DEN.A2.DE8–DE12) are treated as terminology concepts,
//   not as child fields of the primitive "gender" element. They should be represented
//   in the appropriate CodeSystem/ValueSet and bound to "gender".

Alias: $DENConcepts = https://smart.who.int/den/CodeSystem/den-custom-codes

Logical: DENRegistration
Id: DEN-A-Registration
Title: "DEN.A. Registration"
Description: "Data elements for the DEN.A. Registration Data Dictionary."
* ^status = #draft
* ^experimental = true
* ^publisher = "World Health Organization"
* ^purpose = "Computable logical representation of the DEN.A. Registration data dictionary."

// DEN.A1. Arrive at facility has no data elements recorded.

// DEN.A2. Gather client details
* uniqueIdentification 1..1 string "Unique identification"
  "Unique identifier generated (SUS card number)"
  * ^code[+] = $DENConcepts#DEN.A2.DE1
  * ^comment = "Validation: 15 characters, numeric only, based on local policy. Not editable."

* firstName 1..1 string "First name"
  "Client's first name"
  * ^code[+] = $DENConcepts#DEN.A2.DE2
  * ^comment = "Validation: only letters and special characters (period, dash) allowed."

* lastName 1..1 string "Last name"
  "Client's family name or last name"
  * ^code[+] = $DENConcepts#DEN.A2.DE3
  * ^comment = "Validation: only letters and special characters (period, dash) allowed."

* visitDate 1..1 dateTime "Visit date"
  "The date and time of the client's contact"
  * ^code[+] = $DENConcepts#DEN.A2.DE4
  * ^comment = "Validation: dateTime must be less than or equal to the current dateTime. May be system-generated, but back-entry must be supported."

* dateOfBirth 0..1 date "Date of birth"
  "The client's date of birth (DOB), if known"
  * ^code[+] = $DENConcepts#DEN.A2.DE5

* age 0..1 Quantity "Age"
  "Age (number of years) of the client based on date of birth"
  * ^code[+] = $DENConcepts#DEN.A2.DE6
  * ^comment = "Calculated element. Spreadsheet formula: (Visit date - Date of birth) / 365.25. Quantity sub-type: Duration."

* gender 1..1 code "Gender"
  "Gender of the client"
  * ^code[+] = $DENConcepts#DEN.A2.DE7
  * ^comment = "Single-choice element. Bind to a ValueSet containing the options DEN.A2.DE8 through DEN.A2.DE12. The ValueSet and its codes must be authored separately."

* genderOtherSpecify 0..1 string "Other (specify)"
  "Additional category (please specify)"
  * ^code[+] = $DENConcepts#DEN.A2.DE13
  * ^comment = "Associated with the 'Other' gender option; confirm conditionality and whether this should be a formal constraint."

* address 1..1 string "Address"
  "Client's home address or address that the client is consenting to disclose"
  * ^code[+] = $DENConcepts#DEN.A2.DE14
  * ^comment = "Spreadsheet note: also unknown."

* mobilePhoneNumber 1..1 string "Mobile phone number"
  "Client's mobile phone number"
  * ^code[+] = $DENConcepts#DEN.A2.DE15
  * ^comment = "The spreadsheet describes this as an integer quantity. Represented as string here to preserve leading zeroes and formatting; confirm this design decision."

* alternativeContactName 0..1 string "Alternative contact's name"
  "Name of an alternative contact, which could be next of kin (e.g. partner, mother, sibling); the alternative contact would be used in an emergency situation"
  * ^code[+] = $DENConcepts#DEN.A2.DE16
  * ^comment = "Validation: only letters and special characters (period, dash) allowed."

* alternativeContactPhoneNumber 0..1 string "Alternative contact's phone number"
  "Phone number of the alternative contact"
  * ^code[+] = $DENConcepts#DEN.A2.DE17
  * ^comment = "The spreadsheet describes this as an integer quantity. Represented as string here to preserve leading zeroes and formatting; confirm this design decision."

* mothersName 1..1 string "Mother's name"
  "Client's mother name"
  * ^code[+] = $DENConcepts#DEN.A2.DE18
  * ^comment = "Validation: only letters and special characters (period, dash) allowed. Spreadsheet note: for notification purpose."
