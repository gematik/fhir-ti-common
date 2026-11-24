Extension: MedicationTotalQuantityFormulationExtension
Id: medication-total-quantity-formulation-extension
Title: "TI Extension: Gesamtmenge der Rezeptur"
Description: "Gibt die Gesamtmenge der Rezeptur ohne Einheit an."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-total-quantity-formulation-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication.amount.numerator"

* value[x] only string
* valueString 1.. MS
  * ^short = "Gesamtmenge der Rezeptur"
  * ^definition = "Gesamtmenge der Rezeptur ohne Einheit."
  * ^maxLength = 7
