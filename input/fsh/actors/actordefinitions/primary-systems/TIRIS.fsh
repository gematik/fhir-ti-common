Instance: TIRIS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Radiologieinformationssystem (RIS)"
Description: """
Ein Primärsystem, das radiologische Untersuchungs-, Befundungs- und Verwaltungsprozesse unterstützt.
"""
* insert Meta-Instance

* name = "TIRIS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Radiologieinformationssystem (RIS) unterstützt Leistungserbringer bei der
Planung, Durchführung, Dokumentation und Befundung radiologischer
Untersuchungen.

Ein RIS kann als eigenständiges Primärsystem betrieben oder als Subsystem in
ein Krankenhausinformationssystem oder Praxisverwaltungssystem integriert
sein.

Dieser Actor beschreibt die Rolle eines RIS beim Zugriff auf TI Services.
"""