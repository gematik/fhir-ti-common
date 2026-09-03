Instance: 6894b106-8a91-4cfb-9826-443aed21c98b
InstanceOf: TIBodyStructure
Description: "Maximale Beispielinstanz für das Profil BodyStructuredgLP"
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* morphology
  * coding = $cs-sct-de-20260515#248708004 "Fragile blood vessel"
  * text = "test"
* extension[includedStructure]
  * extension[structure].valueCodeableConcept
    * coding = $cs-sct-de-20260515#90432007 "Structure of mucous membrane of nasopharynx"
    * text = "test"
  * extension[laterality].valueCodeableConcept
    * coding = $cs-sct-de-20260515#7771000 "Left"
    * text = "test"
  * extension[bodyLandmarkOrientation].extension[clockFacePosition].valueCodeableConcept
    * coding = $cs-sct-de-20260515#260330005 "3 o'clock position"
    * text = "test"
  * extension[qualifier].valueCodeableConcept
    * coding = $cs-sct-de-20260515#46053002 "Distal"
    * text = "test"
* morphology
  * coding = $cs-sct-de-20260515#75910000 "Congenital hypersegmentation"
  * text = "test"
* description = "test"
* patient = Reference(Patient/84e01fa5-6763-4a96-99f3-170cf9b317ff)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
