Instance: TIKIS
InstanceOf: ActorDefinition
Usage: #definition
Title: "Krankenhausinformationssystem (KIS)"
Description: """
Ein Primärsystem, das in Krankenhäusern zur Unterstützung medizinischer, pflegerischer und administrativer Prozesse eingesetzt wird.
"""
* insert Meta-Instance

* name = "TIKIS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIPrimarySystem)
* documentation = """
Ein Krankenhausinformationssystem (KIS) unterstützt die Verarbeitung und
Verwaltung medizinischer, pflegerischer und administrativer Informationen
innerhalb eines Krankenhauses.

Ein KIS kann aus mehreren spezialisierten Subsystemen bestehen oder diese
integrieren.

Dieser Actor beschreibt die Rolle eines KIS beim Zugriff auf TI Services.
"""