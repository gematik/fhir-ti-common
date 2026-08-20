Instance: TIPrimarySystem
InstanceOf: ActorDefinition
Usage: #definition
Title: "Primärsystem"
Description: """
Ein dezentrales Clientsystem, das von Leistungserbringern in ihrer Einrichtung genutzt wird und auf Dienste der Telematikinfrastruktur zugreift.
"""
* insert Meta-Instance

* name = "TIPS"
* status = #active
* type = #system
* derivedFrom = Canonical(TIClient)
* documentation = """
Das TI Primärsystem unterstützt Leistungserbringer bei der Verwaltung und
Verarbeitung medizinischer oder administrativer Informationen und greift
hierzu auf Schnittstellen von TI Services zu.

Dieser Actor beschreibt die allgemeinen Eigenschaften eines Primärsystems.
Konkretere Primärsystemtypen wie Praxisverwaltungssysteme,
Zahnarztpraxisverwaltungssysteme, Krankenhausinformationssysteme,
Apothekenverwaltungssysteme oder Laborinformationssysteme können von diesem
Actor abgeleitet werden.
"""