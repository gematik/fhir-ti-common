Extension: MedicationTotalQuantityFormulationExtension
Id: medication-total-quantity-formulation-extension
Description: "Total quantity of the formulation (without the unit)."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only string
* valueString 1..
  * ^short = "Total quantity of the formulation."
  * ^definition = "Total quantity of the formulation (without the unit)."
  * ^maxLength = 7
