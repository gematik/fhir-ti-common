Profile: EPAMedicationUniqueIdentifier
Parent: Identifier
Id: epa-medication-unique-identifier
Title: "Medication Unique Identifier"
Description: "This unique identifier is generated within the Medication Service. It is either a hash derived from a specific set of data elements of the Medication resource or a direct repetition of a single data element. This identifier ensures the distinct identification of Medication resources across the ePA system."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-unique-identifier"
// preserve the version
* ^version = "1.0.6-2"
* ^date = "2025-05-12"
* ^status = #active

* system 1..1 MS
* system = $epa-medication-unique-identifier
* value 1.. MS
