Extension: ContextExtension
Id: context-extension
Title: "TI Extension: Medikationskontext"
Description: "Gibt an, in welchem Medikationskontext die Ressourceninstanz verwendet wird."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/context-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only code
* valueCode 1..1 MS
  * ^short = "Medikationskontext der Ressourceninstanz"
  * ^definition = "Code für die Zuordnung der Ressourceninstanz zu einer Verschreibung, einem Nachtrag oder dem elektronischen Medikationsplan (eMP)."
* valueCode from ContextCodeVS (required)
