Instance: TIZPVS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Zahnarztpraxisverwaltungssystem (ZPVS)"
Description: """
Ein Primärsystem, das in Zahnarztpraxen zur Unterstützung zahnmedizinischer und administrativer Prozesse eingesetzt wird.
"""
* insert Meta-Instance

* name = "TIZPVS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Zahnarztpraxisverwaltungssystem (ZPVS) unterstützt Leistungserbringer in
Zahnarztpraxen bei der Verwaltung von Versichertendaten, der zahnmedizinischen
Dokumentation, der Behandlungsplanung sowie bei Abrechnungs- und
Verwaltungsprozessen.

Dieser Actor beschreibt die Rolle eines ZPVS beim Zugriff auf TI Services.
"""