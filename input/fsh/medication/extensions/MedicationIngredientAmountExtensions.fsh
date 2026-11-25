Extension: MedicationIngredientAmountExtensions
Id: medication-ingredient-amount-extension
Description: "Free-text amount of the ingredient for classical Latin notations such as \"ad 100.0\" or \"quantum satis,\" including the unit."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-ingredient-amount-extension"
// preserve the version
* ^version = "1.4.1"
* ^date = "2026-11-25"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only string
* valueString 1.. MS
  * ^short = "Free-text amount of an ingredient in a formulation."
  * ^definition = "Free-text amount of the ingredient for classical Latin notations such as \"ad 100.0\" or \"quantum satis,\" including the unit."
  * ^maxLength = 20
