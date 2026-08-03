Invariant: diag-status-1
Description: "A secondary status can only be provided if the diagnostic report status is either \"partial\" or \"preliminary\"."
Severity: #error
Expression: "status in ('registered'|'final'|'cancelled'|'entered-in-error') implies extension('https://fhir.kbv.de/StructureDefinition/KBV_EX_MIO_LAB_Secondary_Status').empty()"
