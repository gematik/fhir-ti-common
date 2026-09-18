Extension: OperationParameterLocation
Id: operation-parameter-location
Title: "Operation Parameter Location"
Description: "Gibt an, an welcher Stelle einer HTTP-Anfrage ein Eingabeparameter einer FHIR-Operation übertragen wird."
* insert Meta
// preserve the version of this resource
* ^version = "1.4.0"
* ^date = "2026-09-23"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "OperationDefinition.parameter"

* value[x] only code
* valueCode from TIOperationParameterLocationVS (required)