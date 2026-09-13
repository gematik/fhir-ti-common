Extension: AssociationServiceLaboratoryExtension
Id: association-service-laboratory-extension
Title: "Kennzeichen Verbundleistung"
Description: "Diese Extension bildet eine Kennzeichnung für Verbundleistungen ab."
Context: Observation
* insert Meta
* . ^definition = "Diese Extension bildet ein Kennzeichen Verbundleistung ab."
// preserve the version
* ^version = "1.5.0"
* ^date = "2026-11-16"
* ^status = #active

* value[x] only boolean
* valueBoolean 1..1
