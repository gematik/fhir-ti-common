Instance: 3604d5a6-798e-4615-8a22-1d280638e2c0
InstanceOf: TIDiagnosticReportLaboratory
Description: "Maximale Beispielinstanz für das Profil TIDiagnosticReportLaboratory"
// * meta
//   * versionId = "1"
//   * lastUpdated = "2023-05-03T11:15:00+01:00"
// * extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/cdfb127b-df3c-493f-bc7e-e8be4a7bdc45)
* extension[orderEntryTime].valueDateTime = "2023-05-02T14:15:00+01:00"
* extension[pseudonymizedReport].valueBoolean = true
* extension[criticalResult].valueBoolean = true
* extension[secondaryStatus].valueCoding = https://gematik.de/fhir/ti/CodeSystem/secondary-status|1.5.0#Geaendert "Geändert"
* extension[note].valueAnnotation
  * text = "Ergänzende Angabe"
* identifier
  * type.coding = $cs-v2-0203#RI "Resource Identifier"
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:123456"
* basedOn = Reference(ServiceRequest/01a21c9c-2cd1-44e5-a999-f84d9ef70605)
* status = #partial
* code
  * coding = $loinc-2.82#11502-2 "Laborbericht"
* subject = Reference(ExampleTIPatient)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* issued = "2022-08-09T12:00:00Z"
* performer[organization] = Reference(GematikOrganization)
* specimen = Reference(Specimen/4f47fe9c-d92e-46f4-ad6d-85740aaa467b)
* result = Reference(Observation/51b6129a-b68c-485d-a37b-9593fee4354f)
  * extension[sortingNumberGroup].valuePositiveInt = 1
* media
  * comment = "Patienteninformation"
  * link.extension[link].valueReference = Reference(DocumentReference/d9e75f3f-3900-4183-a475-d4d3dc1d14cc)
* conclusion = "test"
* presentedForm
  * contentType = #application/pdf
  * data = "dGVzdA=="
  * title = "Anhang"
  * creation = "2023-05-03"
