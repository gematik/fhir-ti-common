CodeSystem: TIOperationOutcomeDetailsCS
Id: operation-outcome-details-codes
Title: "TI Operation Outcome Details CodeSystem"
Description: "Telematikinfrastruktur (TI) Operation Outcome Details CodeSystem"
* insert Meta-CS
// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2026-01-15"
* ^status = #draft

* ^caseSensitive = true

* #OPERATION_SUCCESS "Operation Successfully Completed"
* #SVC_IDENTITY_MISMATCH "Identity information in ACCESS TOKEN does not match identity information in FHIR data"
* #SVC_INACTIVE_CODE "Use of inactive code not permitted"
* #SVC_ROLE_NOT_ALLOWED "This role is not allowed to access the resource"
* #SVC_NO_VALID_STRUCTURE "Invalid Data Structure"

