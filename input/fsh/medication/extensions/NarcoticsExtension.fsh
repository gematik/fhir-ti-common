Extension: NarcoticsExtension
Id: narcotics-extension
Description: "Abbildung der Angaben zur Verordnung eines Betäubungsmittels im Sinne des Betäubungsmittelgesetzes (BtMG)"
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/narcotics-extension"
// preserve the version
* ^version = "1.3.1"
//TODO* ^date = "2025-12-15"
* ^status = #active

* value[x] 0..0
// * url MS
// * extension MS
* extension ^slicing.rules = #closed
* extension contains
    narcotics-markings 0..1 MS and
    additional-information-substitutes 0..1 MS
* extension[narcotics-markings]
  // * url MS
  * value[x] MS
  * value[x] only Coding
  * valueCoding from $vs-kbv-narcotics (required)
    * ^comment = "Die KBV aktualisiert ihr \"Schüsseltabellen\"-Paket häufiger, als neue ePA-Versionen veröffentlicht werden. Allerdings übernehmen die E-Rezept-Clients und der E-Rezept-Fachdienst neue KBV-Paketversionen schnell nach deren Veröffentlichung und geben sie somit an den ePA-MedicationService weiter. Da der MedicationService möglicherweise an eine ältere Version des KBV-Pakets gebunden ist, würde er die weitergeleiteten E-Rezept-Daten ablehnen. Zukünftig wird der MedicationService in der Lage sein, auf die neuesten KBV-Paketversionen zu aktualisieren, ohne dass eine neue ePA-Version erforderlich ist.
    Da das E-Rezept *tatsächlich* die Codes gegen die neueste KBV-Paketversion prüft, wird der MedicationService keine \"ungültigen\" Codes erhalten, und die Clients können darauf vertrauen, dass die Daten des MedicationService mit der neuesten KBV-Paketversion übereinstimmen."
    * ^patternCoding.system = $cs-kbv-narcotics
  * valueCoding MS
    * system MS
    * code MS
    * code ^short = "Kennzeichen nach § 9 Abs. 1 Nr. 6 BtMVV"
    * code ^definition = "Kennzeichen nach § 9 Abs. 1 Nr. 6 BtMVV"
* extension[additional-information-substitutes]
  // * url MS
  * value[x] MS
  * value[x] only string
  * valueString MS
  * valueString ^short = "Ergänzende Angaben zu Substitutionsmittel"
  * valueString ^definition = "Dieses Feld enthält ergänzende Angaben zu Reichdauer und Teilmengen des Substitutionsmittels, insbesondere Zeitpunkte, zu denen das Substitutionsmittel abgegeben bzw. verabreicht werden soll."
