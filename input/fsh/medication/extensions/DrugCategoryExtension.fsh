Extension: DrugCategoryExtension
Id: drug-category-extension
Title: "TI Extension: Arzneimittelkategorie"
Description: "Gibt die Kategorie des Arzneimittels an."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/drug-category-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only Coding
* valueCoding 1.. MS
* valueCoding only Coding
* valueCoding from $ti-drug-category-vs (required)
  * code ^short = "Kategorie"
  * code ^definition = "Kategorie des Arzneimittels."
