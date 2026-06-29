CodeSystem: TIEnvironmentsCS
Id: ti-environment-codes
Title: "TI Environments CodeSystem"
Description: "Dieses CodeSystem definiert standardisierte Umgebungskennzeichen für CapabilityStatements des TI-Fachdienstes. Es erlaubt die eindeutige Kennzeichnung, ob die beschriebene Fähigkeit für Produktions-, Referenz-, Test- oder Entwicklungsumgebung gilt."
* insert Meta-CS
// preserve the version of this resource
// * ^version = "1.4.0"
// * ^date = "2026-06-30"
* ^status = #active

* ^caseSensitive = true

* #prod "Produktivumgebung" "Produktive Betriebsumgebung für realen Versorgungseinsatz."
* #ref "Referenzumgebung" "Referenzumgebung für Interoperabilitäts- und Konformitätsabgleiche."
* #test "Testumgebung" "Testumgebung für technische und fachliche Verifikation."
* #dev "Entwicklungsumgebung" "Entwicklungsumgebung für Implementierung und frühe Integrationsprüfung."
