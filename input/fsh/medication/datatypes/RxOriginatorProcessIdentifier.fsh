Profile: RxOriginatorProcessIdentifier
Parent: Identifier
Id: rx-originator-process-identifier
Description: "The RxOriginatorProcessIdentifier, generated within the Medication Service, links the prescriptionID from the E-Rezept-Fachdienst with the original input FHIR resource ID, facilitating accurate tracking and utilization of medication data in operational processes within digital healthcare systems."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/rx-originator-process-identifier"
// preserve the version
// * ^version = "1.0.6-2"
// * ^date = "2025-05-12"
* ^status = #active

* system 1..1 MS
* system = $rx-originator-process-identifier
* value 1.. MS
