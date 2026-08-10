Profile: TIMHDSubmissionSet
Parent: IHE.MHD.Minimal.SubmissionSet
Id: ti-mhd-submission-set
Title: "TI MHD SubmissionSet"
Description: "Dieses Profil erweitert IHE MHD SubmissionSet Minimal."
* insert Meta-With-Versioning

// preserve the version
* ^version = "1.4.1"
// * ^date = "2026-09-30"
// * ^status = #active

* identifier[entryUUID]
  * ^short = "Intern verwendete, aktenweit eindeutige Kennung für das SubmissionSet"
  * ^definition = "Der intern verwendete, aktenweit eindeutige Identifikator des SubmissionSet, der dem Element SubmissionSet.entryUUID in XDS entspricht."
  * ^comment = "Beim Einstellen eines SubissionSet wird dieser Wert vom Service generiert. Beim Lesen ist dieser Wert immer gesetzt."
* identifier[uniqueId]
  * ^short = "Eindeutige aktenweite Kennung für das SubmissionSet"
  * ^definition = "Der aktenweit eindeutige Identifikator des SubmissionSet, der dem Element SubmissionSet.uniqueId in XDS entspricht."
  * ^comment = "Beim Einstellen eines SubissionSet wird dieser Wert vom Service generiert. Beim Lesen ist dieser Wert immer gesetzt."
* status MS
  * ^short = "Status des SubmissionSet"
  * ^definition = "Status des SubmissionSet, welches dem Element SubmissionSet.availabilityStatus in XDS entspricht."
  * ^comment = "n/a"
* mode MS
  * ^short = "Verarbeitungsmodus des SubmissionSet"
  * ^definition = "Verarbeitungsmodus des SubmissionSet"
  * ^comment = "n/a"
* code MS
  * ^short = "Kennzeichnung dieser Liste als SubmissionSet"
  * ^definition = "Code für die Kennzeichnung dieser Liste als SubmissionSet"
  * ^comment = "Dieser Code gibt die Art der Liste an, hier 'submissionset', eine Sammlung von Dokumenten."
  * coding MS
    * system MS
    * code MS
* date MS
  * ^short = "Erstellungszeitpunkt des SubmissionSet"
  * ^definition = "Erstellungszeitpunkt des SubmissionSet"
  * ^comment = "Dieser Zeitpunkt wird vom Service überschrieben."  
* source.extension[authorOrg] MS
  * ^short = "Person oder Institution, welche(s) das SubmissionSet erstellt hat"
  * ^definition = "Person oder System, welche(s) das SubmissionSet erstellt hat"
  * ^comment = "Der Service setzt die Referenz auf die deduplizierte Instanz, die im X-Requesting-Organization Header übergeben wurde bzw. bei Versichertenzugriff auf die logische Referenz aus Element .subject. Beim Lesen ist diese Referenz immer gesetzt."
* extension[sourceId] MS
  * ^short = "Eindeutige Kennung der Quelle des SubmissionSet"
  * ^definition = "Eindeutige Kennung der Quelle des SubmissionSet"
  * ^comment = "Telematik-ID der Institution bzw. KVNR, die das SubmissionSet erstellt hat."

// Hinweis: Brauchen wir auch Folder, die eingestellt werden können? Nein, da dynamische MIOs (d.h. Mutterpass und DiGA) nur im XDS Document Service verarbeitet werden 
* entry.item 1..1 MS
  * ^short = "logische Referenz auf die Dokumente im SubmissionSet mittels Datentyp identifier:entryUUID aus der erzeugten EPAMHDDocumentReference-Instanz"
  * ^definition = "Referenz auf die Dokumente im SubmissionSet, welche dem Element SubmissionSet.entry.item in XDS entspricht."
    * identifier 0..1 MS
    * identifier only IHE.MHD.EntryUUID.Identifier