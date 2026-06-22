Extension: DrugCategoryExtension
Id: drug-category-extension
Description: "Extension for indicating the medication category."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/drug-category-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only Coding
* valueCoding 1..
* valueCoding only Coding
* valueCoding from $ti-drug-category-vs (required)
  * code ^short = "Category"
  * code ^definition = "Drug Category"
