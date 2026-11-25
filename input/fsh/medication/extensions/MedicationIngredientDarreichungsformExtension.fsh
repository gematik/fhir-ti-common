Extension: MedicationIngredientDarreichungsformExtension
Id: medication-ingredient-darreichungsform-extension
Description: "Dosage form of an ingredient in a formulation."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-ingredient-darreichungsform-extension"
// preserve the version
* ^version = "1.4.1"
* ^date = "2026-11-25"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication.ingredient"

* value[x] only string
* valueString 1.. MS
  * ^short = "Dosage form of an ingredient in a formulation."
  * ^definition = "The dosage form as free text can be used if the ingredient in the formulation is not a finished medicinal product."
  * ^maxLength = 30
