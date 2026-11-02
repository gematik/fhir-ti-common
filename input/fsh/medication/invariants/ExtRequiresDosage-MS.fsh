Invariant: ExtRequiresDosage-MS
Description: "If a dosage extension (GeneratedDosageInstructionsMeta or renderedDosageInstruction) is present, at least one dosage must be present."
Severity: #error
Expression: "(
  extension.where(
    url = 'http://ig.fhir.de/igs/medication/StructureDefinition/GeneratedDosageInstructionsMeta' or
    url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.renderedDosageInstruction'
  ).exists()
) implies dosage.exists()"
