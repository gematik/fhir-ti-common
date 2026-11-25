Profile: TIMedicationDgMP
Parent: Medication
Id: ti-medication-dgmp
Title: "TI Medication dgMP"
Description: "Defines the medication resource for the Medication Service in the TI ecosystem."
//TODO: copy Ruleset contents into this resource as soon as the issue: https://github.com/hapifhir/org.hl7.fhir.core/issues/1670 is resolved
* insert TIMedicationElements
// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* contained MS
* contained only TIMedicationPharmaceuticalProductDgMP or TIMedicationPZNIngredientDgMP
  * ^short = "Enthält PZN-Bestandteile für Rezepturen sowie pharmazeutische Produkte im Falle einer Kombipackung."

* batch MS
  * lotNumber MS



RuleSet: TIMedicationElements
* insert Meta-With-Versioning
* obeys ti-med-1

* extension contains
    ContextExtension named context 0..1 MS and
    RxPrescriptionProcessIdentifierExtension named rxPrescriptionProcessIdentifier 0..1 MS and
    MedicationIsVaccineExtension named isVaccine 0..1 MS and
    DrugCategoryExtension named drugCategory 0..1 MS and
    ExtensionNormgroesseDeBasis named normSizeCode 0..1 MS and
    MedicationFormulationPackagingExtension named packaging 0..1 MS and
    MedicationManufacturingInstructionsExtension named manufacturingInstructions 0..1 MS and
    EPAMedicationTypeExtension named type 0..1 MS

* extension[isVaccine]
  * valueBoolean MS
* extension[drugCategory]
  * valueCoding MS
    * system 1..1 MS
    * code 1..1 MS
* extension[normSizeCode]
  * ^short = "Package size according to N-designation"
  * ^definition = "Description of the therapy-appropriate package size (e.g., N1)"
  * valueCode MS
* extension[packaging]
  * valueString MS
* extension[manufacturingInstructions]
  * valueString MS

* identifier 0..
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open

* identifier contains
    RxOriginatorProcessIdentifier 0..1

* identifier[RxOriginatorProcessIdentifier] only RxOriginatorProcessIdentifier
* identifier[RxOriginatorProcessIdentifier]
  * ^patternIdentifier.system = $rx-originator-process-identifier

* code 0..1 MS
  * ^short = "Medication in coded form or as free text if necessary"
  * coding MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      pzn 0..1 MS and
      atc-de 0.. MS and
      ask 0.. MS // and
      // snomed 0..
  * coding[pzn]
    * ^patternCoding.system = $cs-pzn
    * system 1..1 MS
    * code 1..1 MS
    * display MS
  * coding[atc-de]
    * ^patternCoding.system = $cs-atc-de
    * system 1..1 MS
    * version 1..1
    * code 1..1 MS
    * display MS
  * coding[ask]
    * ^patternCoding.system = $cs-ask
    * system 1..1 MS
    * code 1..1 MS
    * display MS
  // * coding[snomed] from TIMedicationSNOMEDCTVS (extensible)
  //   * ^patternCoding.system = $sct
  //   * system 1..1 MS
  //   * code 1..1 MS
  //   * display MS
  * text MS

* status 0..1 MS
  * ^short = "Status of Medication Information"

* manufacturer MS
  * ^short = "Manufacturer of the Medication"
  * ^comment = "Here, the actual manufacturer of the medication can be named, primarily in the case of active ingredient mixtures (compounding prescriptions), such as the hospital pharmacy. It is important to note that the licensing organization, as mentioned in the PZN (Pharmaceutical Central Number) data, is not considered the manufacturer."
  * display 1..1 MS

