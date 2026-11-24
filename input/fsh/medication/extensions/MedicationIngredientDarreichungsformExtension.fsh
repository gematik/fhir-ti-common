Extension: MedicationIngredientDarreichungsformExtension
Id: medication-ingredient-darreichungsform-extension
Title: "TI Extension: Darreichungsform des Bestandteils"
Description: "Gibt die Darreichungsform eines Bestandteils einer Rezeptur an."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-ingredient-darreichungsform-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication.ingredient"

* value[x] only string
* valueString 1.. MS
  * ^short = "Darreichungsform des Rezepturbestandteils"
  * ^definition = "Bei einem Rezepturbestandteil, der kein Fertigarzneimittel ist, kann die Darreichungsform als Freitext angegeben werden."
  * ^maxLength = 30
