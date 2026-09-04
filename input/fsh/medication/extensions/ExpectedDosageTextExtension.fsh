Extension: ExpectedDosageTextExtension
Id: expected-dosage-text
Description: "This extension is used in an Operation Outcome to state the expected Dosage Instruction in the rendered-dosagetext-extension."
* insert Meta

// preserve the version
* ^version = "1.0.0"
* ^date = "2026-08-31"
* ^status = #active

* value[x] only markdown
* valueMarkdown 1..1
