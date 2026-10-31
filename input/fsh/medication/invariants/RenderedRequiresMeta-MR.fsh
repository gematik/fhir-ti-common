Invariant: RenderedRequiresMeta-MR
Description: "If the renderedDosageInstruction extension is present, the GeneratedDosageInstructionsMeta extension must be present."
Severity: #error
Expression: "(
  extension.where(
    url = 'http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction'
  ).exists()
) implies extension.where(url = 'http://ig.fhir.de/igs/medication/StructureDefinition/GeneratedDosageInstructionsMeta').exists()"
