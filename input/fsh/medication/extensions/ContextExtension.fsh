Extension: ContextExtension
Id: context-extension
Description: "Extension for indicating the context."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/context-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only code
* valueCode 1..1 MS
  * ^short = "Context of the resource"
* valueCode from ContextCodeVS (required)
