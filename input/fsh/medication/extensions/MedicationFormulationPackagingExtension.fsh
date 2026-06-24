Extension: MedicationFormulationPackagingExtension
Id: medication-formulation-packaging-extension
Description: "Information on the packaging of a formulation."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-formulation-packaging-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only string
* valueString 1.. MS
  * ^short = "Packaging of a formulation."
  * ^definition = "Information on transport containers or packaging for a formulation."
  * ^maxLength = 90
