Profile: TIWorkflowCommunication
Parent: Communication
Id: ti-workflow-communication
Title: "Generische TI-Workflow Communication"
Description: "Generische TI-Workflow Communication"
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.4.0"
* ^date = "2026-06-30"
* ^status = #draft

* basedOn only Reference(Task)
* basedOn ^type.aggregation = #referenced

* status MS
* status = #unknown (exactly)
  * ^comment = "Muss standardmäßig laut FHIR Core Specification angegeben werden, wird jedoch während des Lebenszyklus der Ressource nicht verändert."
* sent MS
  * ^short = "Der Zeitpunkt, zu dem diese Kommunikation gesendet wurde."
  * ^comment = "Wird vom Fachdienst gesetzt. Ein Client hat diesen Wert daher immer verfügbar."
* received MS
  * ^short = "Der Zeitpunkt, zu dem diese Kommunikation empfangen wurde."
  * ^comment = "Wird vom Fachdienst gesetzt. Ein Client hat diesen Wert daher immer verfügbar."

* recipient MS
  * ^short = "Die Entität (z. B. Person, Organisation), die Ziel der Kommunikation war."
  * ^comment = "Muss vom Absender der Kommunikation gesetzt werden, um das Ziel festzulegen."

* sender MS
  * ^short = "Die Entität (z. B. Person, Organisation), die Quelle der Kommunikation war."
  * ^comment = "Wird vom Fachdienst gesetzt."
  * ^definition = "Nachrichtenabsender — wird vom Fachdienst gesetzt.\r\nDie Entität (z. B. Person, Organisation), die Quelle der Kommunikation war."
* payload MS
  * content[x]
    * ^short = "Der tatsächliche Inhalt der Nachricht"
    * ^comment = "Der tatsächliche Inhalt der Nachricht"
