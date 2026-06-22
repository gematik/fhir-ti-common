Extension: PrescriberIDExtension
Id: prescriber-id-extension
Description: "Verschreiber-ID, welche bei der Verordnung bestimmter Präparate anzugeben ist, damit die Apotheke das Rezept beliefern darf."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/prescriber-id-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] 1..
* value[x] only Identifier
* valueIdentifier 1..
* valueIdentifier.use ..0
* valueIdentifier.type ..0
* valueIdentifier.value 1..1
* valueIdentifier.value ^short = "Verschreiber-ID"
* valueIdentifier.value ^definition = "Verschreiber-ID, welche bei der Verordnung bestimmter Präparate anzugeben ist, damit die Apotheke das Rezept beliefern darf."
* valueIdentifier.period ..0
* valueIdentifier.assigner ..0
