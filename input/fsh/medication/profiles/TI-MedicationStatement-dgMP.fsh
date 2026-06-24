Profile: TIMedicationStatementDgMP
Parent: MedicationStatement
Id: ti-medication-statement-dgmp
Title: "TI MedicationStatement dgMP"
Description: "Hält die Medikationsinformationen eines Patienten."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.4.0"
// * ^date = "2025-12-15"
* ^status = #active

* extension contains
  ContextExtension named context 0..1 MS and
  RxPrescriptionProcessIdentifierExtension named rxPrescriptionProcessIdentifier 0..1 and
  $medicationStatement-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
  GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS

* extension[rxPrescriptionProcessIdentifier].value[x]

* insert renderedDosageInstructionDefinition

* medication[x] MS
* medication[x] only Reference(Medication)
* medicationReference 1..1 MS
  * ^short = "Arzneimittel, welches diese Medikationsinformation bzw. dieses MedicationStatement näher beschreibt"

* insert Subject(subject)

* dateAsserted MS
  * obeys epa-datetime

* effective[x] MS
  * ^short = "effective[x] gibt den Zeitpunkt oder Zeitraum der Gültigkeit der Medikation an"
  * ^definition = "Das Element effective[x] gibt den Zeitraum an, in dem die Angaben zur Medikation gültig sind. Je nach Situation kann hierfür ein einzelner Zeitpunkt (effectiveDateTime) oder ein Zeitraum (effectivePeriod mit Start und ggf. Enddatum) angegeben werden"
* effectiveDateTime 0..1 MS
  * obeys epa-datetime
* effectivePeriod MS
  * start 0..1 MS
    * obeys epa-datetime
  * end 0..1 MS
    * obeys epa-datetime

* dosage MS
* dosage only DosageDgMP
  * ^short = "Strukturierte Dosierung/Gebrauchsanweisung"
  * ^definition = "Hier werden strukturierte Informationen zur Dosierung/Gebrauchsanweisung zur Arzneimitteleinnahme gemäß Vorgabe von HL7 Deutschland e.V. angegeben."

* status MS

* derivedFrom only Reference(TIMedicationRequestDgMP or TIMedicationDispenseDgMP)
* derivedFrom MS
  * ^short = "Information des Verschreibungs- und Dispensierprozesses"

* basedOn only Reference(TIMedicationRequestDgMP)
* basedOn MS