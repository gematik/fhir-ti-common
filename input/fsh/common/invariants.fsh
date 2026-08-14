// Patient

Invariant: pat-de-1
Description: "Die amtliche Differenzierung der Geschlechtsangabe 'other' darf nur gefüllt sein, wenn das Geschlecht 'other' angegeben ist"
* severity = #error
* expression = "gender.exists() and gender='other' implies gender.extension('http://fhir.de/StructureDefinition/gender-amtlich-de').exists()"

Invariant: pat-de-2
Description: "Es muss ein Name ohne use oder ein Name mit use 'official' vorhanden sein."
Severity: #error
Expression: "name.where(use.empty() or use = 'official').exists()"
