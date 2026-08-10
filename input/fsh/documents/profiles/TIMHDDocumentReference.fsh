Profile: TIMHDDocumentReference
Parent: IHE.MHD.Minimal.DocumentReference
Id: ti-mhd-document-reference
Title: "TI MHD DocumentReference"
Description: "Dieses Profil erweitert die IHE MHD Minimal DocumentReference-Ressource für den TI-weiten Einsatz und berücksichtigt dabei die Metadaten-Einschränkungen der ePA."
* insert Meta-With-Versioning

// preserve the version
* ^version = "1.4.1"
// * ^date = "2026-09-30"
// * ^status = #active

* extension contains TIDocumentLocation named documentLocation 0..1 MS
* extension[documentLocation]
  * ^short = "Kennzeichnet das System, in dem sich das referenzierte Dokument befindet, z. B. die ePA des Versicherten."
  * ^definition = "Gibt das System an, in dem sich das durch die DocumentReference beschriebene Dokument befindet und aus dem es abgerufen werden kann."
  * ^comment = "Die Extension ermöglicht die Unterscheidung zwischen verschiedenen Speicherorten eines Dokuments, beispielsweise einem Primärsystem, einem Workflow-Dokumentenspeicher oder der ePA. Befindet sich das Dokument in der ePA, wird der zugehörige Versicherte über DocumentReference.subject logisch referenziert. Der Dokumentinhalt kann über die in DocumentReference.content.attachment.url angegebene URL mittels der ePA-Transaktion Retrieve Document [ITI-68] abgerufen werden."

* masterIdentifier MS

* identifier[entryUUID] 0..1 MS
* identifier contains uniqueId 1..1 MS
* identifier[uniqueId] only UniqueIdIdentifier
* identifier[uniqueId] ^short = "Unique identifier für das referenzierte Dokument"
* identifier[uniqueId] ^definition = "Der eindeutige Identifikator des referenzierten Dokuments, der dem Element DocumentEntry.uniqueId in XDS entspricht. Dieser dient als fachlicher bzw. dokumentbezogener Identifier des Dokuments und identifiziert das medizinische Dokument selbst, auf das die DocumentReference verweist."

* status MS
  * ^short = "Status des Dokuments"
  * ^definition = "Status des Dokuments (DocumentEntry.availabilityStatus) unter Berücksichtigung des [MHD Mapping](https://profiles.ihe.net/ITI/MHD/ConceptMap/FhirStatusVsStatusCode)"
  * ^comment = "Dies ist der Status des DocumentReference-Objekts.\n\nDieses Element wird als Modifier gekennzeichnet, da der Status Codes enthält, die das Dokument oder die Referenz als derzeit nicht gültig markieren."
* type 1..1 MS
  * ^short = "Art des Dokuments"
  * ^definition = "Art des Dokuments (DocumentEntry.typeCode)"
  * ^comment = "Das Attribut typeCode ist gemäß IHE XDS zwingend gefordert und kann zusätzlich zu (bzw. zusammen mit) dem classCode zur genaueren Klassifizierung des Dokuments genutzt werden, z.B. kann ein Dokument mit classCode 'Befundberichte' durch den typeCode als 'Pathologiebefundbericht' oder als 'Ergebnisse bildgebender Diagnostik' gekennzeichnet werden. Das Attribut typeCode stellt keine Spezialisierung von classCode dar. Somit kann ein bestimmter typeCode mit verschiedenen classCodes zur Beschreibung unterschiedlicher Dokumente kombiniert werden. Zum Beispiel haben ein Röntgenbild und der dazugehörige Radiologie-Befund den gleichen typeCode 'Ergebnisse bildgebender Diagnostik' aber zwei unterschiedliche classCodes, 'Bilddaten' bzw.'Befundberichte'. Daraus folgt, dass ein Dokument sowohl einem classCode als auch einem typeCode explizit zugeordnet werden muss; die Zuordnung zu einem typeCode allein reicht nicht aus, weil hierüber kein implizites Mapping auf einen einzigen 'übergeordneten' classCode möglich ist."
  * coding MS
    * ^definition = "Art des Dokuments in kodierter Form"
    * ^comment = "n/a"
  * coding from $epa-xds-type-code-vs (required)
    * ^definition = "n/a"
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
* category 1..1 MS
  * ^short = "Grobe Klassifizierung des Dokuments"
  * ^definition = "Grobe Klassifizierung des Dokuments (DocumentEntry.classCode)"
  * ^comment = "Das Attribut 'classCode' ist gemäß IHE XDS zwingend gefordert und erlaubt eine erste Klassifizierung der Dokumente in der XDS Document Registry in Dokumentenklassen, wie z.B. Briefe, Befundberichte oder Bilddaten. Die Wertemenge für diese Klassen sollte nicht zu detailliert sein, da im Attribut 'typeCode' eine weitere, verfeinerte Beschreibung der Dokumente erfolgt, die allerdings keine Spezialisierung des 'classCode' darstellen muss."
  * coding MS
    * ^definition = "Grobe Klassifizierung des Dokuments in kodierter Form"
    * ^comment = "n/a"
  * coding from $epa-xds-class-code-vs (required)
    * ^definition = "n/a"
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
* subject 1..1 MS
  * ^short = "Systemweit eindeutige Kennung des Patienten"
  * ^definition = "Systemweit eindeutige Kennung des Patienten (DocumentEntry.patientId)"
  * ^comment = "Dies ist die Kennung des Aktenkontoinhabers im Format der KVNR."
