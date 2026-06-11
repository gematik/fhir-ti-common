CodeSystem: ContextCodeCS
Id: context-code
Title: "Context Codes"
Description: "Codes that define the context of a resource instance in the ePA context"
* insert Meta-CS
* ^url = "https://gematik.de/fhir/epa-medication/CodeSystem/context-code"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* ^valueSet = Canonical(ContextCodeVS)

* #PRESCRIPTION "Prescription" "Belongs to ePrescription process"
* #PRESCRIPTION insert Designation(de-DE, Verschreibung)
* #MANUAL "Manual Entry" "Is a manual entry"
* #MANUAL insert Designation(de-DE, Nachtrag)
* #EMP "eMP" "Electronic medication plan"
* #EMP insert Designation(de-DE, eMP)
