// TODO: Move to de.gematik.terminology

ValueSet: DataAbsentReasonLaboratoryVS
Id: data-absent-reason-laboratory
Title: "Nichtvorhandensein LOINC®"
Description: "Dieses Valueset enthält die Codes zur Beschreibung von Nichtvorhandensein LOINC®."
* insert Meta-VS
* ^copyright = "This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: https://terminology.hl7.org/license.html"
* $cs-data-absent-reason|4.0.1#unknown "Unknown"
* $cs-data-absent-reason|4.0.1#not-applicable "Not Applicable"
* ^expansion.identifier = "urn:uuid:710ff40f-a75c-11f1-ba09-005056ad42c6"
* ^expansion.timestamp = 2026-09-03T07:58:10+02:00
* ^expansion.total = 2
* ^expansion.offset = 0
* ^expansion.contains[+].system = $cs-data-absent-reason
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #unknown
* ^expansion.contains[=].display = "Unknown"
* ^expansion.contains[+].system = $cs-data-absent-reason
* ^expansion.contains[=].version = "4.0.1"
* ^expansion.contains[=].code = #not-applicable
* ^expansion.contains[=].display = "Not Applicable"