* subject only Reference(Patient)
  * ^comment = "TIPatient"
  * identifier 1..1 MS
  * identifier only identifier-kvid-10 
* date 0..1 MS
  * ^short = "Wann die DocumentReference erzeugt wurde"
  * ^definition = "Wann die DocumentReference erzeugt wurde"
  * ^comment = "Das Erzeugungsdatum des referenzierten Dokuments wird in DocumentReference.content.attachment.creation abgebildet."
* author 0..* MS
  * ^short = "Person oder System, welche(s) das Dokument erstellt hat"
  * ^definition = "Person oder System, welche(s) das Dokument erstellt hat (DocumentEntry.author)"
  * ^comment = "Die IHE Document Sharing Metadaten erlauben die Angabe mehrerer Autoren pro Dokument. Der Begriff Autor umfasst dabei alle aktiv an der Dokumentenerstellung beteiligten Personen und Geräte. Somit kann nicht nur der klassische Primärautor abgebildet werden, der die Sätze des Dokumententexts formuliert hat, sondern auch die Assistenzärztin, die die Messung durchgeführt hat, der Diktierdienst, die Spracherkennungssoftware oder auch ein Verwandter, der die Anamneseinformationen beigesteuert hat. Welche dieser Teilnehmer sinnvollerweise als Autor in den Dokumentenmetadaten abgebildet werden sollte, ist vom Anwendungsfall abhängig und muss von der Affinity Domain entschieden werden."
* author only Reference(Patient or Practitioner or Organization)
  * ^comment = "Logical Reference unter Nutzung der KVNR oder Telematik-ID"
  * identifier 0..1 MS
  * identifier only identifier-kvid-10 or $identifier-telematik-id or $identifier-lanr or $identifier-zanr
  * display 1.. MS
// FIXME: Add support for authorSpecialty and authorTelecommunication
* authenticator 0..1 MS
  * ^short = "Rechtlich Verantwortlicher für das Dokument"
  * ^definition = "Rechtlich Verantwortlicher für das Dokument (DocumentEntry.legalAuthenticator)"
  * ^comment = "n/a"
* authenticator only Reference(Practitioner or Organization)
  * ^comment = "Logical Reference unter Nutzung der Telematik-ID"
  * identifier 0..1 MS
  * identifier only $identifier-telematik-id
* custodian 0..0
  * ^short = "n/a"
  * ^definition = "n/a"
  * ^comment = "n/a"
// MS @ child elements with 1:1 set, since IHE defined already MS @ parent
* relatesTo 0..* MS
  * ^comment = "Logical Reference unter Nutzung der entryUUID"
  * code MS
  * code from $epa-mhd-document-relationship-type-vs (required)
  * target MS
    * identifier 0..1 MS
    * identifier only IHE.MHD.EntryUUID.Identifier
* description 0..1 MS
  * ^short = "Ergänzende Hinweise in Freitext"
  * ^definition = "Ergänzende Hinweise in Freitext (DocumentEntry.comments)"
  * ^comment = "n/a"
