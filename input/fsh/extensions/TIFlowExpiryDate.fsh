Extension: TIFlowExpiryDate
Id: tiflow-expiry-date
Title: "TI Flow ExpiryDate"
Description: "Diese Erweiterung sollte in der Task-Ressource verwendet werden. Sie zeigt das Ablaufdatum des Rezepts an."
Context: Task

* insert Meta
* insert LegacyERPUrl(StructureDefinition, GEM_ERP_EX_ExpiryDate)
* . ^short = "Ablaufdatum der Verordnung im TI-Flow-Fachdienst"
* . ^definition = "Datum, an dem eine Verordnung abläuft und nicht mehr eingelöst werden kann."
* value[x] only date
