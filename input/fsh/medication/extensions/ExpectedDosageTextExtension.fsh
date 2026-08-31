Extension: ExpectedDosageTextExtension
Id: expected-dosage-text
Description: "This extension is used in an Operation Outcome to state the expected Dosage Instruction in the rendered-dosagetext-extension."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/expected-dosage-text"

// preserve the version
* ^version = "1.0.0"
* ^date = "2026-08-31"
* ^status = #active

* value[x] only string
* valueString 1..1
