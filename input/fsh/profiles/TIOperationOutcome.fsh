Profile: TIOperationOutcome
Parent: OperationOutcome
Id: operation-outcome
Title: "TI Operation Outcome"
Description: "Das Operation Outcome-Profil für die Telematikinfrastruktur (TI) FHIR Data Services"
* insert Meta
// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* issue.severity MS
* issue.code MS
* issue.details MS
* issue.details from TIOperationOutcomeDetailsVS (preferred)