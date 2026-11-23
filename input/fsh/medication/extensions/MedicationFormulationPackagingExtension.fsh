Extension: MedicationFormulationPackagingExtension
Id: medication-formulation-packaging-extension
Description: "Information on the packaging of a formulation."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-formulation-packaging-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only string
* valueString 1.. MS
  * ^short = "Packaging of a formulation."
  * ^definition = "Information on transport containers or packaging for a formulation."
  * ^maxLength = 90
