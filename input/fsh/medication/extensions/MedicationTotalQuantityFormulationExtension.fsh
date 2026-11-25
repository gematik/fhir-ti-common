Extension: MedicationTotalQuantityFormulationExtension
Id: medication-total-quantity-formulation-extension
Description: "Total quantity of the formulation (without the unit)."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
// preserve the version
* ^version = "1.4.1"
* ^date = "2026-11-25"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication.amount.numerator"

* value[x] only string
* valueString 1.. MS
  * ^short = "Total quantity of the formulation."
  * ^definition = "Total quantity of the formulation (without the unit)."
  * ^maxLength = 7
