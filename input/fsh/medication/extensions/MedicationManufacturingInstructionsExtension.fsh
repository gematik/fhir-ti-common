Extension: MedicationManufacturingInstructionsExtension
Id: medication-manufacturing-instructions-extension
Title: "TI Extension: Herstellungsanweisung für die Rezeptur"
Description: "Enthält die Anweisung zur Herstellung einer Rezeptur (Subscriptio)."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-manufacturing-instructions-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only string
* valueString 1.. MS
  * ^short = "Herstellungsanweisung für die Rezeptur"
  * ^definition = "Anweisung zur Herstellung einer Rezeptur (Subscriptio)."
  * ^maxLength = 500
