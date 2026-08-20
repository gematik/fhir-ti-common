Instance: TIPayerSystem
InstanceOf: ActorDefinition
Usage: #definition
Title: "Kostenträgersystem"
Description: """
Ein System eines Kostenträgers, das auf Dienste und Schnittstellen der Telematikinfrastruktur zugreift.
"""
* insert Meta-Instance

* name = "TIPayerSystem"
* status = #active
* type = #system
* derivedFrom = Canonical(TIClient)
* documentation = """
Ein TI Kostenträgersystem unterstützt einen Kostenträger bei der Verarbeitung
von Informationen im Rahmen von Versorgungs-, Genehmigungs- oder
Abrechnungsprozessen und greift hierfür auf Dienste und Schnittstellen der
Telematikinfrastruktur zu.

Dieser Akteur beschreibt die Client-Rolle eines Systems eines Kostenträgers.
Anwendungsspezifische Akteure können von diesem Akteur abgeleitet werden.

Sofern ein Kostenträgersystem selbst Schnittstellen oder Dienste in der TI
bereitstellt, kann es zusätzlich den Akteur TI Service implementieren.
"""