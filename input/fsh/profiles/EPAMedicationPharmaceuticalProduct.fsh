Profile: EPAMedicationPharmaceuticalProduct
Parent: Medication
Id: epa-medication-pharmaceutical-product
Title: "EPA Pharmaceutical Product Medication"
Description: "Defines the medication resource for a component of a 'Kombipackung' for the Medication Service in the ePA system. These profiles are intended to inherit from EPAMedication, but due to tooling issues, this inheritance cannot currently be implemented."
//TODO: as soon as the snapshotgenerator can deal with contained child-profiles remove the following insert statement and inherit from EPAMedication
* insert epaMedicationElements
// preserve the version
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-pharmaceutical-product"

* contained ..0
* extension[type]
  * insert ExtensionCodingMS
  * valueCoding from $ti-medication-type-pharmaceutical-product-vs

* code.coding[pzn] 0..0
* ingredient.itemReference 0..0
  * ^short = "Medication Pharmaceutical Product can't have child Medications"
