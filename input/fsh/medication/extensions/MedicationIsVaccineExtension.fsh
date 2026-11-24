Extension: MedicationIsVaccineExtension
Id: medication-is-vaccine-extension
Title: "TI Extension: Impfstoffkennzeichen"
Description: "Kennzeichnet, ob es sich um einen Impfstoff handelt."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-id-vaccine-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only boolean
* valueBoolean 1.. MS
* valueBoolean ^short = "Impfstoffkennzeichen"
* valueBoolean ^definition = "Gibt an, ob es sich um einen Impfstoff handelt."
