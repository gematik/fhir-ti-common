Extension: OrderEntryTimeExtension
Id: order-entry-time-extension
Title: "Extension Auftrageingangszeitpunkt"
Description: "Diese Extension bildet einen Auftrageingangszeitpunkt ab."
Context: DiagnosticReport
* insert Meta
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* . ^definition = "Diese Extension bildet einen Auftrageingangszeitpunkt ab."
* . ^short = "Auftrageingangszeitpunkt"
* value[x] only dateTime
* valueDateTime 1..1
