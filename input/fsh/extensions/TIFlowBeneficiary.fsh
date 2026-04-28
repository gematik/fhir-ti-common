Extension: TIFlowBeneficiary
Id: tiflow-beneficiary
Title: "TIFlow Beneficiary"
Description: "Der Begünstigte (z. B. Apotheke) der Quittung eines TIFlow Vorgangs, der erstellt wird, wenn der Workflow abgeschlossen ist."
Context: Bundle, Composition
* insert Meta
* insert LegacyERPUrl(StructureDefinition, GEM_ERP_EX_Beneficiary)

* . ^short = "The beneficiary of the receipt"
* value[x] only IdentifierTelematikId
