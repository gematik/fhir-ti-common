Extension: ExternalServiceExtension
Id: external-service-extension
Title: "Kennzeichen Fremdleistung"
Description: "Diese Extension bildet eine Kennzeichnung für Fremdleistungen ab."
Context: Observation
* insert Meta
* . ^definition = "Diese Extension bildet ein Kennzeichen Fremdleistung ab."
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* value[x] only boolean
* valueBoolean 1..1
