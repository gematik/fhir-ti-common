Instance: TIHVS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Heilmittelverwaltungssystem (HVS)"
Description: """
Ein Primärsystem, das bei Heilmittelerbringern zur Unterstützung therapeutischer und administrativer Prozesse eingesetzt wird.
"""
* insert Meta-Instance

* name = "TIHVS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Heilmittelverwaltungssystem (HVS) unterstützt Heilmittelerbringer
beispielsweise in der Physiotherapie, Ergotherapie, Podologie oder Logopädie
bei der Verwaltung von Versichertendaten, der Bearbeitung von Verordnungen,
der Dokumentation erbrachter Leistungen sowie bei Abrechnungs- und
Verwaltungsprozessen.

Dieser Actor beschreibt die Rolle eines HVS beim Zugriff auf TI Services.
"""