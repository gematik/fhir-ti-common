Extension: EPAMedicationTypeExtension
Id: epa-medication-type-extension
Title: "Medication Type"
Description: "Extension for EPAMedication types"
Context: Medication
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-type-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only Coding
* valueCoding 1.. MS
* valueCoding from $ti-medication-type-vs
