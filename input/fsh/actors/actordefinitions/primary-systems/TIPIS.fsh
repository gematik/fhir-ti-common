Instance: TIPIS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Pflegeinformationssystem (PIS)"
Description: """
Ein Primärsystem, das in ambulanten oder stationären Pflegeeinrichtungen zur Unterstützung pflegerischer und administrativer Prozesse eingesetzt wird.
"""
* insert Meta-Instance

* name = "TIPIS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Pflegeinformationssystem (PIS) unterstützt Leistungserbringer in
ambulanten oder stationären Pflegeeinrichtungen bei der Planung,
Durchführung und Dokumentation pflegerischer Maßnahmen sowie bei
Abrechnungs- und Verwaltungsprozessen.

Ein PIS kann als eigenständiges Primärsystem betrieben oder als Subsystem in
ein Krankenhausinformationssystem integriert sein.

Dieser Actor beschreibt die Rolle eines PIS beim Zugriff auf TI Services.
"""