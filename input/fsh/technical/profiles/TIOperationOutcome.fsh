Profile: TIOperationOutcome
Parent: OperationOutcome
Id: operation-outcome
Title: "TI Operation Outcome"
Description: "Das Operation Outcome-Profil für die Telematikinfrastruktur (TI) FHIR Data Services"
* insert Meta
// preserve the version of this resource
* ^version = "1.4.0"
* ^date = "2026-09-23"
* ^status = #active

* issue MS
* issue MS
  * extension contains 
    ExpectedDosageTextExtension named expectedDosageText 0..1 MS
  * extension[expectedDosageText] insert ExtensionMarkdownMS

  * severity MS
  * code MS
  * details MS
  * details from TIOperationOutcomeDetailsVS (preferred)
  * diagnostics MS
