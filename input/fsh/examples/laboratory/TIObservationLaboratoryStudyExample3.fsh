Instance: 6a2a44c6-92f8-40cf-a0bc-673404f7ac9b
InstanceOf: TIObservationLaboratoryStudy
Description: "Maximale Beispielinstanz für das Profil ObservationLaboratoryStudydgLP"
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Laboruntersuchung</div>"
* extension[accredited].valueBoolean = true
* extension[testProfile]
  * valueCodeableConcept.coding = https://gematik.de/fhir/ti/CodeSystem/test-profile#haemato "Hämatologie"
  * valueCodeableConcept.text = "Hämatologie"
* extension[externalService].valueBoolean = true
* extension[associationService].valueBoolean = true
* extension[zlogValue].valueDecimal = 2.00
* extension[alternativeResult]
  * extension[code].valueCodeableConcept = $loinc-2.82#3084-1 "Harnsäure [Masse/Volumen] in Serum oder Plasma"
  * extension[value].valueRange
    * low = 6.5 $cs-ucum#mg/dL "mg/dL"
    * high = 8.5 $cs-ucum#mg/dL "mg/dL"
  * extension[referenceRange].valueRange
    * low = 3.0 $cs-ucum#mg/dL "mg/dL"
    * high = 10.0 $cs-ucum#mg/dL "mg/dL"
  * extension[zlog].valueDecimal = 2.00
* identifier
  * type.coding = $cs-v2-0203|5.0.0#OBI "Observation Instance Identifier"
  * system = "http://www.acmedasdd.com/identifiers/patient"
  * value = "123456"
* status = #final
* category[laboratory]
  * coding = $cs-observation-category#laboratory "Laboratory"
* category[studyType]
  * coding = $loinc#18717-9 "Blood bank studies (set)"
  * text = "test"
* code
  * coding = $loinc-2.82#14933-6 "Harnsäure [Mol/Volumen] in Serum oder Plasma"
  * text = "additional text"
* subject = Reference(Patient/84e01fa5-6763-4a96-99f3-170cf9b317ff)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* effectiveDateTime = "2021-11-15T11:30:00+01:00"
* issued = "2021-11-15T11:30:00+01:00"
* performer = Reference(PractitionerRole/a424d6c6-de52-443e-a9b2-5240d3b9401a)
* valueRange
  * low = 0.2 $cs-ucum#mmol/L "mmol/L"
  * high = 0.6 $cs-ucum#mmol/L "mmol/L"
* interpretation
  * coding[hl7Interpretation]
    * code = #CAR
    * display = "Carrier"
  * coding[snomed] = $cs-sct-de-20260515#371152001 "Assisted (qualifier value)"
  * text = "test"
* note.text = "**Name**"
* method.coding = $cs-sct-de-20260515#4241000179101 "Laboratory report (record artifact)"
* method.text = "Blutgruppe"
* specimen = Reference(Specimen/4f47fe9c-d92e-46f4-ad6d-85740aaa467b)
* device = Reference(Device/18a30aa6-3b2d-4738-9ca9-125a452d14e0)
* referenceRange
  * extension[sourceReferenceRange].valueCodeableConcept
    * coding = $cs-sct-de-20260515#260394003 "Normal limits (qualifier value)"
    * text = "note"
  * extension[noLinearReferenceRange].valueBoolean = true
  * low = 1 $cs-ucum#1 "1"
  * high = 50 $cs-ucum#1 "1"
  * type
    * coding = $cs-referencerange-meaning|1.0.1#type "Type"
    * text = "test"
  * appliesTo.text = "Test"
  * text = "test"
* derivedFrom = Reference(Observation/035761c3-8934-499f-bf34-3963979afb56)