Instance: 51b6129a-b68c-485d-a37b-9593fee4354f
InstanceOf: TIObservationLaboratoryStudyGroup
Description: "Maximale Beispielinstanz für das Profil ObservationLaboratoryStudyGroupdgLP"
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Laboruntersuchungsgruppe</div>"
* extension[testProfile]
  * valueCodeableConcept.coding = https://gematik.de/fhir/ti/CodeSystem/test-profile#haemato "Hämatologie"
  * valueCodeableConcept.text = "Hämatologie"
* status = #final
* category[laboratory]
  * coding = $cs-observation-category#laboratory "Laboratory"
* category[studyType]
  * coding = $loinc#18717-9 "Blood bank studies (set)"
  * text = "test"
* code.coding = https://gematik.de/fhir/epa-laboratory/CodeSystem/laboratory-study-group|1.0.0#laboruntersuchungsgruppe "Laboruntersuchungsgruppe"
* subject = Reference(Patient/84e01fa5-6763-4a96-99f3-170cf9b317ff)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* effectiveDateTime.extension[data-absent-reason].valueCode = #not-permitted
* performer = Reference(PractitionerRole/a424d6c6-de52-443e-a9b2-5240d3b9401a)
* interpretation
  * coding[hl7Interpretation]
    * system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
    * code = #D
    * version = "4.0.0"
    * display = "Significant change down"
  * coding[snomed] = $cs-sct-de-20260515#281300000 "Below reference range (qualifier value)"
  * text = "test"
* note.text = "test"
* hasMember = Reference(Observation/035761c3-8934-499f-bf34-3963979afb56)
  * extension[sortingNumberResult].valuePositiveInt = 1