Extension: TIEnvironment
Id: ti-environment
Title: "TI Environment"
Description: "Diese Extension kennzeichnet die Zielumgebung eines konkreten CapabilityStatements (z. B. Produktiv-, Referenz-, Test- oder Entwicklungsumgebung). Die Information hilft Clients, deklarierte Fähigkeiten im richtigen betrieblichen Kontext zu interpretieren."
Context: CapabilityStatement
* insert Meta

// preserve the version of this resource
* ^version = "1.0.0"
* ^date = "2026-06-01"
* ^status = #active

* . ^short = "Umgebungskennzeichen für ein CapabilityStatement"
* . ^definition = "Kennzeichnet die Betriebsumgebung, für die die in diesem CapabilityStatement beschriebenen Fähigkeiten gelten."
* . ^comment = "Empfohlen für jede Server-Instanz, damit die Fähigkeitsdeklaration eindeutig einer Umgebung zugeordnet werden kann."

* value[x] only code
* valueCode 1..1
* valueCode from TIEnvironmentsVS (required)
  * ^short = "Code der Zielumgebung"
  * ^definition = "Umgebungscode gemäß TIEnvironmentsVS (bspw. PU, RU, TU, DEV)."
  * ^comment = "Der Code beschreibt die Umgebung des konkreten Endpoints, nicht die generische Spezifikation."
