Instance: 7813a2dc-36aa-41ce-b5f5-f338e944b5e9
InstanceOf: TIObservationLaboratoryImageAttachment
Description: "Maximale Beispielinstanz für das Profil TIObservationLaboratoryImageAttachment"
// * meta
//   * versionId = "1"
//   * lastUpdated = "2023-05-03T11:20:00+01:00"
// * text
//   * status = #extensions
//   * div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* extension[value-r5].valueAttachment
  * contentType = #image/png
  * data = "dGVzdA=="
  * title = "Protein-Elektrophoresekurve"
* status = #final
* category[laboratory].coding = $cs-observation-category|2.0.0#laboratory "Laboratory"
* code.coding[snomed] = $cs-sct-de-20260515#703450007 "Elektrophorese"
* subject = Reference(ExampleTIPatient)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* effectiveDateTime = "2021-11-15T11:30:00+01:00"
* performer = Reference(PractitionerRole/a424d6c6-de52-443e-a9b2-5240d3b9401a)
* derivedFrom = Reference(Observation/51b6129a-b68c-485d-a37b-9593fee4354f)
* note.text = "Erneute Testung in 3 Monaten"
