ValueSet: TIOperationOutcomeDetailsVS
Id: operation-outcome-details-vs
Title: "TI Operation Outcome Details Value Set"

Description: "Enthält alle Codes für das Operation Outcome der Telematikinfrastruktur (TI) sowie die in FHIR definierten Operation-Outcome-Codes."
* insert Meta-VS
// preserve the version of this resource
* ^version = "1.3.0"
* ^date = "2026-03-20"
* ^status = #active

* include codes from system $cs-operation-outcome
* include codes from system TIOperationOutcomeDetailsCS

// expansion of explicitly defined codes
* ^expansion.timestamp = "2026-03-20T06:56:46.224Z"

* ^expansion.contains[0].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #DELETE_MULTIPLE_MATCHES
* ^expansion.contains[=].display = "Error: Multiple matches exist for the conditional delete"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_AUTH_REQUIRED
* ^expansion.contains[=].display = "You must authenticate before you can use this service"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_BAD_FORMAT
* ^expansion.contains[=].display = "Bad Syntax: \"%s\" must be a %s'"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_BAD_SYNTAX
* ^expansion.contains[=].display = "Bad Syntax in %s"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_CANT_PARSE_CONTENT
* ^expansion.contains[=].display = "Unable to parse feed (entry content type = \"%s\")"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_CANT_PARSE_ROOT
* ^expansion.contains[=].display = "Unable to parse feed (root element name = \"%s\")"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_CREATED
* ^expansion.contains[=].display = "New resource created"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_DATE_FORMAT
* ^expansion.contains[=].display = "The Date value %s is not in the correct format (Xml Date Format required)"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_DELETED
* ^expansion.contains[=].display = "This resource has been deleted"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_DELETED_DONE
* ^expansion.contains[=].display = "Resource deleted"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_DELETED_ID
* ^expansion.contains[=].display = "The resource \"%s\" has been deleted"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_DUPLICATE_ID
* ^expansion.contains[=].display = "Duplicate Id %s for resource type %s"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_ERROR_PARSING
* ^expansion.contains[=].display = "Error parsing resource Xml (%s)"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_ID_INVALID
* ^expansion.contains[=].display = "Id \"%s\" has an invalid character \"%s\""

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_ID_TOO_LONG
* ^expansion.contains[=].display = "Id \"%s\" too long (length limit 36)"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_INVALID_ID
* ^expansion.contains[=].display = "Id not accepted"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_JSON_OBJECT
* ^expansion.contains[=].display = "Json Source for a resource should start with an object"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_LOCAL_FAIL
* ^expansion.contains[=].display = "Unable to resolve local reference to resource %s"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_NO_EXIST
* ^expansion.contains[=].display = "Resource Id \"%s\" does not exist"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_NO_MATCH
* ^expansion.contains[=].display = "No Resource found matching the query \"%s\""

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_NO_MODULE
* ^expansion.contains[=].display = "No module could be found to handle the request \"%s\""

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_NO_SUMMARY
* ^expansion.contains[=].display = "No Summary for this resource"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_OP_NOT_ALLOWED
* ^expansion.contains[=].display = "Operation %s not allowed for resource %s (due to local configuration)"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_PARAM_CHAINED
* ^expansion.contains[=].display = "Unknown chained parameter name \"%s\""

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_PARAM_INVALID
* ^expansion.contains[=].display = "Parameter \"%s\" content is invalid"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_PARAM_MODIFIER_INVALID
* ^expansion.contains[=].display = "Parameter \"%s\" modifier is invalid"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_PARAM_NO_REPEAT
* ^expansion.contains[=].display = "Parameter \"%s\" is not allowed to repeat"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_PARAM_UNKNOWN
* ^expansion.contains[=].display = "Parameter \"%s\" not understood"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_RESOURCE_EXAMPLE_PROTECTED
* ^expansion.contains[=].display = "Resources with identity \"example\" cannot be deleted (for testing/training purposes)"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_RESOURCE_ID_FAIL
* ^expansion.contains[=].display = "unable to allocate resource id"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_RESOURCE_ID_MISMATCH
* ^expansion.contains[=].display = "Resource Id Mismatch"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_RESOURCE_ID_MISSING
* ^expansion.contains[=].display = "Resource Id Missing"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_RESOURCE_NOT_ALLOWED
* ^expansion.contains[=].display = "Not allowed to submit a resource for this operation"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_RESOURCE_REQUIRED
* ^expansion.contains[=].display = "A resource is required"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_RESOURCE_TYPE_MISMATCH
* ^expansion.contains[=].display = "Resource Type Mismatch"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_SORT_UNKNOWN
* ^expansion.contains[=].display = "Unknown sort parameter name \"%s\""

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_TRANSACTION_DUPLICATE_ID
* ^expansion.contains[=].display = "Duplicate Identifier in transaction: %s"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_TRANSACTION_MISSING_ID
* ^expansion.contains[=].display = "Missing Identifier in transaction - an entry.id must be provided"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_UNHANDLED_NODE_TYPE
* ^expansion.contains[=].display = "Unhandled xml node type \"%s\""

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_UNKNOWN_CONTENT
* ^expansion.contains[=].display = "Unknown Content (%s) at %s"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_UNKNOWN_OPERATION
* ^expansion.contains[=].display = "unknown FHIR http operation"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_UNKNOWN_TYPE
* ^expansion.contains[=].display = "Resource Type \"%s\" not recognised"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_UPDATED
* ^expansion.contains[=].display = "existing resource updated"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_VERSION_AWARE
* ^expansion.contains[=].display = "Version aware updates are required for this resource"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_VERSION_AWARE_CONFLICT
* ^expansion.contains[=].display = "Update Conflict (server current version = \"%s\", client version referenced = \"%s\")"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_VERSION_AWARE_URL
* ^expansion.contains[=].display = "Version specific URL not recognised"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #MSG_WRONG_NS
* ^expansion.contains[=].display = "This does not appear to be a FHIR element or resource (wrong namespace \"%s\")"

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #SEARCH_MULTIPLE
* ^expansion.contains[=].display = "Error: Multiple matches exist for %s search parameters \"%s\""

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #SEARCH_NONE
* ^expansion.contains[=].display = "Error: no processable search found for %s search parameters \"%s\""

* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/operation-outcome"
* ^expansion.contains[=].code = #UPDATE_MULTIPLE_MATCHES
* ^expansion.contains[=].display = "Error: Multiple matches exist for the conditional update"


// From TI Operation Outcome Details Code System
* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #OPERATION_SUCCESS
* ^expansion.contains[=].display = "Operation Successfully Completed"

* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #SVC_IDENTITY_MISMATCH
* ^expansion.contains[=].display = "Identity mismatch: Access token or x-insurantid header does not match FHIR data (Telematik-ID / KVNR)"

* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #SVC_INACTIVE_CODE
* ^expansion.contains[=].display = "Use of inactive code not permitted"

* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #SVC_INVALID_ACCESS_TOKEN
* ^expansion.contains[=].display = "Invalid access token provided"

* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #SVC_TELEMATIKID_BLOCKED
* ^expansion.contains[=].display = "The specified Telematik-ID is blocked"

* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #SVC_TELEMATIKID_TEMPORARILY_BLOCKED
* ^expansion.contains[=].display = "The specified Telematik-ID is temporarily blocked"

* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #SVC_VALIDATION_FAILED
* ^expansion.contains[=].display = "FHIR Profile Validation Failed"

* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #SVC_DOSAGE_INVALID_INSTRUCTION_META
* ^expansion.contains[=].display = "The generated dosage instruction meta information is invalid"

* ^expansion.contains[+].system = Canonical(TIOperationOutcomeDetailsCS)
* ^expansion.contains[=].code = #SVC_DOSAGE_INVALID_RENDERED_INSTRUCTION
* ^expansion.contains[=].display = "The provided rendered dosage instruction is invalid"
