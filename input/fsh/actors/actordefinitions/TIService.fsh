Instance: TIService
InstanceOf: ActorDefinition
Usage: #definition
Title: "TI Service"
Description: """
Ein System, das Schnittstellen für einen TI-gestützten Informationsaustausch bereitstellt.
"""
* insert Meta-Instance

* name = "TIService"
* status = #active
* type = #system
* documentation = """
Der TI Service stellt Schnittstellen oder Dienste bereit, die von einem TI Client aufgerufen
werden können, um Gesundheitsinformationen auszutauschen.

Dieser Actor beschreibt die Service-Rolle eines Systems innerhalb einer
Interaktion. Ein System kann sowohl den Actor TI Client als auch den Actor
TI Service implementieren.
"""