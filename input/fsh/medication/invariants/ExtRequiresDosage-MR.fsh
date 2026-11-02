Invariant: ExtRequiresDosage-MR
Description: "If a dosage extension (GeneratedDosageInstructionsMeta or renderedDosageInstruction) is present, at least one dosageInstruction must be present."
Severity: #error
Expression: "(
  extension.where(
    url = 'http://ig.fhir.de/igs/medication/StructureDefinition/GeneratedDosageInstructionsMeta' or
    url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction'
  ).exists()
) implies dosageInstruction.exists()"
