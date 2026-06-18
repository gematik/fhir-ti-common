Alias: $GEM_ERP_NS_AccessCode = https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_AccessCode

Profile: TIFlowAccessCode
Parent: Identifier
Id: tiflow-access-code
Title: "Profil für den TIFlow AccessCode"
Description: "Der AccessCode ist ein generiertes Geheimnis, das Zugriff auf eine Ressource gewährt, z. B. Task."
* insert Meta
// * insert LegacyERPUrl(StructureDefinition, GEM_ERP_PR_AccessCode)
* use = #official (exactly)
* system 1.. MS
* system = $GEM_ERP_NS_AccessCode (exactly)
* value 1.. MS
  * ^comment = "Das Datenmodell ist in der Spezifikation für den TIFlow-Fachdienst zu finden."
