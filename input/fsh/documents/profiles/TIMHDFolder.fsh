Profile: TIMHDFolder
Parent: IHE.MHD.Minimal.Folder
Id: ti-mhd-folder
Title: "TI MHD Folder"
Description: "Dieses Profil erweitert die IHE MHD Minimal Folder."
* insert Meta-With-Versioning

// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* identifier[entryUUID]
  * ^short = "Intern verwendete, eindeutige Kennung für den Folder"
  * ^definition = "Der intern verwendete, eindeutige Identifikator des Folder, der dem Element Folder.entryUUID in XDS entspricht."
  * ^comment = "Die entryUUID identifiziert den Eintrag des Folder im Dokumentenregister."
* identifier[uniqueId]
  * ^short = "Eindeutige Kennung für den Folder"
  * ^definition = "Der eindeutige Identifikator des Folder, der dem Element Folder.uniqueId in XDS entspricht."
  * ^comment = "Die uniqueId dient der Identifikation über Systemgrenzen hinweg."
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
  * ^short = "Erstellungszeitpunkt des Folder"
  * ^definition = "Erstellungszeitpunkt des Folder"
  * ^comment = "Die Angabe bezieht sich auf die Erstellung des Folders."
* extension[designationType].valueCodeableConcept 1..1 MS
  * ^short = "Kategorie des Folder"
  * ^definition = "Kategorie, die die Art der im Folder enthaltenen Dokumente beschreibt."
* entry.item 1..1 MS
  * ^comment = "Logical Reference unter Nutzung der entryUUID"
  * ^short = "Logische Referenz auf die Dokumente im Folder über deren entryUUID"
  * ^definition = "Referenz auf die Dokumente im Folder, welche dem Element Folder.entry.item in XDS entspricht."
  * identifier 0..1 MS
  * identifier only IHE.MHD.EntryUUID.Identifier
