Extension: MedicationPackagingSizeExtension
Id: medication-packaging-size-extension
Title: "TI Extension: Packungsgröße"
Description: "Gibt die Packungsgröße an, auch bei aufgeteilter Menge (z. B. 100 oder 2 x 25). Die Angabe erfolgt zusammen mit der Einheit (z. B. 100 Stück)."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-packaging-size-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication.amount.numerator"

* value[x] only string
* valueString 1.. MS
  * ^short = "Packungsgröße nach aufgeteilter Menge"
  * ^definition = "Gibt die Packungsgröße nach aufgeteilter Menge an (z. B. 100 oder 2 x 25). Die Angabe erfolgt zusammen mit der Einheit (z. B. 100 Stück)."
  * ^maxLength = 7
