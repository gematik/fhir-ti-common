Extension: SecondaryStatusExtension
Id: secondary-status-extension
Title: "Extension Sekundärstatus"
Description: "In dieser Extension kann eine optionale sekundäre Angabe des Änderungsstatus, zusätzlich zum Hauptstatus des Gesamtbefundes angegeben werden"
Context: DiagnosticReport
* insert Meta
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* . ^definition = "In dieser Extension kann eine optionale sekundäre Angabe des Änderungsstatus, zusätzlich zum Hauptstatus 'Status Gesamtbefund' angegeben werden"
* . ^short = "Änderungsstatus Befund (Sekundärstatus)"
* value[x] only Coding
* valueCoding from $ti-vs-secondary-status (required)
* valueCoding 1..1
  * system 1..1 
  * version ..1
  * code 1..1
  * display 1..1
