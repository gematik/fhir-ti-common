Profile: TIFlowOrderTask
Parent: Task
Id: tiflow-order-task
Title: "Task für TIFlow Verordnungen"
Description: "Task für die Verwaltung von Workflows der TIFlow Verordnungen"
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.4.0"
* ^date = "2026-06-30"
* ^status = #draft


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    AccessCode 0..1 and
    Secret 0..1
* identifier[AccessCode] only TIFlowAccessCode 
  * ^short = "AccessCode Identifier"
  * ^definition = "Generiert vom TI-Flow-Fachdienst. Dieser Identifikator muss in jeder Anfrage zur Task Ressource übertragen werden."
  * system 1..
  * system = $GEM_ERP_NS_AccessCode (exactly)
  * value 1..
* identifier[Secret] only TIFlowSecret
* identifier[Secret] 
  * ^short = "Secret"
  * system 1..1
  * value 1..1
* intent = #order (exactly)

* status from TIFlowOrderTaskStatusVS (required)
* status MS
  * ^short = "draft | ready | on-hold | in-progress | completed | cancelled"

* for MS
  * ^short = "Kennung des Begünstigten einer Aufgabe"
  * identifier MS
  * identifier only IdentifierKvid10 or IdentifierTelematikId

// performer, input and output are defined by the respective Workflow
* input MS
* output MS
