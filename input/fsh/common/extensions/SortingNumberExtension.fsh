Extension: SortingNumberExtension
Id: sorting-number-extension
Title: "Extension Sortiernummer"
Description: "Diese Extension bildet eine Sortiernummer ab."
Context: Observation.hasMember, DiagnosticReport.result, Composition.section.entry
* insert Meta
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* . ^definition = "Diese Extension bildet eine Sortiernummer ab. Zu jeder Untersuchungsgruppe gibt es immer eine Sortiernummer. Die mit dem Datenstrom mitgegebenen Sortiernummern sind als Standardsortierung gedacht. Die Standardsortierung legt das Befund-erstellende Labor fest. "
* value[x] only positiveInt
* valuePositiveInt 1..1
