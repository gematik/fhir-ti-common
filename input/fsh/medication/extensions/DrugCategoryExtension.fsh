Extension: DrugCategoryExtension
Id: drug-category-extension
Description: "Extension for indicating the medication category."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/drug-category-extension"
// preserve the version
* ^version = "1.4.1"
* ^date = "2026-11-25"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only Coding
* valueCoding 1.. MS
* valueCoding only Coding
* valueCoding from $ti-drug-category-vs (required)
  * code ^short = "Category"
  * code ^definition = "Drug Category"
