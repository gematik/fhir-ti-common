Extension: ExpectedDosageTextExtension
Id: expected-dosage-text
Description: "This extension is used in an Operation Outcome to state the expected Dosage Instruction in the rendered-dosagetext-extension."
* insert Meta

// preserve the version
* ^version = "1.4.0"
* ^date = "2026-09-23"
* ^status = #active

* value[x] only markdown
* valueMarkdown 1..1
