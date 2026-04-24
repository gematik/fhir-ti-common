CodeSystem: TIEnvironmentsCS
Id: ti-environment-codes
Title: "TI Environments CodeSystem"
Description: "Dieses CodeSystem definiert standardisierte Umgebungskennzeichen für CapabilityStatements des TI-Flow-Fachdienstes. Es erlaubt die eindeutige Kennzeichnung, ob die beschriebene Fähigkeit für Produktions-, Referenz-, Test- oder Entwicklungsumgebung gilt."
* insert Meta-CS
// preserve the version of this resource
* ^version = "1.0.0"
* ^date = "2026-06-01"
* ^status = #active

* ^caseSensitive = true

* #PU "Produktivumgebung" "Produktive Betriebsumgebung für realen Versorgungseinsatz."
* #RU "Referenzumgebung" "Referenzumgebung für Interoperabilitäts- und Konformitätsabgleiche."
* #TU "Testumgebung" "Testumgebung für technische und fachliche Verifikation."
* #DEV "Entwicklungsumgebung" "Entwicklungsumgebung für Implementierung und frühe Integrationsprüfung."
