Extension: ExpectedDosageTextExtension
Id: expected-dosage-text
Description: "Diese Extension wird in einem OperationOutcome verwendet, um den erwarteten Text der Dosierungsanweisung für die rendered-dosagetext-extension anzugeben."
* insert Meta

// preserve the version
* ^version = "1.4.0"
* ^date = "2026-09-23"
* ^status = #active

* value[x] only markdown
* valueMarkdown 1..1