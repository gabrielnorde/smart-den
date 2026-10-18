Profile: DENC8ComplementaryExamServiceRequest
Parent: $BRCoreServiceRequest
Id: den-c8-complementary-exam-service-request
Title: "DEN.C8 Complementary Exam ServiceRequest"
Description: "BR-Core ServiceRequest for a complementary exam selected in DEN.C8. The questionnaire answer is retained in QuestionnaireResponse; creating this request from a selection is an implementation choice. Required ServiceRequest workflow metadata is not supplied by the source worksheet."

* code 1..1
* code from $DENC8OrderOptions (required)
* subject 1..1
* subject only Reference($BRCorePatient)

Profile: DENC8LabResultObservation
Parent: $BRCoreObservation
Id: den-c8-lab-result-observation
Title: "DEN.C8 Laboratory Result Observation"
Description: "BR-Core Observation for DEN.C8 hematocrit, platelet count, dengue serology, or dengue PCR results. The source provides no units, reference ranges, effective time, performer, or specimen constraints."

* subject 1..1
* subject only Reference($BRCorePatient)
* code 1..1
* code from $DENC8LabResultCodes (required)
* value[x] only Quantity
* valueQuantity 1..1
* valueQuantity.value 1..1
