Extension: OrderEntryTimeExtension
Id: order-entry-time-extension
Title: "Extension Auftrageingangszeitpunkt"
Description: "Diese Extension bildet einen Auftrageingangszeitpunkt ab."
Context: DiagnosticReport
* insert Meta
* . ^definition = "Diese Extension bildet einen Auftrageingangszeitpunkt ab."
* . ^short = "Auftrageingangszeitpunkt im Labor"
* value[x] only dateTime
* valueDateTime 1..1
