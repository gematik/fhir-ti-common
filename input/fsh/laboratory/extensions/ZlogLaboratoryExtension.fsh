Extension: ZlogLaboratoryExtension
Id: zlog-laboratory-extension
Title: "zLog-Wert"
Description: "Diese Extension bildet den zlog-Wert ab."
Context: Observation
* insert Meta
* . ^definition = "Diese Extension bildet den zlog-Wert ab."
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* value[x] only decimal
* valueDecimal 1..1
