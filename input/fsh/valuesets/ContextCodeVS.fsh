ValueSet: ContextCodeVS
Id: context-code
Title: "Context Codes"
Description: "Codes that define the context of a resource instance in the ePA context"
* insert Meta-VS
* ^url = "https://gematik.de/fhir/epa-medication/ValueSet/context-code"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* include codes from system ContextCodeCS

* insert ExpansionTimestamp(2025-07-24)

// expansion of explicitly defined codes
* insert ExpansionCanonical(ContextCodeCS, PRESCRIPTION, [[Prescription]])
* insert ExpansionDesignation(de-DE, [[Verschreibung]])

* insert ExpansionCanonical(ContextCodeCS, MANUAL, [[Manual Entry]])
* insert ExpansionDesignation(de-DE, [[Nachtrag]])

* insert ExpansionCanonical(ContextCodeCS, EMP, [[eMP]])
* insert ExpansionDesignation(de-DE, [[eMP]])
