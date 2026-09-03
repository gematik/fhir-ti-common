Instance: 4f47fe9c-d92e-46f4-ad6d-85740aaa467b
InstanceOf: TISpecimenLaboratory
Description: "Maximale Beispielinstanz für das Profil SpecimendgLP"
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Probe</div>"
* extension[focus].valueReference = Reference(Device/c46e7bfb-1ee3-4c6b-9ce2-204939133cc5)
* identifier
  * type = $cs-v2-0203|5.0.0#SID "Specimen ID"
  * system = "http://testsystem.de"
  * value = "Test Specimen identifier"
* status = #available
* type
  * coding[snomed] = $cs-sct-de-20260515#119376003 "Tissue specimen"
  * text = "test"
* subject = Reference(Patient/84e01fa5-6763-4a96-99f3-170cf9b317ff)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* receivedTime = "2021-11-15T16:55:00+01:00"
* parent = Reference(Specimen/eb7fbea2-95bd-4618-b38d-ce69cde79726)
* collection
  * extension[bodySite].valueReference = Reference(BodyStructure/6894b106-8a91-4cfb-9826-443aed21c98b)
  * collector = Reference(PractitionerRole/a424d6c6-de52-443e-a9b2-5240d3b9401a)
  * collectedDateTime = "2023-05-03"
//  * collectedPeriod
//    * start = "2023-05-03T16:55:00+01:00"
//    * end = "2023-08-03T16:55:00+01:00"
  * duration
    * value = 20
    * comparator = #>
    * unit = "ms"
    * system = "http://unitsofmeasure.org"
    * code = #ms
  * method
    * coding[snomed] = $cs-sct-de-20260515#1048003 "Capillary specimen collection (procedure)"
    * text = "test"
  * fastingStatusDuration
    * value = 8
    * comparator = #>
    * unit = "hour"
    * system = "http://unitsofmeasure.org"
    * code = #h
//    * fastingStatusCodeableConcept
//      * coding = $cs-sct-de-20260515#160244002 "Fasting (finding)"
//      * text = "test"
* processing
  * description = "test"
  * procedure
    * coding = $cs-v2-0373|3.0.0#ACID "Acidification"
    * text = "test"
  * additive = Reference(Substance/a4b533d4-0a3c-4701-b411-fd9666bf3d03)
  * timeDateTime = "2023-05-03"
//  * timePeriod
//    * start = "2023-05-03T16:55:00+01:00"
//    * end = "2023-08-03T16:55:00+01:00"
* container
  * extension[device].valueReference = Reference(Device/05146497-2ca3-488e-96cb-c27c77ab6a3c)
  * specimenQuantity
    * value = 20
    * unit = "ms"
    * system = "http://unitsofmeasure.org"
    * code = #ms
* condition
  * coding = $cs-v2-0493|3.0.0#AUT "Autolyzed"
  * text = "test"
* note.text = "test"