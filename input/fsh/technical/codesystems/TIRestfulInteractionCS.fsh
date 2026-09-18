CodeSystem: TIRestfulInteractionCS
Id: ti-restful-interaction-cs
Title: "TI Restful Interaction CodeSystem"
Description: "Ergänzt die standardisierten FHIR REST-Interaktionen um weitere ressourcenbezogene Interaktionen."
* insert Meta-CS
// preserve the version of this resource
* ^version = "1.4.0"
* ^date = "2026-09-23"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true


* #conditional-create "Conditional Create"
  "Bedingtes Erstellen einer Ressource."

* #conditional-read "Conditional Read"
  "Bedingtes Lesen einer Ressource."

* #conditional-update "Conditional Update"
  "Bedingtes Aktualisieren einer Ressource anhand von Suchkriterien."

* #conditional-delete "Conditional Delete"
  "Bedingtes Löschen einer oder mehrerer Ressourcen anhand von Suchkriterien."
