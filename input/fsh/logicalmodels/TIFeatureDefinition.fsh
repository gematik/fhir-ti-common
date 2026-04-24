Logical: TIFeatureDefinition
Id: ti-feature-definition
Title: "TI Feature Definition"
Description: "Logical Model zur Beschreibung eines aktivierbaren Features."

* url 1..1 uri "Canonical-URL des Features"
* name 1..1 string "Maschinell verarbeitbarer Name"
* title 1..1 string "Menschenlesbarer Titel"
* status 1..1 code "draft | active | retired"
* description 0..1 markdown "Fachliche Beschreibung"
* valueType 1..1 code "boolean | code | Coding — Typ des value-Felds"
* context 1..* uri "Element-Kontexte im CapabilityStatement"