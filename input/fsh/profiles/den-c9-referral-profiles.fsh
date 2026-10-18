Invariant: den-c9-de6-integer
Description: "The DEN.C9 provider telephone answer is an integer quantity, as specified in the data dictionary."
Expression: "item.where(linkId = 'DEN.C9').item.where(linkId = 'DEN.C9.DE6').answer.value.ofType(Quantity).value.all($this = $this.round())"
Severity: #error

Profile: DENC9ReferralQuestionObservation
Parent: $BRCoreObservation
Id: den-c9-referral-question-observation
Title: "DEN.C9 Referral Question Observation"
Description: "BR-Core Observation for the DEN.C9 emergency-referral and pre-referral-treatment Boolean answers. Deriving an Observation from a QuestionnaireResponse is an implementation choice; the QuestionnaireResponse remains the source answer record."

* subject 1..1
* subject only Reference($BRCorePatient)
* code 1..1
* code from $DENC9ReferralObservationCodes (required)
* value[x] only boolean
* valueBoolean 1..1

Profile: DENC9ComplexServiceReferral
Parent: $BRCoreServiceRequest
Id: den-c9-complex-service-referral
Title: "DEN.C9 Complex Service Referral"
Description: "BR-Core ServiceRequest for a DEN.C9 emergency referral. Creating this request when the DE1 answer is yes is an implementation choice. Request status, intent, category, priority, subject, and requester workflow details remain sourced from the surrounding clinical workflow."

* code 1..1
* code from $DENC9ReferralServiceTypes (required)
* subject 1..1
* subject only Reference($BRCorePatient)
* authoredOn 1..1
* locationReference 1..1
* locationReference only Reference($BRCoreLocation)
* note 1..1

Profile: DENC9QuestionnaireResponse
Parent: QuestionnaireResponse
Id: den-c9-questionnaire-response
Title: "DEN.C9 QuestionnaireResponse"
Description: "QuestionnaireResponse constraints for DEN.C9, including the integer rule for the provider telephone answer. The worksheet specifies a Quantity with Integer quantity but does not supply a unit or a resolvable telecom representation."

* questionnaire 1..1
* questionnaire = $DENC9Questionnaire
* obeys den-c9-de6-integer
