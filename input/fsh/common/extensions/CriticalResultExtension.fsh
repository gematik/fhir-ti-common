Extension: CriticalResultExtension
Id: critical-result-extension
Title: "Extension Kritischer Befund"
Description: "In dieser Extension kann ein, aus medizinischer Sicht, medizinisch kritischer Befund deklariert werden."
Context: DiagnosticReport
* insert Meta
* . ^definition = "In dieser Extension kann ein, aus medizinischer Sicht, medizinisch kritischer Befund deklariert werden."
* . ^short = "Manuell gesetztes Kennzeichen Kritischer Befund"
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* value[x] only boolean
* valueBoolean 1..1
