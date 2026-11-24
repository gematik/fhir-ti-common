Extension: MedicationIngredientAmountExtensions
Id: medication-ingredient-amount-extension
Title: "TI Extension: Mengenangabe zum Bestandteil"
Description: "Mengenangabe zu einem Bestandteil als Freitext einschließlich der Einheit. Sie bildet auch klassische lateinische Angaben wie \"ad 100.0\" oder \"quantum satis\" ab."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-ingredient-amount-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication.ingredient.strength"

* value[x] only string
* valueString 1.. MS
  * ^short = "Menge eines Rezepturbestandteils als Freitext"
  * ^definition = "Mengenangabe zum Rezepturbestandteil als Freitext einschließlich der Einheit, etwa in der Form \"ad 100.0\" oder \"quantum satis\"."
  * ^maxLength = 20