* securityLabel 0..* MS
  * ^short = "Vertraulichkeitskennzeichnung und Datenkategorie des Dokuments"
  * ^definition = "Vertraulichkeitskennzeichnung des Dokuments (DocumentEntry.confidentialityCode)"
  * ^comment = "Der Confidentiality Code drückt die Vertraulichkeitsstufe des Dokuments aus. Die Vertraulichkeitsstufe ist üblicherweise die Einschätzung des Autors oder des Einstellenden wie schützenswert das Dokument ist. Die Einschätzung des Autors oder Erstellers sollte erhalten bleiben, auch wenn die des Betroffenen (d.h. des Patienten) davon abweicht. Das heißt, dass man dem Dokument mehrere ConfidentialityCodes zuordnen können sollte. Dies unterstützt IHE XDS auch. Daher enthält das deutsche Value Set neben Codes der Autoreneinschätzung explizite Codes zur Betroffeneneinschätzung, die aus einem separaten, dediziertem Codesystem stammen. Die Datenkategorie des Dokuments entsprechend der ePA Legal Policy ist ebenso Bestandteil dieser Liste."
  * coding MS
    * ^definition = "Vertraulichkeitskennzeichnung und Datenkategorie des Dokuments in kodierter Form"
    * ^comment = "n/a"
  * coding from $epa-mhd-security-label-vs (required)
    * ^definition = "n/a"
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
* content MS
* content.attachment MS
* content.attachment.contentType 1..1 MS
* content.attachment.contentType from $epa-xds-mime-type-vs (required)
* content.attachment.language 1..1 MS
* content.attachment.language from $epa-xds-language-code-vs (required)
  * ^short = "Sprache, in der das Dokument abgefasst ist"
  * ^definition = "Sprache, in der das Dokument abgefasst ist (DocumentEntry.languageCode)"
  * ^comment = "n/a"
* content.attachment.url 1..1 MS
  * ^short = "URI für das Dokument"
  * ^definition = "URI für das Dokument (DocumentEntry.URI)"
  * ^comment = "Dateiname mit Extension ohne Pfadangabe"
* content.attachment.size 0..1 MS
  * ^short = "Größe des Dokuments in Bytes"
  * ^definition = "Größe des Dokuments in Bytes (DocumentEntry.size)"
  * ^comment = "n/a"
* content.attachment.hash 0..1 MS
  * ^short = "Kryptographische Prüfsumme des Dokuments"
  * ^definition = "Kryptographische Prüfsumme des Dokuments (DocumentEntry.hash)"
  * ^comment = "n/a"
* content.attachment.title 1..1 MS
  * ^short = "Titel des Dokuments"
  * ^definition = "Titel des Dokuments (DocumentEntry.title)"
  * ^comment = "n/a"
* content.attachment.creation 1..1 MS
  * ^short = "Erstellungszeitpunkt des Dokuments"
  * ^definition = "Erstellungszeitpunkt des Dokuments (DocumentEntry.creationTime)"
  * ^comment = "n/a"
* content.format 1..1 MS
  * ^short = "Global eindeutiger Code für das Dokumentenformat"
  * ^definition = "Global eindeutiger Code für das Dokumentenformat (DocumentEntry.formatCode)"
  * ^comment = "Das Attribut 'formatCode' spezifiziert das Format des Dokumentes. Zusammen mit dem typeCode (und ggf. mit dem mimeType) soll der formatCode für hinreichende Information sorgen, um einem Dokument-Konsumenten die Entscheidung zu ermöglichen, ob und wie er das Dokumentenformat verarbeiten kann."
* content.format from $epa-xds-format-code-vs (required)
* context MS
* context.encounter 0..0
* context.event 0..* MS
  * ^short = "Ereignisse, die zur Erstellung des Dokuments geführt haben"
  * ^definition = "Ereignisse, die zur Erstellung des Dokuments geführt haben (DocumentEntry.eventCodeList)"
  * ^comment = "Die eventCode Liste wurde konzipiert, um den medizinischen Kontext von Dokumenten abzubilden. Jedem Dokument können beliebig viele eventCodes zugeordnet werden. Zum Beispiel kann ein OP-Bericht über die eventCodeList mit je einem kodierten Wert für die durchgeführte Prozedur (z.B. Blinddarmentfernung) und die vorliegende Erkrankung (z.B. Appendizitis) versehen werden. Dies ermöglicht die Suche nach Dokumenten, die mit einer bestimmten Prozedur oder Diagnose zusammenhängen. Über den medizinischen Kontext hinaus kann das Attribut auch allgemein zur Kontextualisierung und zur Inhaltszusammenfassung verwendet werden."
  * coding MS
    * ^definition = "Zur Erstellung des Dokuments führende Ereignisse in kodierter Form"
    * ^comment = "n/a"
  * coding from $epa-xds-event-code-vs (required)
    * ^definition = "n/a"
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
* context.period 0..1 MS
* context.period.start 0..1 MS
  * ^short = "Zeitpunkt, an dem das im Dokument dokumentierte (Behandlungs-)Ereignis begonnen wurde"
  * ^definition = "Zeitpunkt, an dem das im Dokument dokumentierte (Behandlungs-)Ereignis begonnen wurde (DocumentEntry.serviceStartTime)"
  * ^comment = "n/a"
