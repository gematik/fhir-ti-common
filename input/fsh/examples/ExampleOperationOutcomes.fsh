Instance: ExpTIOperationOutcomeIdentityMismatch
InstanceOf: TIOperationOutcome
Description: "Identity Mismatch"
Usage: #example
* id = "ad48bf90-a664-44f4-af14-ee6e81db3df4"
* issue
  * severity = #error
  * code = #forbidden
  * details = TIOperationOutcomeDetailsCS#SVC_IDENTITY_MISMATCH "Telematik-ID inside ID-Token or KVNR in x-insurantid HTTP header does not match FHIR data"


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