* form MS
  * ^short = "Form of Dispensing"
  * extension MS
  * extension contains $data-absent-reason named dataAbsentReason 0..1 MS
  * extension[dataAbsentReason]
    * ^short = "Grund für fehlende Darreichungsform"
    * ^definition = "Kennzeichnet ausdrücklich, dass die Darreichungsform nicht bekannt ist, wenn weder eine KBV- noch eine IFA-Darreichungsform angegeben werden kann, statt Medication.form leer zu lassen."
  * coding MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      // edqm 0.. and
      // snomed 0.. and
      kbvDarreichungsform 0..1 MS and
      ifaDarreichungsform 0..1 MS
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
  * coding[kbvDarreichungsform] from $KBV_VS_SFHIR_KBV_DARREICHUNGSFORM (required)
    * ^comment = "Die KBV aktualisiert ihr Paket mit den Schlüsseltabellen häufiger, als neue ePA-Versionen veröffentlicht werden. E-Rezept-Clients und der E-Rezept-Fachdienst übernehmen neue Paketversionen zeitnah. Dadurch kann es vorkommen, dass der ePA Medication Service einen bereits im E-Rezept geprüften Code ablehnt, weil er noch eine ältere Paketversion verwendet. Künftig soll der ePA Medication Service neue KBV-Paketversionen unabhängig von einer ePA-Veröffentlichung übernehmen können. Da der E-Rezept-Fachdienst die Codes bereits gegen die aktuelle KBV-Paketversion prüft, können sich Clients bei den aus dem E-Rezept übernommenen Codes auf diese Prüfung verlassen."
    * ^patternCoding.system = $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM
    * system 1..1 MS
    * code 1..1 MS
    * display MS
  * coding[ifaDarreichungsform] from $vs-ifa-medication-darreichungsform (required)
    * ^patternCoding.system = $cs-ifa-medication-darreichungsform
    * system 1..1 MS
    * code 1..1 MS
    * display MS
  * text MS

* amount 0..1 MS
  // * insert RatioMS
  * numerator 0..1 MS
  * numerator from $hl7-vs-ucum-units (preferred)
    * extension contains
        MedicationPackagingSizeExtension named packagingSize 0..1 MS and
        MedicationTotalQuantityFormulationExtension named totalQuantity 0..1 MS
    * extension[packagingSize]
      * value[x] MS
      * valueString MS
    * extension[totalQuantity]
      * value[x] MS
      * valueString MS
  * denominator MS
  * denominator from $hl7-vs-ucum-units (preferred)
    * value 0..1 MS
    * unit MS
    * system 0..1 MS
    * code 0..1 MS

* ingredient MS
  // * ^short = "Aktive oder inaktive Bestandteile des Medikaments, einschließlich Wirkstoffe sowie einzelner Arzneimittel in Kombipackungen."
  * ^short = "Active or inactive ingredients of the medication, including pharmaceutical substances as well as individual medicinal products in combination packs."
  * extension contains
      MedicationIngredientDarreichungsformExtension named darreichungsform 0..1
  * item[x] 1..1 MS
  * itemCodeableConcept MS
    // * ^short = "Kodierte Beschreibung des Wirkstoffs oder der Komponente."
    * ^short = "Encoded description of the substance or component."
    * coding 0.. MS
      * ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains
        ask 0.. MS and
        atc-de 0.. MS and
        // snomed 0.. and
        pzn 0.. MS
    * coding[ask]
      * ^patternCoding.system = $cs-ask
      * system 1..1 MS
      * code 1..1 MS
      * display MS
    * coding[atc-de]
      * ^patternCoding.system = $cs-atc-de
      * system 1..1 MS
      * version 1..1
      * code 1..1 MS
      * display MS
    // * coding[snomed] from TISubstanceSNOMEDCTVS (preferred)
    //   * ^patternCoding.system = $sct
    //   * system 1..1 MS
    //   * code 1..1 MS
    //   * version MS
    //   * display MS
    * coding[pzn]
      * ^patternCoding.system = $cs-pzn
      * system 1..1 MS
      * code 1..1 MS
      * display MS
    * text MS
  * itemReference MS
  * itemReference only Reference(Medication)
    * ^short = "Restricted EPAMedicationPZNIngredient & EPAMedicationPharmaceuticalProduct only"
  * isActive
    * ^short = "Is it an active ingredient?"
  * strength MS
    * ^short = "Strength"
    * extension contains
        MedicationIngredientAmountExtensions named amountText 0..1
    * extension[amountText]
      * value[x] MS
      * valueString MS
    * numerator MS
    * numerator from $hl7-vs-ucum-units (preferred)
      * value 1..1 MS
      * unit MS
      * system 0..1 MS
      * code 0..1 MS
    * denominator MS
    * denominator from $hl7-vs-ucum-units (preferred)
      * value 1..1 MS
      * unit MS
      * system 0..1 MS
      * code 0..1 MS
