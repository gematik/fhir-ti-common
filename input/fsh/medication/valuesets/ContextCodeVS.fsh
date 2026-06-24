ValueSet: ContextCodeVS
Id: context-code
Title: "Context Codes"
Description: "Codes that define the context of a resource instance in the ePA context"
* insert Meta-VS
// preserve the version
* ^version = "1.4.0"
// * ^date = "2025-12-15"
* ^status = #active

* include codes from system ContextCodeCS

* insert ExpansionTimestamp

// expansion of explicitly defined codes
* insert ExpansionCanonical(ContextCodeCS, PRESCRIPTION, [[Prescription]])
* insert ExpansionDesignation(de-DE, [[Verschreibung]])

* insert ExpansionCanonical(ContextCodeCS, MANUAL, [[Manual Entry]])
* insert ExpansionDesignation(de-DE, [[Nachtrag]])

* insert ExpansionCanonical(ContextCodeCS, EMP, [[eMP]])
* insert ExpansionDesignation(de-DE, [[eMP]])