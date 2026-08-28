Extension: CriticalResultExtension
Id: critical-result-extension
Title: "Extension Kritischer Befund"
Description: "In dieser Extension kann ein, aus medizinischer Sicht, medizinisch kritischer Befund deklariert werden."
Context: DiagnosticReport
* insert Meta
* . ^definition = "In dieser Extension kann ein, aus medizinischer Sicht, medizinisch kritischer Befund deklariert werden."
* . ^short = "Manuell gesetztes Kennzeichen Kritischer Befund"
* value[x] only boolean
* valueBoolean 1..1
