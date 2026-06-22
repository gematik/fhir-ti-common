Profile: TIMedicationDgMP
Parent: Medication
Id: ti-medication-dgmp
Title: "TI Medication dgMP"
Description: "Defines the medication resource for the Medication Service in the TI ecosystem."
// preserve the version
* ^version = "1.0.0"
* ^date = "2026-06-30"
* ^status = #active
* insert Meta-With-Versioning

* extension contains
    RxPrescriptionProcessIdentifierExtension named rxPrescriptionProcessIdentifier 0..1 MS and
    MedicationIsVaccineExtension named isVaccine 0..1 MS and
    DrugCategoryExtension named drugCategory 0..1 MS and
    ExtensionNormgroesseDeBasis named normSizeCode 0..1 MS and
    MedicationFormulationPackagingExtension named packaging 0..1 MS and
    MedicationManufacturingInstructionsExtension named manufacturingInstructions 0..1 MS and
    EPAMedicationTypeExtension named type 0..1 MS

* extension[drugCategory].valueCoding
  * system 1..1
  * code 1..1

* extension[normSizeCode]
  * ^short = "Package size according to N-designation"
  * ^definition = "Description of the therapy-appropriate package size (e.g., N1)"

* identifier 0..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    EPAMedicationUniqueIdentifier 0..1 and
    RxOriginatorProcessIdentifier 0..1
* identifier[EPAMedicationUniqueIdentifier] only EPAMedicationUniqueIdentifier
* identifier[EPAMedicationUniqueIdentifier]
  * ^patternIdentifier.system = $epa-medication-unique-identifier

* identifier[RxOriginatorProcessIdentifier] only RxOriginatorProcessIdentifier
* identifier[RxOriginatorProcessIdentifier]
  * ^patternIdentifier.system = $rx-originator-process-identifier

* code 0..1
  * ^short = "Medication in coded form or as free text if necessary"
  * coding
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      pzn 0..1 and
      atc-de 0.. and
      ask 0.. // and
      // snomed 0..
  * coding[pzn]
    * ^patternCoding.system = $cs-pzn
    * system 1..1
    * code 1..1
  * coding[atc-de]
    * ^patternCoding.system = $cs-atc-de
    * system 1..1
    * version 1..1
    * code 1..1
  * coding[ask]
    * ^patternCoding.system = $cs-ask
    * system 1..1
    * code 1..1
  // * coding[snomed] from TIMedicationSNOMEDCTVS (extensible)
  //   * ^patternCoding.system = $sct
  //   * system 1..1
  //   * code 1..1
  //   * display
* status 0..1
  * ^short = "Status of Medication Information"
* manufacturer
  * ^short = "Manufacturer of the Medication"
  * ^comment = "Here, the actual manufacturer of the medication can be named, primarily in the case of active ingredient mixtures (compounding prescriptions), such as the hospital pharmacy. It is important to note that the licensing organization, as mentioned in the PZN (Pharmaceutical Central Number) data, is not considered the manufacturer."
  * display 1..1
* form
  * ^short = "Form of Dispensing"
  * coding
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      // edqm 0.. and
      // snomed 0.. and
      kbvDarreichungsform 0..
  // * coding[edqm] from $vs-edqm-doseform (preferred)
  //   * ^patternCoding.system = $cs-edqm
  //   * system 1..1 MS
  //   * code 1..1 MS
  //   * display MS
  // * coding[snomed] from TIMedicineFormSNOMEDCTVS (preferred)
  //   * ^patternCoding.system = $sct
  //   * system 1..1 MS
  //   * code 1..1 MS
  //   * version MS
  //   * display MS
  * coding[kbvDarreichungsform] from $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM (required)
    * ^comment = "KBV updates its \"Schüsseltabellen\" package more often than ePA versions get released. However, the eRezept clients and eRezept service take over new KBV package versions quickly after release and thus hands them over to the ePA Medication Service. Since the Medication Service is potentially fixed onto an older version of the KBV package, it would reject the forwarded eRezept data. In the future, the Medication Service will be enabled to update to the latest KBV package versions without the need for a new ePA release.
    Since the eRezept *does* check the codes against the latest KBV package version, the Medication Service will not receive any \"invalid\" codes and clients can rely on the Medication Service data conforming to the latest KBV package."
    * ^patternCoding.system = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM
    * system 1..1
    * code 1..1
* amount 0..1
  * insert RatioMS
  * numerator 0..1
  * numerator from $hl7-vs-ucum-units (preferred)
    * extension contains
        MedicationPackagingSizeExtension named packagingSize 0..1 and
        MedicationTotalQuantityFormulationExtension named totalQuantity 0..1
    * extension[packagingSize]
    * extension[totalQuantity]
    * value 0..1
    * system 0..1
    * code 0..1
  * denominator from $hl7-vs-ucum-units (preferred)
    * value 0..1
    * system 0..1
    * code 0..1
* ingredient
  // * ^short = "Aktive oder inaktive Bestandteile des Medikaments, einschließlich Wirkstoffe sowie einzelner Arzneimittel in Kombipackungen."
  * ^short = "Active or inactive ingredients of the medication, including pharmaceutical substances as well as individual medicinal products in combination packs."
  * extension contains MedicationIngredientDarreichungsformExtension named darreichungsform 0..1
  * item[x] 1..1
  * itemCodeableConcept
    // * ^short = "Kodierte Beschreibung des Wirkstoffs oder der Komponente."
    * ^short = "Encoded description of the substance or component."
    * coding 0..
      * ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        ask 0.. and
        atc-de 0.. and
        // snomed 0.. and
        pzn 0..
    * coding[ask]
      * ^patternCoding.system = $cs-ask
      * system 1..1
      * code 1..1
    * coding[atc-de]
      * ^patternCoding.system = $cs-atc-de
      * system 1..1
      * version 1..1
      * code 1..1
    // * coding[snomed] from TISubstanceSNOMEDCTVS (preferred)
    //   * ^patternCoding.system = $sct
    //   * system 1..1 MS
    //   * code 1..1 MS
    //   * version MS
    //   * display MS
    * coding[pzn]
      * ^patternCoding.system = $cs-pzn
      * system 1..1
      * code 1..1
  * itemReference only Reference(Medication)
    * ^short = "Restricted EPAMedicationPZNIngredient & EPAMedicationPharmaceuticalProduct only"
  * isActive
    * ^short = "Is it an active ingredient?"
  * strength
    * ^short = "Strength"
    * extension contains MedicationIngredientAmountExtensions named amountText 0..1
    * numerator from $hl7-vs-ucum-units (preferred)
      * value 1..1
      * system 0..1
      * code 0..1
    * denominator from $hl7-vs-ucum-units (preferred)
      * value 1..1
      * system 0..1
      * code 0..1
* batch
  * ^short = "Batch Information"
  * lotNumber
    * ^short = "Batch Number"
