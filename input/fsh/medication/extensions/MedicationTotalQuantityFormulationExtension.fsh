Extension: MedicationTotalQuantityFormulationExtension
Id: medication-total-quantity-formulation-extension
Description: "Total quantity of the formulation (without the unit)."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only string
* valueString 1.. MS
  * ^short = "Total quantity of the formulation."
  * ^definition = "Total quantity of the formulation (without the unit)."
  * ^maxLength = 7
