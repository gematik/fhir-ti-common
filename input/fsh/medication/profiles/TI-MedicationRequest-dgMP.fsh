Profile: TIMedicationRequestDgMP
Parent: MedicationRequest
Id: ti-medication-request-dgmp
Title: "TI MedicationRequest dgMP"
Description: "Defines the medication request resource for the Medication Service in the TI ecosystem."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.0.0"
* ^date = "2026-06-30"
* ^status = #active

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "ePrescription identifier and overall transaction identifier"
* identifier ^slicing.ordered = false
* identifier 0..
* identifier contains
    RxPrescriptionProcessIdentifier 0..1 and
    RxOriginatorProcessIdentifier 0..1
* identifier[RxPrescriptionProcessIdentifier] only RxPrescriptionProcessIdentifier
* identifier[RxPrescriptionProcessIdentifier] ^patternIdentifier.system = $rx-prescription-process-identifier

* identifier[RxOriginatorProcessIdentifier] only RxOriginatorProcessIdentifier
* identifier[RxOriginatorProcessIdentifier] ^patternIdentifier.system = $rx-originator-process-identifier

* extension contains
    MultiplePrescriptionExtension named multiplePrescription 0..1 and
    IndicatorBVGExtension named isBvg 0..1 and
    IndicatorSERExtension named isSer 0..1 and
    PrescriberIDExtension named prescriberID 0..1 and
    PatientIDExtension named patientID 0..1 and
    NarcoticsExtension named narcotics 0..1 and
    TeratogenicExtension named teratogenic 0..1 and
    $medicationRequest-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 and
    GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1

* extension[narcotics]
  * ^short = "Betäubungsmittel (BtM)"
  * ^definition = "Abbildung der Angaben zur Verordnung eines Betäubungsmittels im Sinne des Betäubungsmittelgesetzes (BtMG)"

* extension[teratogenic]
  * ^short = "T-Rezept"
  * ^definition = "Abbildung der Angaben zur Verordnung eines teratogenen Arzneimittels (T-Rezept)"

* extension[multiplePrescription] MS
  * extension[indicator] MS
    * value[x] only boolean
  * extension[counter] MS
    * value[x] only Ratio
  * extension[period] MS
    * value[x] only Period
  * extension[id] MS
    * value[x] only Identifier

* insert renderedDosageInstructionDefinition

* status from $ti-medication-request-status-vs
* status ^short = "Status of Medication Request"

* intent ^short = "filler-order"
* intent ^definition = "e.g. when data is synchronized with the E-Rezept-Fachdienst, the 'filler-order' code should be used here."

* insert Subject(subject)

* medication[x] only Reference
* medicationReference only Reference(Medication)
* medicationReference insert ReferenceMS

* requester only Reference(Organization or Practitioner or PractitionerRole)
* requester insert ReferenceMS
* authoredOn 1..
* authoredOn ^short = "Issue Date"
* authoredOn ^definition = "Issue Date of the Prescription"

* note ..1
  * insert AnnotationMS
  * text ^short = "Dispensing Note"
  * text ^definition = "Instructions to the pharmacy that go beyond the dosage information"

* dosageInstruction only DosageDgMP
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."
  * insert DosageDgMPMS

* dispenseRequest 0..
  * quantity 0..
    * value 1..
    * value ^short = "Number of Prescribed Packages"
    * value ^definition = "Number of Prescribed Packages"
    * system 0..1
    * system = $cs-ucum
    * code 0..
    // * code = #{Package}

* substitution
  * allowed[x] only boolean
  * allowedBoolean 1..

* basedOn only Reference(MedicationRequest)
* basedOn.identifier only MedicationPlanIdentifier
