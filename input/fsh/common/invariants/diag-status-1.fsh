Invariant: diag-status-1
Description: "A secondary status can only be provided if the diagnostic report status is either \"partial\" or \"preliminary\"."
Severity: #error
Expression: "status in ('registered'|'final'|'amended'|'corrected'|'appended'|'cancelled'|'entered-in-error'|'unknown') implies extension('https://gematik.de/fhir/ti/StructureDefinition/secondary-status-extension').empty()"
