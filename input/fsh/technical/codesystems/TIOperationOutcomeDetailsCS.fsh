CodeSystem: TIOperationOutcomeDetailsCS
Id: operation-outcome-details-codes
Title: "TI Operation Outcome Details CodeSystem"
Description: "Telematikinfrastruktur (TI) Operation Outcome Details CodeSystem"
* insert Meta-CS
// preserve the version of this resource
* ^version = "1.3.0"
* ^date = "2026-03-20"
* ^status = #active

* ^caseSensitive = true

* #OPERATION_SUCCESS "Operation Successfully Completed"
* #SVC_IDENTITY_MISMATCH "Identity mismatch: Access token or x-insurantid header does not match FHIR data (Telematik-ID / KVNR)"
* #SVC_INACTIVE_CODE "Use of inactive code not permitted"

* #SVC_INVALID_ACCESS_TOKEN "Invalid access token provided"
* #SVC_TELEMATIKID_BLOCKED "The specified Telematik-ID is blocked"
* #SVC_TELEMATIKID_TEMPORARILY_BLOCKED "The specified Telematik-ID is temporarily blocked"
* #SVC_VALIDATION_FAILED "FHIR Profile Validation Failed"
* #SVC_DOSAGE_INVALID_INSTRUCTION_META "The generated dosage instruction meta information is invalid"
* #SVC_DOSAGE_INVALID_RENDERED_INSTRUCTION "The provided rendered dosage instruction is invalid"
