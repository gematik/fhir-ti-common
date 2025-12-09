CodeSystem: TIOperationOutcomeDetailsCS
Id: operation-outcome-details-codes
Title: "TI Operation Outcome Details CodeSystem"
Description: "Telematikinfrastruktur (TI) Operation Outcome Details CodeSystem"
* insert Meta-CS
// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* ^caseSensitive = true

* #OPERATION_SUCCESS "Operation Successfully Completed"
* #SVC_IDENTITY_MISMATCH "Telematik-ID inside ID-Token or KVNR in x-insurantid HTTP header does not match FHIR data"
* #SVC_INACTIVE_CODE "Use of inactive code not permitted"

