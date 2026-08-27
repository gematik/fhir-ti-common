Profile: TIAppendixDocumentReference
Parent: DocumentReference
Id: ti-appendix-documentReference
Title: "TI Appendix Document Reference"
Description: "Hier wird ein Dokumentanhang abgebildet."
* insert Meta-With-Versioning
* . ^definition = "Hier wird ein Dokumentanhang abgebildet."
* masterIdentifier MS
* status MS
  * ^definition = "Hier wird der Status des Anhanges angegeben."
* type MS
  * ^definition = "In diesem Element werden Angaben zum Typ des Dokuments gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * coding MS
    * ^definition = "Hier wird ein Code aus einem geeigneten Code-System angegeben."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains xds 0..1
  * coding[xds] from $epa-xds-type-code-vs (required)
  * coding[xds] MS
    * ^definition = "Hier wird der Dokumenttyp gem. IHE-De-Terminologie in codierter Form angeben."
  * text MS
    * ^definition = "Hier wird ein Freitext eingetragen."
* insert Coding(type.coding[xds])
* category MS
  * ^definition = "In diesem Element werden Angaben zur Kategorie des Dokuments gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * coding MS
    * ^definition = "Hier wird ein Code aus einem geeigneten Code-System angegeben."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains xds 0..1
  * coding[xds] from $epa-xds-class-code-vs (required)
  * coding[xds]
    * ^definition = "Hier wird die Kategorie des Dokuments gem. IHE-De-Terminologie in codierter Form angeben."
  * text MS
    * ^definition = "Hier wird ein Freitext eingetragen."
* insert Coding(category.coding[xds])
* insert SubjectEu(subject)
* author MS
  * ^definition = "Hier werden Personen, Einrichtungen oder Geräte, die das Dokument erzeugt haben, referenziert."
  * insert ReferenceMS
* author only 	Reference(TIPractitioner or TIPractitionerRole or TIOrganization or Device or TIPatient or TIRelatedPerson)
* description MS
  * ^definition = "Hier wird der Dokumentenverweis als Freitext erfasst, z. B. \"Arztbrief vom 28.04.2020\"."
* content MS
  * ^definition = "In diesem Element werden Angaben zum angehängten Dokument gemacht."
  * attachment MS
    * ^definition = "Hier wird das Dokument in Form eines formatierten Anhangs abgebildet."
    * contentType 1.. MS
      * ^definition = "Hier wird das Dateiformat ausgewählt."
    * contentType from $epa-xds-mime-type-vs (required)
    * data 1.. MS
      * ^definition = "Hier wird das Dokument als Datei angehängt."
    * url ..0
    * title 1.. MS
      * ^definition = "Hier wird ein Titel bzw. eine Bezeichnung für die angehängte Datei angegeben."
    * creation MS
      * ^definition = "Hier wird der Zeitpunkt der Erstellung des Anhangs angegeben."
