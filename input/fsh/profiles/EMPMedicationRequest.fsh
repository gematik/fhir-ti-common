Profile: EMPMedicationRequest
Parent: MedicationRequest
Id: emp-medication-request
Title: "eMP MedicationRequest"
Description: "eMP-Eintrag: Hält die Medikationsinformationen eines Eintrags für den elektronischen MedikationsPlan (eMP) vor und stellt das zentrale Element dar. Es stellt die Verbindung zwischen der Planung und einem oder mehrerer Verschreibungsprozesse oder Nachträge."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* extension MS
* extension contains
  ContextExtension named context 1..1 MS and
  EMPMedicationRequestActitvityExtension named activity 0..* MS and
  ReasonPatientInstructionExtension named reasonPatientInstruction 0..1 MS and
  PatientNoteExtension named patientNote 0..1 MS and
  $medicationRequest-effectiveDosePeriod-r5 named effectiveDosePeriod 0..1 MS and
  $medicationRequest-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
  GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS and
  EMPOriginMedicationExtension named originMedication 0..1 MS

* extension[context]
  * insert ExtensionCodeMS
  * valueCode = #EMP

* extension[activity]
  * ^short = "Aktivität die zu diesem Planelement gehört"
  * insert ExtensionMS
  * extension[reference] MS
    * insert ExtensionReferenceMS
  * extension[addedOn] MS
    * insert ExtensionDateTimeMS

* extension[reasonPatientInstruction]
  * ^short = "Patientenlesbarer Grund für den Planungseintrag"
  * ^definition = "Benennt den Behandlungsanlass für das Arzneimittel in versichertenverständlicher Form und unterstützt so Verständnis und Wiedererkennung auf dem eMP. Ergänzend angegebene ICD-10-Codes enthalten oft vergleichbare Informationen in medizinischer Fachsprache."
  * insert ExtensionStringMS

* extension[patientNote]
  * ^short = "Hinweis für den Patienten"
  * ^definition = "Übergeordnete Hinweise zur Therapie mit dem zugeordneten Arzneimittel; sie richten sich an den Versicherten, sind aber nicht der Dosierung zuzuordnen. Hierzu gehören bspw. mögliche unerwünschte Arzneimittelwirkungen, Empfehlungen zu regelmäßigen Kontrolluntersuchungen oder zur korrekten Lagerung des Arzneimittels."
  * insert ExtensionAnnotationMS

// MedicationRequest.effectiveDosePeriod R5
* extension[effectiveDosePeriod]
  * ^short = "Zeitraum, in dem die Medikation eingenommen werden soll."
  * ^definition = "Zeitraum, über den die Medikation eingenommen werden soll. Wenn mehrere dosageInstruction-Zeilen vorhanden sind (z. B. bei einer ausschleichenden Dosierung), entspricht dieser Zeitraum dem frühesten Startdatum und dem spätesten Enddatum der dosageInstructions."
  * insert ExtensionPeriodMS
  * valuePeriod
    * start obeys epa-datetime
    * end obeys epa-datetime

* extension[originMedication]
  * ^short = "Referenz auf die Ursprungs-Medication (Basis des eMP-Eintrags)"
  * ^definition = "Zeigt auf die Medication-Instanz, die als Grundlage für diesen MedicationRequest diente und stellt so den Ursprung (Origin) des eMP-Eintrags dar."
  * insert ExtensionReferenceMS

* insert renderedDosageInstructionDefinition

* identifier 0.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains MedicationPlanIdentifier 0..1 MS
* identifier[MedicationPlanIdentifier] only MedicationPlanIdentifier
* identifier[MedicationPlanIdentifier]
  * insert IdentifierMS
  * ^patternIdentifier.system = $sid-medication-plan-identifier

* medication[x] only Reference(EPAMedication or EMPMedication)
* medicationReference 1..1 MS
  * ^short = "Arzneimittel, welches geplant wird"
  * insert ReferenceMS

* insert Subject(subject)

* authoredOn 1..1 MS
  * obeys epa-datetime

* dosageInstruction 1..* MS
* dosageInstruction only DosageDgMP
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."
  * insert DosageDgMPMS

* status from EMPMedicationRequestStatusVS (required)
* status MS
  * ^short = "active | on-hold | completed | entered-in-error | stopped"

* intent = #plan
  * ^short = "plan"

* reasonCode 0..1 MS
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #closed
  * coding contains
    icd-10-gm 0..1 MS
  * coding[icd-10-gm] only $coding-icd-10-gm
    * ^patternCoding.system = $icd-10-gm
    * ^definition = "Der ICD-Code ist in Deutschland das abrechnungsrelevante Code System im ambulanten und stationären Bereich."
    * insert CodingMS
    * system 1..
    * version 1..
    * code 1..
    * display 1..
    * extension MS
    * extension[Mehrfachcodierungs-Kennzeichen] MS
      * insert ExtensionCodingMS
    * extension[Seitenlokalisation] MS
      * insert ExtensionCodingMS
    * extension[Diagnosesicherheit] MS
      * insert ExtensionCodingMS

* note 0..1 MS
  * ^short = "Zusätzliche Informationen durch einen Leistungserbringenden"
  * insert AnnotationMS
  * time
    * ^comment = "This information should be generated automatically"
