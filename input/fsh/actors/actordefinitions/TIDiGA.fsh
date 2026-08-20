Instance: TIDiGA
InstanceOf: ActorDefinition
Usage: #definition
Title: "Digitale Gesundheitsanwendung (DiGA)"
Description: """
Eine digitale Gesundheitsanwendung, die im Rahmen eines TI-gestützten Informationsaustauschs auf Dienste der Telematikinfrastruktur zugreift.
"""
* insert Meta-Instance

* name = "TIDiGA"
* status = #active
* type = #system
* derivedFrom = Canonical(TIClient)
* documentation = """
Digitale Gesundheitsanwendungen (DiGA), auch als Apps auf Rezept bezeichnet,
sind CE-gekennzeichnete digitale Medizinprodukte.

Dieser Actor beschreibt die Client-Rolle einer DiGA, die Schnittstellen von
TI Services aufruft. Anwendungsspezifische Actors können von diesem Actor
abgeleitet werden.
"""