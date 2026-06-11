Profile: EPAMedicationDispense
Parent: MedicationDispense
Id: epa-medication-dispense
Title: "EPA MedicationDispense"
Description: "Defines the medication dispense resource for the Medication Service in the ePA system."
* insert Meta-With-Versioning
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-dispense"
// preserve the version
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* extension contains
  RxPrescriptionProcessIdentifierExtension named rxPrescriptionProcessIdentifier 0..1 MS and
  $medicationDispense-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
  GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS

* extension[rxPrescriptionProcessIdentifier]
  * insert ExtensionIdentifierMS

* insert renderedDosageInstructionDefinition

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier 0..
* identifier contains
    RxOriginatorProcessIdentifier 0..1 MS

* identifier[RxOriginatorProcessIdentifier] only RxOriginatorProcessIdentifier
* identifier[RxOriginatorProcessIdentifier] ^patternIdentifier.system = $rx-originator-process-identifier
* identifier[RxOriginatorProcessIdentifier] insert IdentifierMS

* status from $ti-medication-dispense-status-vs
* status ^short = "Status of medication dispense"
* status MS

// This is > ePA 3.1.2
* category MS
  * ^short = "Fehlender oder nicht vorhandener Wert weist auf eine Abgabe mit Verschreibung hin."
* category from $ti-medication-dispense-category-vs
  * ^binding.description = "Definiert den Kontext einer Abgabe: mit oder ohne ärztliche Verschreibung."
  * insert CodeableConceptMS

* medication[x] only Reference
* medicationReference MS
* medicationReference only Reference(Medication)
* medicationReference insert ReferenceMS

* insert Subject(subject)
* performer 1..1 MS
  * actor only Reference(Organization or PractitionerRole)
  * actor MS
  * actor insert ReferenceMS

* authorizingPrescription 0.. MS
  * insert ReferenceMS
  * reference 1..
* authorizingPrescription only Reference(MedicationRequest)
* whenHandedOver 1.. MS
// * dosageInstruction MS
//   * ^short = "Hier werden Informationen zur Dosierung angegeben."
//   * ^definition = "Hier werden Informationen zur Dosierung angegeben."
//   * text 0..1 MS
//   * text ^short = "Hier kann die Dosieranweisung in Form eines Freitextes abgebildet werden."
//   * text ^definition = "Hier kann die Dosieranweisung in Form eines Freitextes abgebildet werden."
* dosageInstruction MS
* dosageInstruction only DosageDgMP
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."
  * insert DosageDgMPMS
* substitution MS
  * wasSubstituted MS
