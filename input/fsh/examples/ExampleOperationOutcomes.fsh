// Instance: ExpTIOperationOutcomeSuccess
// InstanceOf: TIOperationOutcome
// Description: "Operation Successfully Completed in Medication Service"
// Usage: #example
// * id = "255002c7-aa1b-4163-bdd4-ede482453cca"
// * issue
//   * severity = #information
//   * code = #informational
//   * details = TIOperationOutcomeDetailsCS#MEDICATIONSVC_OPERATION_SUCCESS "Operation Successfully Completed in Medication Service"


// Instance: ExpTIOperationOutcomeNoValidStructure
// InstanceOf: TIOperationOutcome
// Description: "Invalid Data Structure in Medication Service"
// Usage: #example
// * id = "2b34898e-a9d1-4fa6-9959-5ff6033cfcb0"
// * issue
//   * severity = #error
//   * code = #structure
//   * details = TIOperationOutcomeDetailsCS#MEDICATIONSVC_NO_VALID_STRUCTURE "Invalid Data Structure in Medication Service"


// Instance: ExpTIOperationOutcomePrescriptionNotFound
// InstanceOf: TIOperationOutcome
// Description: "Prescription Not Found in Medication Service"
// Usage: #example
// * id = "fc3e8ea4-41ec-4de2-906e-97871b34adcb"
// * issue
//   * severity = #error
//   * code = #processing
//   * details = TIOperationOutcomeDetailsCS#MEDICATIONSVC_PRESCRIPTION_NO_EXIST "Prescription Not Found in Medication Service"


// Instance: ExpTIOperationOutcomeDuplicatePrescriptionDetected
// InstanceOf: TIOperationOutcome
// Description: "Duplicate Prescription Detected in Medication Service"
// Usage: #example
// * id = "ee1e0518-02f2-4d3a-99ae-bae8e91c382d"
// * issue
//   * severity = #error
//   * code = #duplicate
//   * details = TIOperationOutcomeDetailsCS#MEDICATIONSVC_PRESCRIPTION_DUPLICATE "Duplicate Prescription Detected in Medication Service"


// Instance: ExpTIOperationOutcomeNotPermittedCurrentPrescriptionStatus
// InstanceOf: TIOperationOutcome
// Description: "Operation Not Permitted on Current Prescription Status"
// Usage: #example
// * id = "bef62761-7eea-4daa-a992-36c532232679"
// * issue
//   * severity = #error
//   * code = #processing
//   * details = TIOperationOutcomeDetailsCS#MEDICATIONSVC_PRESCRIPTION_STATUS "Operation Not Permitted on Current Prescription Status"


// Instance: ExpTIOperationOutcomeOperationDispensationNotFound
// InstanceOf: TIOperationOutcome
// Description: "Dispensation Not Found in Medication Service"
// Usage: #example
// * id = "c03670fe-eaf2-4a38-a333-4dc1470072a2"
// * issue
//   * severity = #error
//   * code = #not-found
//   * details = TIOperationOutcomeDetailsCS#MEDICATIONSVC_DISPENSATION_NO_EXIST "Dispensation Not Found in Medication Service"


// Instance: ExpTIOperationOutcomeNotPermittedonCurrentDispensationStatus
// InstanceOf: TIOperationOutcome
// Description: "Operation Not Permitted on Current Dispensation Status"
// Usage: #example
// * id = "a94b020a-2f34-4013-83ea-cf1bd0a92cdd"
// * issue
//   * severity = #error
//   * code = #processing
//   * details = TIOperationOutcomeDetailsCS#MEDICATIONSVC_DISPENSATION_STATUS "Operation Not Permitted on Current Dispensation Status"


// Instance: ExpTIOperationOutcomeUnresolvedReferenceinParameters
// InstanceOf: TIOperationOutcome
// Description: "Unresolved Reference in Parameters"
// Usage: #example
// * id = "e730e451-3a44-4842-a8ed-1517a3334465"
// * issue
//   * severity = #error
//   * code = #processing
//   * details = TIOperationOutcomeDetailsCS#MEDICATIONSVC_PARAMETERS_REFERENCE_NO_EXIST "Unresolved Reference in Parameters"


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