* context.period.end 0..1 MS
  * ^short = "Zeitpunkt, an dem das im Dokument dokumentierte (Behandlungs-)Ereignis beendet wurde"
  * ^definition = "Zeitpunkt, an dem das im Dokument dokumentierte (Behandlungs-)Ereignis beendet wurde (DocumentEntry.serviceStopTime)"
  * ^comment = "n/a"
* context.facilityType 1..1 MS
  * ^short = "Art der Einrichtung, in der das dokumentierte Ereignis stattgefunden hat"
  * ^definition = "Art der Einrichtung, in der das dokumentierte Ereignis stattgefunden hat (DocumentEntry.healthcareFacilityTypeCode)"
  * ^comment = "DocumentEntry.healthcareFacilityTypeCode repräsentiert die Art der Einrichtung, in der die Tätigkeit stattfand, die zur Erzeugung des Dokuments führte. Zum Beispiel sollten Dokumente, die während eines ambulanten Falls in einem Krankenhaus entstehen, mit dem healthcareFacilityTypeCode für 'Krankenhaus' gekennzeichnet werden. Dabei ist zu beachten, dass es sich nicht notwendigerweise um die Art der Einrichtung handelt, in der das Dokument erstellt wurde. Beispielsweise ist es bei teleradiologischer Befundung eines Röntgenbildes für den healthcareFacilityTypeCode unerheblich, ob der befundende Radiologe in einem Krankenhaus oder in einer radiologischen Praxis ansässig ist; für den healthcareFacilityTypeCode wird die Einrichtungsart der Untersuchungsstelle (in der das Gerät betrieben wird) herangezogen."
  * coding MS
    * ^definition = "Art der Einrichtung in kodierter Form"
    * ^comment = "n/a"
  * coding from $epa-xds-healthcare-facility-type-code-vs (required)
    * ^definition = "n/a"
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
* context.practiceSetting 0..1 MS
  * ^short = "Art der Fachrichtung der erstellenden Einrichtung, in der das dokumentiere Ereignis stattgefunden hat"
  * ^definition = "Art der Fachrichtung der erstellenden Einrichtung, in der das dokumentiere Ereignis stattgefunden hat (DocumentEntry.practiceSettingCode)"
  * ^comment = "DocumentEntry.practiceSettingCode spezifiziert die Fachrichtung der erstellenden Einrichtung. Typische Beispiele hierfür sind ärztliche Fachgebiete wie Allgemeinmedizin oder Radiologie. IHE International empfiehlt, dass die Codeliste zwischen 10 und 100 Codes umfassen sollte, so dass die Fachrichtung hinreichend genau abgebildet werden kann."
  * coding MS
    * ^definition = "Art der Fachrichtung in kodierter Form"
    * ^comment = "n/a"
  * coding from $epa-xds-practice-setting-code-vs (required)
    * ^definition = "n/a"
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
* context.sourcePatientInfo.identifier MS
  * ^short = "Kennung des Patienten im Quellsystem"
  * ^definition = "Kennung des Patienten im Quellsystem (DocumentEntry.sourcePatientId)"
  * ^comment = "n/a"
* context.sourcePatientInfo.reference MS
  * ^short = "Demographische Daten zum Patienten im Quellsystem"
  * ^definition = "Demographische Daten zum Patienten im Quellsystem (DocumentEntry.sourcePatientInfo)"
  * ^comment = "n/a"
* context.related 0..* MS
  * ^short = "Liste von IDs, mit denen das Dokument assoziiert wird"
  * ^definition = "Liste von IDs, mit denen das Dokument assoziiert wird (DocumentEntry.referenceIdList)"
  * ^comment = "n/a"