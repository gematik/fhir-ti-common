Profile: TIFlowSecret
Parent: Identifier
Id: tiflow-secret
Title: "TI Flow Secret"
Description: "Das Secret ist ein generiertes Geheimnis, das Zugriff auf eine TIFlow Verordnung gewährt, z. B. Task."
* insert Meta
* insert LegacyERPUrl(StructureDefinition, GEM_ERP_PR_Secret)
* use = #official (exactly)
* system 1.. MS
* system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_Secret" (exactly)
* value 1.. MS
  * ^short = "Secret für den annehmenden Bearbeiter."
  * ^definition = "Das Secret, das der Bearbeiter erhält, wenn ein Vorgang vom TI-Flow-Fachdienst angenommen wird."
