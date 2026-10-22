Logical: DENEnd
Id: DEN.End
Title: "DEN.End"
Description: "Data elements for the DEN.End Data Dictionary (Web Annex A: Core data dictionary for DEN digital adaptation kit)."
* ^url = "https://smart.who.int/den/StructureDefinition/DEN.End"
* ^type = "https://smart.who.int/den/StructureDefinition/DENEnd"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition"
* ^status = #draft
* ^experimental = true
* ^name = "DEN_End"
* ^version = "0.1.0"

* reasonForClosingDENRecord 1..1 code "Reason for closing DEN record" "Select the reason why you are closing the patient's DEN record"
  * ^code[+] = $DENConcepts#DEN.End.1 "Reason for closing DEN record"
* reasonForClosingDENRecord from DENEnd1 (required)
  * ^comment = "Select one. Options: Death (DEN.End.2), Lost to follow-up (DEN.End.3), Discharge (DEN.End.4). Required: R."

