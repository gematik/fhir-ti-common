Extension: MedicationManufacturingInstructionsExtension
Id: medication-manufacturing-instructions-extension
Description: "Manufacturing instructions regarding the preparation of a formulation (Subscriptio)."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-manufacturing-instructions-extension"
// preserve the version
* ^version = "1.4.1"
* ^date = "2026-11-25"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only string
* valueString 1.. MS
  * ^short = "Manufacturing instructions for a formulation."
  * ^definition = "Manufacturing instructions regarding the preparation of a formulation (Subscriptio)."
  * ^maxLength = 500
