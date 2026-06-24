Profile: TIMedicationRequestDgMP
Parent: MedicationRequest
Id: ti-medication-request-dgmp
Title: "TI MedicationRequest dgMP"
Description: "Defines the medication request resource for the Medication Service in the TI ecosystem."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.4.0"
// * ^date = "2026-06-30"
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
  ContextExtension named context 0..1 MS and
  MultiplePrescriptionExtension named multiplePrescription 0..1 MS and
  IndicatorBVGExtension named isBvg 0..1 MS and
  IndicatorSERExtension named isSer 0..1 MS and
  PrescriberIDExtension named prescriberID 0..1 MS and
  PatientIDExtension named patientID 0..1 MS and
  NarcoticsExtension named narcotics 0..1 MS and
  TeratogenicExtension named teratogenic 0..1 MS and
  $medicationRequest-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
  GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS

* extension[isBvg].value[x] MS
* extension[isBvg].valueBoolean MS

* extension[isSer].value[x] MS
* extension[isSer].valueBoolean MS

* extension[narcotics].extension MS
* extension[narcotics]
  * ^short = "Betäubungsmittel (BtM)"
  * ^definition = "Abbildung der Angaben zur Verordnung eines Betäubungsmittels im Sinne des Betäubungsmittelgesetzes (BtMG)"

* extension[teratogenic].extension MS
* extension[teratogenic]
  * ^short = "T-Rezept"
  * ^definition = "Abbildung der Angaben zur Verordnung eines teratogenen Arzneimittels (T-Rezept)"

* extension[prescriberID]
  * value[x] MS
  * valueIdentifier MS

* extension[patientID]
  * value[x] MS
  * valueIdentifier MS

* extension[multiplePrescription]
  * extension[indicator] MS
  * extension[indicator].value[x] only boolean
  * extension[indicator].valueBoolean MS

* extension[multiplePrescription]
  * extension[counter] MS
  * extension[counter].value[x] only Ratio
  * extension[counter].valueRatio MS
  * extension[counter].valueRatio.numerator MS
  * extension[counter].valueRatio.numerator.value MS
  * extension[counter].valueRatio.denominator MS
  * extension[counter].valueRatio.denominator.value MS

* extension[multiplePrescription]
  * extension[period] MS
  * extension[period].value[x] only Period
  * extension[period].valuePeriod MS
  * extension[period].valuePeriod.start MS
  * extension[period].valuePeriod.end MS

* extension[multiplePrescription]
  * extension[id] MS
  * extension[id].value[x] only Identifier
  * extension[id].valueIdentifier MS
  * extension[id].valueIdentifier.system MS
  * extension[id].valueIdentifier.value MS

* insert renderedDosageInstructionDefinition

* status from $ti-medication-request-status-vs
* status MS
* status ^short = "Status of Medication Request"

* intent MS
* intent ^short = "filler-order"
* intent ^definition = "e.g. when data is synchronized with the E-Rezept-Fachdienst, the 'filler-order' code should be used here."

* insert Subject(subject)

* medication[x] MS
* medication[x] only Reference
* medicationReference MS
* medicationReference only Reference(Medication)

* requester MS
* requester only Reference(Organization or Practitioner or PractitionerRole)

* authoredOn 1.. MS
* authoredOn ^short = "Issue Date"
* authoredOn ^definition = "Issue Date of the Prescription"

* note ..1 MS
  * text MS
  * text ^short = "Dispensing Note"
  * text ^definition = "Instructions to the pharmacy that go beyond the dosage information"

* dosageInstruction MS
* dosageInstruction only DosageDgMP
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."
  // * insert DosageDgMPMS

* dispenseRequest 0.. MS
  * expectedSupplyDuration MS
  * quantity 0.. MS
    * value 1.. MS
    * value ^short = "Number of Prescribed Packages"
    * value ^definition = "Number of Prescribed Packages"
    * system 0..1 MS
    * system = $cs-ucum
    * code 0.. MS
    * unit MS
    // * code = #{Package}

* substitution MS
* substitution.allowed[x] only boolean
* substitution.allowedBoolean 1.. MS

* basedOn MS
  * reference MS
  * identifier MS
  * identifier only MedicationPlanIdentifier
