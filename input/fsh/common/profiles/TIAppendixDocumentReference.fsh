Profile: TIAppendixDocumentReference
Parent: DocumentReference
Id: ti-appendix-document-reference
Title: "TI Appendix Document Reference"
Description: "Dieses Profil bildet einen eingebetteten PDF-Anhang innerhalb eines FHIR-Dokuments ab. Der Anhang ist Bestandteil des FHIR-Dokuments und wird nicht als eigenständiges Dokument eingestellt oder über Find Document References [ITI-67] gefunden. Für verwaltete Dokumente gilt das Profil TIMHDDocumentReference."
* insert Meta-With-Versioning
* . ^definition = "Dieses Profil bildet einen eingebetteten PDF-Anhang innerhalb eines FHIR-Dokuments ab. Der Anhang ist Bestandteil des FHIR-Dokuments und wird nicht als eigenständiges Dokument eingestellt oder über Find Document References [ITI-67] gefunden. Für verwaltete Dokumente gilt das Profil TIMHDDocumentReference."
// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* masterIdentifier MS
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
    * insert CodingMS
  * text MS
    * ^definition = "Hier wird ein Freitext eingetragen."
* category MS
  * ^definition = "In diesem Element werden Angaben zur Kategorie des Dokuments gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* category contains xds 0..1
* category[xds] from $epa-xds-class-code-vs (required)
  * ^definition = "Hier wird die Kategorie des Dokuments gem. IHE-De-Terminologie in codierter Form angeben."
  * coding MS
    * insert CodingMS
  * text MS
    * ^definition = "Hier wird ein Freitext eingetragen."
* subject 1..1 MS
* subject only Reference(TIPatient or Group or Device)
  * insert ReferenceMS
* author MS
  * ^definition = "Hier werden Personen, Einrichtungen oder Geräte, die das Dokument erzeugt haben, referenziert."
  * insert OnlyReferenceMS
* author only Reference(TIPractitioner or TIPractitionerRole or TIOrganization or Device or TIPatient or TIRelatedPerson)
* description MS
  * ^definition = "Hier wird der Dokumentenverweis als Freitext erfasst, z. B. \"Arztbrief vom 28.04.2020\"."
* content MS
  * ^definition = "In diesem Element werden Angaben zum angehängten Dokument gemacht."
  * attachment MS
    * ^definition = "Hier wird das Dokument in Form eines formatierten Anhangs abgebildet."
    * contentType 1.. MS
      * ^definition = "Hier wird das Dateiformat ausgewählt."
    * contentType = #application/pdf
    * data 1.. MS
      * ^definition = "Hier wird das Dokument als Datei angehängt."
    * url ..0
    * title 1.. MS
      * ^definition = "Hier wird ein Titel bzw. eine Bezeichnung für die angehängte Datei angegeben."
    * creation MS
      * ^definition = "Hier wird der Zeitpunkt der Erstellung des Anhangs angegeben."
