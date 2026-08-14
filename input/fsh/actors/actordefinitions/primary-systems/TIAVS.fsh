Instance: TIAVS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Apothekenverwaltungssystem (AVS)"
Description: """
Ein Primärsystem, das in öffentlichen oder Krankenhausapotheken zur Unterstützung pharmazeutischer und administrativer Prozesse eingesetzt wird.
"""
* insert Meta-Instance

* name = "TIAVS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Apothekenverwaltungssystem (AVS) unterstützt Leistungserbringer bei der
Verwaltung und Abgabe von Arzneimitteln, der Bearbeitung von Verordnungen,
der Prüfung der Arzneimitteltherapiesicherheit sowie bei Abrechnungs- und
Dokumentationsprozessen.

Dieser Actor beschreibt die Rolle eines AVS beim Zugriff auf TI Services.
"""