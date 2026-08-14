Instance: TIFdV
InstanceOf: ActorDefinition
Usage: #definition
Title: "Frontend des Versicherten (FdV)"
Description: """
Ein Clientsystem, das Versicherten oder ihren Vertretern den Zugriff auf Anwendungen und Dienste der Telematikinfrastruktur ermöglicht.
"""
* insert Meta-Instance

* name = "TIFdV"
* status = #active
* type = #system
* derivedFrom = Canonical(TIClient)
* documentation = """
Das TI Frontend des Versicherten ermöglicht Versicherten oder ihren Vertretern,
Funktionen von TI-Anwendungen zu nutzen und auf die hierfür bereitgestellten
Schnittstellen von TI Services zuzugreifen.

Dieser Actor beschreibt die allgemeinen Eigenschaften eines Frontends des
Versicherten. Anwendungsspezifische Actors wie das ePA-Frontend des
Versicherten oder das E-Rezept-Frontend des Versicherten können von diesem
Actor abgeleitet werden.
"""