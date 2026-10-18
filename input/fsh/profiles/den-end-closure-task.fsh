Profile: DENEndClosureReasonTask
Parent: Task
Id: den-end-closure-task
Title: "DEN.End Closure Reason Task"
Description: "FHIR Task for recording the reason a patient's DEN record is being closed. The Task is an implementation choice for this workflow. The source provides the reason choices but does not specify Task.status or Task.intent; those required base elements are supplied by the surrounding workflow."

* for 1..1
* for only Reference($BRCorePatient)
* reasonCode 1..1
* reasonCode from $DENEndClosureReasons (required)
