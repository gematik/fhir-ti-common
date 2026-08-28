// Patient

Invariant: pat-de-2
Description: "Es muss ein Name ohne use oder ein Name mit use 'official' vorhanden sein."
Severity: #error
Expression: "name.where(use.empty() or use = 'official').exists()"