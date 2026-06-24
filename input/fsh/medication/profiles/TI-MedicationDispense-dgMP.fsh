Profile: TIMedicationDispenseDgMP
Parent: MedicationDispense
Id: ti-medication-dispense-dgmp
Title: "TI MedicationDispense dgMP"
Description: "Defines the medication dispense resource for the Medication Service in the TI ecosystem."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.4.0"
// * ^date = "2026-06-30"
* ^status = #active

* extension contains
  RxPrescriptionProcessIdentifierExtension named rxPrescriptionProcessIdentifier 0..1 and
  $medicationDispense-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
  GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS

* insert renderedDosageInstructionDefinition

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier 0..
* identifier contains RxOriginatorProcessIdentifier 0..1

* identifier[RxOriginatorProcessIdentifier] only RxOriginatorProcessIdentifier
* identifier[RxOriginatorProcessIdentifier] ^patternIdentifier.system = $rx-originator-process-identifier

* status from $ti-medication-dispense-status-vs
* status ^short = "Status of medication dispense"
* status MS

// This is > ePA 3.1.2
* category MS
  * ^short = "Fehlender oder nicht vorhandener Wert weist auf eine Abgabe mit Verschreibung hin."
* category from $ti-medication-dispense-category-vs
  * ^binding.description = "Definiert den Kontext einer Abgabe: mit oder ohne ärztliche Verschreibung."

* medication[x] only Reference
* medicationReference MS
* medicationReference only Reference(Medication)

* insert Subject(subject)

* performer 1..1 MS
  * actor only Reference(Organization or PractitionerRole)

* authorizingPrescription 0.. MS
* authorizingPrescription only Reference(MedicationRequest)
  * reference 1.. MS

* whenHandedOver 1.. MS
// * dosageInstruction
//   * ^short = "Hier werden Informationen zur Dosierung angegeben."
//   * ^definition = "Hier werden Informationen zur Dosierung angegeben."
//   * text 0..1
//   * text ^short = "Hier kann die Dosieranweisung in Form eines Freitextes abgebildet werden."
//   * text ^definition = "Hier kann die Dosieranweisung in Form eines Freitextes abgebildet werden."
* dosageInstruction MS
* dosageInstruction only DosageDE
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."

* substitution MS