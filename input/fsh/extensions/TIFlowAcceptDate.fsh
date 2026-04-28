Extension: TIFlowAcceptDate
Id: tiflow-accept-date
Title: "TI Flow AcceptDate"
Description: "Diese Extension sollte in der Task-Ressource verwendet werden. Sie speichert das Datum, bis zu dem eine Krankenkasse die Verschreibung akzeptiert und bezahlt."
Context: Task

* insert Meta
* insert LegacyERPUrl(StructureDefinition, GEM_ERP_EX_AcceptDate)

* . ^short = "Akzeptanzdatum der Verordnung"
* . ^definition = "Datum, bis zu dem die Verordnung zur Lasten der Krankenkasse eingelöst werden kann."

* value[x] only date
