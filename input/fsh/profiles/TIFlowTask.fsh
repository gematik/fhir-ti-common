Profile: TIFlowTask
Parent: Task
Id: ti-task
Title: "Task für TIFlow Anwendungen"
Description: "Task für die Verwaltung von Workflows der TIFlow Anwendungen"
* insert Meta
// preserve the version of this resource
* ^version = "1.0.0"
* ^date = "2026-06-01"
* ^status = #active

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.description = "Erweiterungen für die Aufgabe, die durch url unterschieden werden."
* extension ^slicing.rules = #open
* extension ^slicing.ordered = false

* extension contains TIFlowType named flowType 1..1 MS

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.description = "Die Task-Ressource enthält zwei Kennungen. Die erste ist die Kennung für den Task, die einen Vorgang im TIFlow darstellt. Die andere Kennung repräsentiert den Patienten als Eigentümer des Vorgangs via Krankenversichertennummer (KVNR)"
* identifier ^slicing.rules = #open
* identifier contains
    PrescriptionID 1..1 and
    AccessCode 0..1 and
    Secret 0..1
* identifier[PrescriptionID] only EPrescriptionId
  * ^short = "E-Rezept-ID"
  * ^definition = "Die E-Rezept-ID ist der Hauptidentifikator für die Task Ressource und den gesamten TIFlow Workflow. Dieser Identifikator wird vom TI-Flow-Fachdienst generiert und darf nicht manuell geändert werden."
* identifier[AccessCode] 
* identifier[AccessCode] only TIFlowAccessCode 
  * ^short = "AccessCode Identifier"
  * ^definition = "Generiert vom TI-Flow-Fachdienst. Dieser Identifikator muss in jeder Anfrage zur Task Ressource übertragen werden."
  * system 1..
  * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode" (exactly)
  * value 1..
* identifier[Secret] only TIFlowSecret
* identifier[Secret] 
  * ^short = "Secret"
  * system 1..1
  * value 1..1
* intent = #order (exactly)

* for ^short = "Kennung des Begünstigten einer Aufgabe"
* for.identifier only IdentifierKvid10 or IdentifierTelematikId

// performer, input and output are defined by the respective Workflow
