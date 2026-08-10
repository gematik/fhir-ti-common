Profile: TIDocumentReference
Parent: DocumentReference
Id: ti-documentReference
Title: "TI Document Reference"
Description: "Hier wird auf ein externes Dokument verwiesen und/oder ein Dokument angehängt."
* insert Meta-With-Versioning
* . ^definition = "Hier wird auf ein externes Dokument verwiesen und/oder ein Dokument angehängt."
* status MS
  * ^definition = "Hier wird der Status des Dokumentenverweises bzw. Anhanges angegeben."
* type MS
  * ^definition = "In diesem Element werden Angaben zum Typ des Dokuments gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * coding MS
    * ^definition = "Hier wird ein Code aus einem geeigneten Code-System angegeben."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains xds 0..1
  * coding[xds] from http://ihe-d.de/ValueSets/IHEXDStypeCode (required)
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
  * coding[xds] from http://ihe-d.de/ValueSets/IHEXDSclassCode (required)
  * coding[xds]
    * ^definition = "Hier wird die Kategorie des Dokuments gem. IHE-De-Terminologie in codierter Form angeben."
  * text MS
    * ^definition = "Hier wird ein Freitext eingetragen."
* insert Coding(category.coding[xds])
* insert SubjectEu(subject)
* author MS
  * ^definition = "Hier werden Personen, Einrichtungen oder Geräte, die das Dokument erzeugt haben, referenziert."
* description MS
  * ^definition = "Hier wird der Dokumentenverweis als Freitext erfasst, z. B. \"Arztbrief vom 28.04.2020\"."
* content MS
  * ^definition = "In diesem Element wird eine strukturierte Referenz auf andere Inhalte gemacht, dies kann z. B. ein anderes Dokument in der ePA sein\r\n\r\noder\r\n\r\nHier wird das Dokument in Form eines formatierten Anhangs abgebildet."
  * ^slicing.discriminator.type = #exists
  * ^slicing.discriminator.path = "attachment.url"
  * ^slicing.rules = #open
* content contains
  appendix 0.. and
  link 0..
* content[link] MS
  * attachment MS
    * ^definition = "In diesem Element wird eine strukturierte Referenz auf andere Inhalte gemacht, dies kann z. B. ein anderes Dokument in der ePA sein."
    * url 1.. MS
      * ^definition = "Hier wird die URI des Eintrags angegeben."
    * title 1.. MS
      * ^definition = "Hier findet sich der Name des referenzierten Dokumentes."
    * creation MS
      * ^definition = "Hier wird der Zeitpunkt der Erstellung des referenzierten Dokumentes angegeben."
* content[appendix] MS
  * attachment MS
    * ^definition = "Hier wird das Dokument in Form eines formatierten Anhangs abgebildet."
    * contentType 1.. MS
      * ^definition = "Hier wird das Dateiformat ausgewählt.\r\nEs ist ein Code aus dem System urn:ietf:bcp:13 zu wählen"
    * data 1.. MS
      * ^definition = "Hier wird das Dokument als Datei angehängt."
    * url ..0
    * title 1.. MS
      * ^definition = "Hier wird ein Titel bzw. eine Bezeichnung für die angehängte Datei angegeben."
    * creation MS
      * ^definition = "Hier wird der Zeitpunkt der Erstellung des Anhangs angegeben."
