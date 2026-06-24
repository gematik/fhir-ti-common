Profile: TIOperationOutcome
Parent: OperationOutcome
Id: operation-outcome
Title: "TI Operation Outcome"
Description: "Das Operation Outcome-Profil für die Telematikinfrastruktur (TI) FHIR Data Services"
* insert Meta
// preserve the version of this resource
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* issue MS
  * severity MS
  * code MS
  * details MS
  * details from TIOperationOutcomeDetailsVS (preferred)
  * diagnostics MS
