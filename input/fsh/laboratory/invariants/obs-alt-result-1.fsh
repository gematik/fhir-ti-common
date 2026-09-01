Invariant: obs-alt-result-1
Description: "The extension AlternativeResultLaboratoryExtension SHALL not be used if Observation.code.coding is not provided."
Severity: #error
Expression: "extension('https://gematik.de/fhir/ti/StructureDefinition/alternative-result-laboratory-extension').exists() implies code.coding.exists()"