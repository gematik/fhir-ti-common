Extension: PatientIDExtension
Id: patient-id-extension
Description: "Patienten-ID, welche bei der Verordnung bestimmter Arzneimittel angegeben werden kann."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/patient-id-extension"
// preserve the version
* ^version = "1.4.1"
* ^date = "2026-11-25"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] 1.. MS
* value[x] only Identifier
* valueIdentifier 1.. MS
* valueIdentifier.use ..0
* valueIdentifier.type ..0
* valueIdentifier.value 1..1
* valueIdentifier.value ^short = "Patienten-ID"
* valueIdentifier.value ^definition = "Patienten-ID, welche bei der Verordnung bestimmter Arzneimittel angegeben werden kann."
* valueIdentifier.period ..0
* valueIdentifier.assigner ..0
