Instance: TILIS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Laborinformationssystem (LIS)"
Description: """
Ein Primärsystem, das laboratoriumsmedizinische Untersuchungs-, Befundungs- und Verwaltungsprozesse unterstützt.
"""
* insert Meta-Instance

* name = "TILIS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Laborinformationssystem (LIS) unterstützt Leistungserbringer bei der
Beauftragung, Durchführung, Dokumentation und Befundung
laboratoriumsmedizinischer Untersuchungen.

Ein LIS kann als eigenständiges Primärsystem betrieben oder als Subsystem in
ein Krankenhausinformationssystem oder Praxisverwaltungssystem integriert
sein.

Dieser Actor beschreibt die Rolle eines LIS beim Zugriff auf TI Services.
"""