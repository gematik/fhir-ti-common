Extension: EPAMedicationTypeExtension
Id: epa-medication-type-extension
Title: "TI Extension: Arzneimitteltyp"
Description: "Gibt den Arzneimitteltyp für die Verarbeitung von Medikationsdaten in der ePA an."
Context: Medication
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-type-extension"
// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only Coding
* valueCoding 1.. MS
  * ^short = "Codierter Arzneimitteltyp"
  * ^definition = "Codierte Angabe zum Arzneimitteltyp der Medication-Ressource."
* valueCoding from $ti-medication-type-vs
