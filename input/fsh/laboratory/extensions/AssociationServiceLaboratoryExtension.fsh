Extension: AssociationServiceLaboratoryExtension
Id: association-service-laboratory-extension
Title: "Kennzeichen Verbundleistung"
Description: "Diese Extension bildet eine Kennzeichnung für Verbundleistungen ab."
Context: Observation
* insert Meta
* . ^definition = "Diese Extension bildet ein Kennzeichen Verbundleistung ab."
// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only boolean
* valueBoolean 1..1
* valueBoolean ^short = "Kennzeichen Verbundleistung"
* valueBoolean ^definition = "true: Die Fremdleistung wurde von einem anderen Labor aus dem eigenen Verbund durchgeführt. false: Es handelt sich nicht um eine Verbundleistung. Fehlt die Extension, gilt dasselbe wie bei false. Ob eine Fremdleistung vorliegt, gibt das Kennzeichen Fremdleistung an."
