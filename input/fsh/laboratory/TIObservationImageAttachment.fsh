Profile: TIObservationImageAttachment
Parent: Observation
Id: ti-observation-image-attachment
Title: "TI Observation Image Attachment"
Description: "Abbildung, die als Ergänzung mitgegeben wird."
* insert Meta-With-Versioning
* . ^definition = "Abbildung, die als Ergänzung mitgegeben wird."
* extension MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains $observation-value-r5 named value 1..1 MS
* extension[value]
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
* code 1.. MS
  * ^definition = "Typisierung des Untersuchungsbildes, z.B. um welche Art von Messdiagramm oder Kurve es sich handelt, als Code oder als Freitexteintrag."
  * insert CodeableConceptMS
  * coding
    * ^definition = "Hier der Typ des Untersuchungsbildes in Form eines Codes angegeben."
  * text MS
    * ^definition = "Freitextbezeichnung für den Typ des Untersuchungsbildes."
* insert SubjectEu(subject)
* insert Performer
* performer
  * ^definition = "Ausführende Person/Einrichtung"
* value[x] ..0
* note MS
  * ^definition = "Hier werden ergänzende Angaben zum Bild-Anhang gemacht."
  * text 1.. MS
* derivedFrom 1.. MS
  * insert ReferenceMS
