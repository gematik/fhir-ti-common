CodeSystem: ContextCodeCS
Id: context-code
Title: "Context Codes"
Description: "Codes that define the context of a resource instance in the ePA context"
* insert Meta-CS
* ^url = "https://gematik.de/fhir/epa-medication/CodeSystem/context-code"
// preserve the version
* ^version = "1.4.1"
* ^date = "2026-11-25"
* ^status = #active

* ^valueSet = Canonical(ContextCodeVS)

* #PRESCRIPTION "Prescription" "Belongs to ePrescription process"
  * ^designation.language = #de-DE
  * ^designation.value = "Verschreibung"
* #MANUAL "Manual Entry" "Is a manual entry"
  * ^designation.language = #de-DE
  * ^designation.value = "Nachtrag"
* #EMP "eMP" "Electronic medication plan"
  * ^designation.language = #de-DE
  * ^designation.value = "eMP"
