Instance: TIPVS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Praxisverwaltungssystem (PVS)"
Description: """
Ein Primärsystem, das in ärztlichen oder psychotherapeutischen Praxen zur Unterstützung medizinischer und administrativer Prozesse eingesetzt wird.
"""
* insert Meta-Instance

* name = "TIPVS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Praxisverwaltungssystem (PVS) unterstützt Leistungserbringer in ärztlichen
oder psychotherapeutischen Praxen bei der Verwaltung von Versichertendaten,
der Dokumentation von Behandlungen, der Verordnung von Leistungen sowie bei
Abrechnungs- und Verwaltungsprozessen.

Dieser Actor beschreibt die Rolle eines PVS beim Zugriff auf TI Services.
Spezialisierte Praxisverwaltungssysteme können von diesem Actor abgeleitet
werden.
"""