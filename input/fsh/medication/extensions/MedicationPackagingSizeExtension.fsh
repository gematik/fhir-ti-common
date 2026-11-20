Extension: MedicationPackagingSizeExtension
Id: medication-packaging-size-extension
Description: "Specification of the package size according to divided quantity (e.g., 100, 2x25), only appears in conjunction with \"unit\" (e.g., 100 Stück)."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-packaging-size-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only string
* valueString 1.. MS
  * ^short = "Package size according to divided quantity"
  * ^definition = "Specification of the package size according to divided quantity (e.g., 100, 2x25), only appears in conjunction with \"unit\" (e.g., 100 Stück)."
  * ^maxLength = 7
