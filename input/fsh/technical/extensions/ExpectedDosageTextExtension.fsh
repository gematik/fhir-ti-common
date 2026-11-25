Extension: ExpectedDosageTextExtension
Id: expected-dosage-text
Title: "TI Extension für den erwarteten Dosierungstext"
Description: "Diese Extension gibt in einer OperationOutcome-Ressource den erwarteten Text für renderedDosageInstruction an."
Context: OperationOutcome.issue
* insert Meta

// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only markdown
* valueMarkdown 1..1
  * ^short = "Erwarteter Dosierungstext"
  * ^definition = "Erwarteter Text für renderedDosageInstruction."
