Invariant: obs-alt-result-2
Description: "Sind Richtgrenzen in einer Alternativeinheit angegeben, ist höchstens ein Referenzbereich zulässig."
Severity: #error
Expression: "extension('https://gematik.de/fhir/ti/StructureDefinition/alternative-result-laboratory-extension').extension('referenceRange').exists() implies referenceRange.count() <= 1"
