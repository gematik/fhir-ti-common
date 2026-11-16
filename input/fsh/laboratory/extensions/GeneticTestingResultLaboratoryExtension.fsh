Extension: GeneticTestingResultLaboratoryExtension
Id: genetic-testing-result-laboratory-extension
Title: "Kennzeichen Humangenetischer Befund"
Description: "Diese Extension bildet ab, ob der Befund Ergebnisse humangenetischer Untersuchungen enthält."
Context: DiagnosticReport
* insert Meta
* . ^definition = "Diese Extension bildet ab, ob der Befund Ergebnisse humangenetischer Untersuchungen enthält."
// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only boolean
* valueBoolean 1..1
