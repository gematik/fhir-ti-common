Instance: d9e75f3f-3900-4183-a475-d4d3dc1d14cc
InstanceOf: TIAppendixDocumentReference
Description: "Maximale Beispielinstanz für das Profil TIAppendixDocumentReference"
// * meta
//   * versionId = "1"
//   * lastUpdated = "2023-05-03T11:15:00+01:00"
// * text
//   * status = #extensions
//   * div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* status = #current
* type
  * coding[xds] = urn:oid:1.3.6.1.4.1.19376.3.276.1.5.9|4.0.0#BEFU "Ergebnisse Diagnostik"
  * text = "test"
* category[xds]
  * coding = urn:oid:1.3.6.1.4.1.19376.3.276.1.5.8|4.0.0#BEF "Befundbericht"
  * text = "test"
* subject = Reference(ExampleTIPatient)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* content.attachment
  * contentType = #application/pdf
  * data = "dGVzdA=="
  * title = "Anhang"
  * creation = "2022-05-06"
