CodeSystem: TIOperationParameterLocationCS
Id: ti-operation-parameter-location-cs
Title: "TI Operation Parameter Location CodeSystem"
Description: "Definiert die möglichen Positionen eines Parameters bei der HTTP-Übertragung einer FHIR-Operation."
* insert Meta-CS
// preserve the version of this resource
* ^version = "1.4.0"
* ^date = "2026-09-23"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true

* #query "Query" "Der Parameter wird als HTTP-Query-Parameter in der URL übertragen."

* #body "Body" "Der Parameter wird im HTTP-Request-Body übertragen."

* #header "Header" "Der Parameter wird als HTTP-Header übertragen."