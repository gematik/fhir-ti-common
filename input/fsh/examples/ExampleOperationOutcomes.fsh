Instance: ExpTIOperationOutcomeIdentityMismatch
InstanceOf: TIOperationOutcome
Description: "Identity Mismatch"
Usage: #example
* id = "ad48bf90-a664-44f4-af14-ee6e81db3df4"
* issue
  * severity = #error
  * code = #forbidden
  * details = TIOperationOutcomeDetailsCS#SVC_IDENTITY_MISMATCH "Identity mismatch: Access token or x-insurantid header does not match FHIR data (Telematik-ID / KVNR)"


Instance: ExpTIOperationOutcomeSuccess
InstanceOf: TIOperationOutcome
Description: "Operation Successfully Completed"
Usage: #example
* id = "468ca07b-7d63-453d-a738-0c35cb9402aa"
* issue
  * severity = #information
  * code = #informational
  * details = TIOperationOutcomeDetailsCS#OPERATION_SUCCESS "Operation Successfully Completed"


Instance: ExpTIOperationDeleted
InstanceOf: TIOperationOutcome
Description: "This resource has been deleted"
Usage: #example
* id = "0dc58d79-1b2e-4c6f-afe0-0a5b721661a2"
* issue
  * severity = #error
  * code = #processing
  * details = $cs-operation-outcome#MSG_DELETED "This resource has been deleted"
  * diagnostics = "Resource was deleted at 2025-03-10T10:02:27.838+00:00"


Instance: ExpTIOperationOutcomeInactiveCode
InstanceOf: TIOperationOutcome
Description: "Inactive code not permitted"
Usage: #example
* id = "65643d2f-363b-4df4-89e9-a6ce2ba55227"
* issue
  * severity = #error
  * code = #processing
  * details = TIOperationOutcomeDetailsCS#SVC_INACTIVE_CODE "Use of inactive code not permitted"


Instance: ExpTIOperationOutcomeInvalidAccessToken
InstanceOf: TIOperationOutcome
Description: "Invalid access token provided"
Usage: #example
* id = "0467fbad-2ef1-4906-aaf5-7ce2a3929f7b"
* issue
  * severity = #error
  * code = #security
  * details = TIOperationOutcomeDetailsCS#SVC_INVALID_ACCESS_TOKEN "Invalid access token provided"


Instance: ExpTIOperationOutcomeTelematikIdBlocked
InstanceOf: TIOperationOutcome
Description: "The specified Telematik-ID is blocked"
Usage: #example
* id = "ea0ac9a5-8508-471a-b2c8-c41209436545"
* issue
  * severity = #error
  * code = #security
  * details = TIOperationOutcomeDetailsCS#SVC_TELEMATIKID_BLOCKED "The specified Telematik-ID is blocked"


Instance: ExpTIOperationOutcomeTelematikIdTemporailyBlocked
InstanceOf: TIOperationOutcome
Description: "The specified Telematik-ID is temporarily blocked"
Usage: #example
* id = "8d5c1994-5caf-46c6-8c95-c5e7e6fad8e5"
* issue
  * severity = #error
  * code = #security
  * details = TIOperationOutcomeDetailsCS#SVC_TELEMATIKID_TEMPORARILY_BLOCKED "The specified Telematik-ID is temporarily blocked"


Instance: ExpTIOperationOutcomeValidationFailed
InstanceOf: TIOperationOutcome
Description: "FHIR Profile Validation Failed"
Usage: #example
* id = "c5fca094-f4d0-4b6a-8662-8fa158d82416"
* issue
  * severity = #error
  * code = #invalid
  * details = TIOperationOutcomeDetailsCS#SVC_VALIDATION_FAILED "FHIR Profile Validation Failed"


Instance: ExpTIOperationOutcomeDosageInvalidInstructionMeta
InstanceOf: TIOperationOutcome
Description: "The generated dosage instruction meta information is invalid"
Usage: #example
* id = "176e0f12-d08c-4a05-ae0a-e30bf2f5158d"
* issue
  * severity = #error
  * code = #invalid
  * details = TIOperationOutcomeDetailsCS#SVC_DOSAGE_INVALID_INSTRUCTION_META "The generated dosage instruction meta information is invalid"


Instance: ExpTIOperationOutcomeDosageInvalidRenderedInstruction
InstanceOf: TIOperationOutcome
Description: "The provided rendered dosage instruction is invalid"
Usage: #example
* id = "0c81ad3a-d6d1-4924-91d2-555cd3d5716f"
* issue
  * severity = #error
  * code = #invalid
  * details = TIOperationOutcomeDetailsCS#SVC_DOSAGE_INVALID_RENDERED_INSTRUCTION "The provided rendered dosage instruction is invalid"

Instance: ExpTIOperationOutcomeDosageInvalidRenderedInstructionWithText
InstanceOf: TIOperationOutcome
Description: "The provided rendered dosage instruction is invalid"
Usage: #example
* id = "5ab6bca4-fbdf-49c3-a693-a065187cffd6"
* issue
  * extension[expectedDosageText] = "täglich: 08:00 Uhr — je 1 Stück; 18:00 Uhr — je 3 Stück"
  * severity = #error
  * code = #invalid
  * details = TIOperationOutcomeDetailsCS#SVC_DOSAGE_INVALID_RENDERED_INSTRUCTION "The provided rendered dosage instruction is invalid"
