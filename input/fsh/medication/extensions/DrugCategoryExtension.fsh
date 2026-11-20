Extension: DrugCategoryExtension
Id: drug-category-extension
Description: "Extension for indicating the medication category."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/drug-category-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only Coding
* valueCoding 1.. MS
* valueCoding only Coding
* valueCoding from $ti-drug-category-vs (required)
  * code ^short = "Category"
  * code ^definition = "Drug Category"
