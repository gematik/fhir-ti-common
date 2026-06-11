Extension: ContextExtension
Id: context-extension
Description: "Extension for indicating the context."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/context-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only code
* valueCode 1..1
  * ^short = "Context of the resource"
* valueCode from ContextCodeVS (required)
