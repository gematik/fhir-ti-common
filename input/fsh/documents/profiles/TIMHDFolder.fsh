Profile: TIMHDFolder
Parent: IHE.MHD.Minimal.Folder
Id: ti-mhd-folder
Title: "TI MHD Folder"
Description: "Dieses Profil erweitert die IHE MHD Minimal Folder."
* insert Meta-With-Versioning

// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* identifier[entryUUID]
  * ^short = "Intern verwendete, aktenweit eindeutige Kennung für den Folder"
  * ^definition = "Der intern verwendete, aktenweit eindeutige Identifikator des Folder, der dem Element Folder.entryUUID in XDS entspricht."
  * ^comment = "Beim Einstellen eines Folder wird dieser Wert vom Service generiert. Beim Lesen ist dieser Wert immer gesetzt."
* identifier[uniqueId]
  * ^short = "Eindeutige aktenweite Kennung für den Folder"
  * ^definition = "Der eindeutige aktenweit eindeutige Identifikator des Folder, der dem Element Folder.uniqueId in XDS entspricht."
  * ^comment = "Beim Einstellen eines Folder wird dieser Wert vom Service generiert. Beim Lesen ist dieser Wert immer gesetzt."
* status MS
  * ^short = "Status für den Folder"
  * ^definition = "Status für den Folder, der dem Element Folder.availabilityStatus in XDS entspricht."
  * ^comment = "n/a"
* mode MS
  * ^short = "Verarbeitungsmodus des Folder"
  * ^definition = "Verarbeitungsmodus des Folder"
  * ^comment = "n/a"
* code MS
  * ^short = "Kennzeichnung dieser Liste als Folder"
  * ^definition = "Code für die Kennzeichnung dieser Liste als Folder"
  * ^comment = "Dieser Code gibt die Art der Liste an, hier 'folder', ein Folder, der Dokumente enthält."
  * coding MS
* date
  * ^short = "Erstellungszeitpunkt des SubmissionSet"
  * ^definition = "Erstellungszeitpunkt des SubmissionSet"
  * ^comment = "Dieser Zeitpunkt wird vom Service gesetzt."
* extension[designationType].valueCodeableConcept 1..1 MS 
  * ^short = "Kategorie des Folder"
  * ^definition = "Kategorie des Folder, die die Art der Dokumente im Folder näher beschreibt und einem Wert aus den ValueSets 'EPA Data Category Medical' sowie 'EPA Data Category Other' entspricht."
  * ^comment = "Die Kategorie wird durch den Server gesetzt."
* extension[designationType].valueCodeableConcept from TIMHDDataCategoryVS (required)
  * ^short = "Kategorie des Folder"
  * ^definition = "Kategorie des Folder, die die Art der Dokumente im Folder näher beschreibt und einem Wert aus dem ValueSet 'EPA Data Category (Other)' entspricht."
  * ^comment = "Die Kategorie wird durch den Server gesetzt."
* entry.item 1..1 MS
  * ^comment = "Logical Reference unter Nutzung der entryUUID"
  * ^short = "Logical Reference auf die Dokumente im Folder mittels Datentyp identifier:entryUUID aus der erzeugten EPAMHDDocumentReference-Instanz"
  * ^definition = "Referenz auf die Dokumente im Folder, welche dem Element Folder.entry.item in XDS entspricht."
    * identifier 0..1 MS
    * identifier only IHE.MHD.EntryUUID.Identifier