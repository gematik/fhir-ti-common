Profile: EPAMedicationRequest
Parent: MedicationRequest
Id: epa-medication-request
Title: "EPA MedicationRequest"
Description: "Defines the medication request resource for the Medication Service in the ePA system."
* insert Meta-With-Versioning
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-request"
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "ePrescription identifier and overall transaction identifier"
* identifier ^slicing.ordered = false
* identifier 0..
* identifier contains
    RxPrescriptionProcessIdentifier 0..1 MS and
    RxOriginatorProcessIdentifier 0..1 MS
* identifier[RxPrescriptionProcessIdentifier] only RxPrescriptionProcessIdentifier
* identifier[RxPrescriptionProcessIdentifier] ^patternIdentifier.system = $rx-prescription-process-identifier
* identifier[RxPrescriptionProcessIdentifier] insert IdentifierMS

* identifier[RxOriginatorProcessIdentifier] only RxOriginatorProcessIdentifier
* identifier[RxOriginatorProcessIdentifier] ^patternIdentifier.system = $rx-originator-process-identifier
* identifier[RxOriginatorProcessIdentifier] insert IdentifierMS

* extension contains
    MultiplePrescriptionExtension named multiplePrescription 0..1 MS and
    IndicatorBVGExtension named isBvg 0..1 MS and
    IndicatorSERExtension named isSer 0..1 MS and
    PrescriberIDExtension named prescriberID 0..1 MS and
    PatientIDExtension named patientID 0..1 MS and
    NarcoticsExtension named narcotics 0..1 MS and
    TeratogenicExtension named teratogenic 0..1 MS and
    $medicationRequest-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
    GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS

* extension[isBvg] insert ExtensionBooleanMS
* extension[isSer] insert ExtensionBooleanMS

* extension[narcotics]
  * ^short = "Betäubungsmittel (BtM)"
  * ^definition = "Abbildung der Angaben zur Verordnung eines Betäubungsmittels im Sinne des Betäubungsmittelgesetzes (BtMG)"
  * insert ExtensionMS

* extension[teratogenic]
  * ^short = "T-Rezept"
  * ^definition = "Abbildung der Angaben zur Verordnung eines teratogenen Arzneimittels (T-Rezept)"
  * insert ExtensionMS

* extension[prescriberID] insert ExtensionIdentifierMS
* extension[patientID] insert ExtensionIdentifierMS

* extension[multiplePrescription] MS
  * insert ExtensionMS
  * extension[indicator] MS
    * insert ExtensionBooleanMS
    * value[x] only boolean

  * extension[counter] MS
    * insert ExtensionRatioMS
    * value[x] only Ratio

  * extension[period] MS
    * insert ExtensionPeriodMS
    * value[x] only Period

  * extension[id] MS
    * insert ExtensionIdentifierMS
    * value[x] only Identifier

* insert renderedDosageInstructionDefinition

* status from $ti-medication-request-status-vs
* status MS
* status ^short = "Status of Medication Request"

* intent MS
* intent ^short = "filler-order"
* intent ^definition = "e.g. when data is synchronized with the E-Rezept-Fachdienst, the 'filler-order' code should be used here."

* insert Subject(subject)

* medication[x] only Reference
* medicationReference MS
* medicationReference only Reference(Medication)
* medicationReference insert ReferenceMS

* requester MS
* requester only Reference(Organization or Practitioner or PractitionerRole)
* requester insert ReferenceMS
* authoredOn 1.. MS
* authoredOn ^short = "Issue Date"
* authoredOn ^definition = "Issue Date of the Prescription"

* note ..1 MS
  * insert AnnotationMS
  * text ^short = "Dispensing Note"
  * text ^definition = "Instructions to the pharmacy that go beyond the dosage information"

* dosageInstruction MS
* dosageInstruction only DosageDgMP
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."
  * insert DosageDgMPMS

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

* basedOn only Reference(EMPMedicationRequest)
* basedOn MS
  * insert ReferenceMS
  * identifier only MedicationPlanIdentifier
