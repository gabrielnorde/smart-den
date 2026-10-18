
Invariant: den-c3-oral-intake-integer
Description: "The oral intake quantity must be an integer, as specified in the data dictionary."
Expression: "value.ofType(Quantity).value = value.ofType(Quantity).value.round()"
Severity: #error

Profile: DENC3OralIntakeObservation
Parent: $BRCoreObservation
Id: den-c3-oral-intake-observation
Title: "DEN.C3 Oral Intake Observation"
Description: "BR-Core Observation profile for the integer quantity recorded by DEN.C3.DE7. Unit and measurement period are left unconstrained because the source does not specify them."

* code from $DENC3OralIntakeCodes (required)
* value[x] only Quantity
* valueQuantity 1..1
* obeys den-c3-oral-intake-integer
