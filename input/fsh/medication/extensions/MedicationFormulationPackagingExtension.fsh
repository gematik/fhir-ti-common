Extension: MedicationFormulationPackagingExtension
Id: medication-formulation-packaging-extension
Title: "TI Extension: Verpackung der Rezeptur"
Description: "Enthält Angaben zur Verpackung einer Rezeptur."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-formulation-packaging-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only string
* valueString 1.. MS
  * ^short = "Verpackung der Rezeptur"
  * ^definition = "Angaben zu Transportbehältnissen oder zur Verpackung einer Rezeptur."
  * ^maxLength = 90
