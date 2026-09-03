Profile: TIObservationLaboratoryImageAttachment
Parent: ObservationResultsLaboratoryEu
Id: ti-observation-laboratory-image-attachment
Title: "TI Observation Image Attachment"
Description: "Abbildung, die zu einer Laboruntersuchung oder einer Untersuchungsgruppe als Ergänzung mitgegeben wird. Beispielsweise kann die Ausprägung einer Elektrophorese-Kurve eine hilfreiche oder wichtige Zusatzinformation zu einer Erkrankung geben, die durch den quantitativen Ergebniswert allein nicht hinreichend erkennbar wird."
* insert Meta-With-Versioning
* . ^definition = "Abbildung, die zu einer Laboruntersuchung oder einer Untersuchungsgruppe als Ergänzung mitgegeben wird. Beispielsweise kann die Ausprägung einer Elektrophorese-Kurve eine hilfreiche oder wichtige Zusatzinformation zu einer Erkrankung geben, die durch den quantitativen Ergebniswert allein nicht hinreichend erkennbar wird."
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* extension MS
* extension[value-r5] 1..1 MS
  * value[x] only Attachment
  * valueAttachment 1..1 MS
    * contentType 1..1 MS
      * ^definition = "Hier wird das Dateiformat angegeben."
    * contentType = #image/png
    * data 1..1 MS
      * ^definition = "Hier wird die Bild-Datei angehängt."
    * title 1..1 MS
      * ^definition = "Hier wird ein Titel bzw. eine Bezeichnung für die angehängte Bild-Datei angegeben."
* status 1..1 MS
  * ^definition = "Zum Untersuchungsbild-Anhang ist die Angabe des Status technisch erforderlich. Wenn es für die Erstellung/Erzeugung des Bildes keinen zu dokumentierenden Prozess gibt, dann wird der Status \"final\" verwendet."
* category MS
* category[laboratory] MS
  * insert CodeableConceptMS
* code 1.. MS
  * ^definition = "Typisierung des Untersuchungsbildes, z.B. um welche Art von Messdiagramm oder Kurve es sich handelt, als Code oder als Freitexteintrag."
  * insert CodeableConceptMS
  * coding
    * ^definition = "Hier der Typ des Untersuchungsbildes in Form eines Codes angegeben."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains snomed 0..1 MS
  * coding[snomed] from DiagramTypeVS (preferred)
  * coding[snomed]
    * ^patternCoding.system = $cs-sct
  * text MS
    * ^definition = "Freitextbezeichnung für den Typ des Untersuchungsbildes."
* insert SubjectEu(subject)
* effective[x] MS
* effectiveDateTime MS
  * ^definition = "Gültigkeitszeitpunkt für den Untersuchungsbild-Anhang"
* insert PerformerEu
* performer 1..
* valueQuantity ..0
* valueString ..0
* valueRange ..0
* valueRatio ..0
* valueTime ..0
* valueDateTime ..0
* valuePeriod ..0
* valueCodeableConcept ..0
* valueBoolean ..0
* valueInteger ..0
* value[x] ..0
* note MS
  * ^definition = "Hier werden ergänzende Angaben zum Bild-Anhang gemacht."
  * text 1.. MS
* derivedFrom 1.. MS
  * ^definition = "Hier wird die Untersuchung oder Untersuchungsgruppe referenziert, auf die sich der Untersuchungsbild-Anhang bezieht."
  * insert ReferenceMS
* derivedFrom only Reference(TIObservationLaboratoryStudyGroup or TIObservationLaboratoryStudy)
