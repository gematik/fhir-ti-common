Instance: d9e75f3f-3900-4183-a475-d4d3dc1d14cc
InstanceOf: TIAppendixDocumentReference
Description: "Maximale Beispielinstanz für das Profil DocumentReferencedgLP"
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* status = #current
* type
  * coding[xds] = http://ihe-d.de/CodeSystems/IHEXDStypeCode|4.0.0#PATI "Patienteninformationen"
  * text = "test"
* category
  * coding[xds] = http://ihe-d.de/CodeSystems/IHEXDSclassCode|4.0.0#ADM "Administratives Dokument"
  * text = "test"
* subject = Reference(Patient/84e01fa5-6763-4a96-99f3-170cf9b317ff)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* content.attachment
  * contentType = #application/pdf
  * data = "dGVzdA=="
  * title = "Anhang"
  * creation = "2022-05-06"
