Profile: EMPMedication
Parent: EPAMedication
Id: emp-medication
Title: "eMP Medication"
Description: "Defines the medication resource for the Medication Service in the ePA system in the eMP context."
* insert Meta-With-Versioning
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/emp-medication"
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* extension contains
  ContextExtension named context 1..1 MS

* extension[context]
  * insert ExtensionCodeMS
  * valueCode = #EMP
