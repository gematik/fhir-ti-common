Instance: TIPPS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Pflegeprimärsystem (PPS)"
Description: """
Ein Primärsystem, das in ambulanten oder stationären Pflegeeinrichtungen zur Unterstützung pflegerischer und administrativer Prozesse eingesetzt wird.
"""
* insert Meta-Instance

* name = "TIPPS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Pflegeprimärsystem (PPS) unterstützt Leistungserbringer in
ambulanten oder stationären Pflegeeinrichtungen bei der Planung,
Durchführung und Dokumentation pflegerischer Maßnahmen sowie bei
Abrechnungs- und Verwaltungsprozessen.

Ein PPS kann als eigenständiges Primärsystem betrieben oder als Subsystem in
ein Krankenhausinformationssystem integriert sein.

Dieser Actor beschreibt die Rolle eines PPS beim Zugriff auf TI Services.
"""