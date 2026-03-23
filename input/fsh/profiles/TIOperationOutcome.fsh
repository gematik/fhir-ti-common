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

* issue MS
  * severity MS
  * code MS
  * details MS
    * insert CodeableConceptMS
  * details from TIOperationOutcomeDetailsVS (preferred)
  * diagnostics MS
