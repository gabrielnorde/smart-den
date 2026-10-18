
Invariant: den-c3-no-danger-sign-exclusive
Description: "The None danger-sign option cannot be selected with any other danger-sign option."
Expression: "item.where(linkId = 'DEN.C3.DE1').answer.where(value.ofType(Coding).system = 'https://smart.who.int/den/CodeSystem/den-custom-codes' and value.ofType(Coding).code = 'no-danger-sign').empty() or item.where(linkId = 'DEN.C3.DE1').answer.count() = 1"
Severity: #error

Invariant: den-c3-questionnaire-oral-intake-integer
Description: "The oral intake response must be an integer quantity, as specified in the data dictionary."
Expression: "item.where(linkId = 'DEN.C3.DE7').answer.value.ofType(Quantity).value.all($this = $this.round())"
Severity: #error

Profile: DENC3QuestionnaireResponse
Parent: QuestionnaireResponse
Id: den-c3-questionnaire-response
Title: "DEN.C3 QuestionnaireResponse"
Description: "QuestionnaireResponse constraints for DEN.C3, including exclusion of the None option with other danger signs and integer oral-intake answers."

* questionnaire 1..1
* questionnaire = $DENC3Questionnaire
* obeys den-c3-no-danger-sign-exclusive
* obeys den-c3-questionnaire-oral-intake-integer
