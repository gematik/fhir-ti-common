Invariant: ti-practitioner-name-1
Description: "Jeder Name enthält family, given, text oder die Extension data-absent-reason."
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
