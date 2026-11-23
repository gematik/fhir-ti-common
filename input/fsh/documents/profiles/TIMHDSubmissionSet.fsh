Profile: TIMHDSubmissionSet
Parent: IHE.MHD.Minimal.SubmissionSet
Id: ti-mhd-submission-set
Title: "TI MHD SubmissionSet"
Description: "Dieses Profil erweitert IHE MHD SubmissionSet Minimal."
* insert Meta-With-Versioning

// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* identifier[entryUUID]
  * ^short = "Intern verwendete, eindeutige Kennung für das SubmissionSet"
  * ^definition = "Der intern verwendete, eindeutige Identifikator des SubmissionSet, der dem Element SubmissionSet.entryUUID in XDS entspricht."
  * ^comment = "Die entryUUID identifiziert den Eintrag des SubmissionSet im Dokumentenregister."
* identifier[uniqueId]
  * ^short = "Eindeutige Kennung für das SubmissionSet"
  * ^definition = "Der eindeutige Identifikator des SubmissionSet, der dem Element SubmissionSet.uniqueId in XDS entspricht."
  * ^comment = "Die uniqueId dient der Identifikation über Systemgrenzen hinweg."
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
  * ^comment = "Die Angabe bezieht sich auf die Erstellung des SubmissionSets."
* source.extension[authorOrg] MS
  * ^short = "Erstellende Organisation des SubmissionSet"
  * ^definition = "Organisation, die das SubmissionSet erstellt hat."
* extension[sourceId] MS
  * ^short = "Eindeutige Kennung der Quelle des SubmissionSet"
  * ^definition = "Eindeutige Kennung der Quelle des SubmissionSet"
  * ^comment = "Die Kennung identifiziert die Quelle, von der das SubmissionSet stammt."

* entry.item 1..1 MS
  * ^short = "Logische Referenz auf die Dokumente im SubmissionSet über deren entryUUID"
  * ^definition = "Referenz auf die Dokumente im SubmissionSet, welche dem Element SubmissionSet.entry.item in XDS entspricht."
  * identifier 0..1 MS
  * identifier only IHE.MHD.EntryUUID.Identifier
