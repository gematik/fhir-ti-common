Instance: c46e7bfb-1ee3-4c6b-9ce2-204939133cc5
InstanceOf: TIDeviceLaboratorySpecimenSubject
Description: "Maximale Beispielinstanz für das Profil DeviceSpecimenSubjectdgLP"
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Laboranalysegerät</div>"
* identifier
  * type.coding = $cs-v2-0203|5.0.0#UDI "Universal Device Identifier"
  * system = "http://goodcare.org/devices/id"
  * value = "123456"
* definition = Reference(DeviceDefinition/81840764-fb77-49e6-9a7b-5cb028d29895)
* udiCarrier.deviceIdentifier = "example"
* distinctIdentifier = "example"
* manufactureDate = "2024-04-01T16:55:00+01:00"
* expirationDate = "2026-04-01T16:55:00+01:00"
* lotNumber = "12345"
* serialNumber = "9654537"
* modelNumber = "123456789"
* type
  * coding[snomed] = $cs-sct-de-20260515#8407004	"Bile collection bag"
  * text = "Medizinisches Laboranalysegerät"
* version.value = "v1"
* patient = Reference(Patient/84e01fa5-6763-4a96-99f3-170cf9b317ff)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* note.text = "test"
