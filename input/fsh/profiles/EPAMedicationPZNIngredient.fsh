Profile: EPAMedicationPZNIngredient
Parent: Medication
Id: epa-medication-pzn-ingredient
Title: "EPA Medication PZN Ingredient"
Description: "Defines the medication resource for a PZN ingredient of a compounding medication for the Medication Service in the ePA system. These profiles are intended to inherit from EPAMedication, but due to tooling issues, this inheritance cannot currently be implemented."
//TODO: as soon as the snapshotgenerator can deal with contained child-profiles remove the following insert statement and inherit from EPAMedication
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-pzn-ingredient"
* insert epaMedicationElements
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* contained ..0
* extension[type]
  * insert ExtensionCodingMS
  * valueCoding from $ti-medication-type-product-vs

* code.coding[pzn] 1..
* ingredient.itemReference ..0
  * ^short = "Medication Ingredients can't have child Medications"
* batch MS
  * lotNumber MS
