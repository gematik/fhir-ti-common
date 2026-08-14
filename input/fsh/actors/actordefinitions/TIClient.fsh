Instance: TIClient
InstanceOf: ActorDefinition
Usage: #definition
Title: "TI Client"
Description: """
Ein System, das in einem TI-gestützten Informationsaustausch als Client agiert.
"""
* insert Meta-Instance

* name = "TIClient"
* status = #active
* type = #system
* documentation = """
Der TI Client ruft Schnittstellen auf, die von einem TI Service bereitgestellt
werden, um Gesundheitsinformationen auszutauschen.

Dieser Actor beschreibt die Client-Rolle eines Systems innerhalb einer
Interaktion. Ein System kann sowohl den Actor TI Client als auch den Actor
TI Service implementieren.
"""