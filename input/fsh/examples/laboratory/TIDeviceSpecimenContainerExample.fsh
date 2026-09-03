Instance: 05146497-2ca3-488e-96cb-c27c77ab6a3c
InstanceOf: TIDeviceSpecimenContainer
Description: "Maximale Beispielinstanz für das Profil DeviceSpecimenContainerdgLP"
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Probenbehälter-Typ</div>"
* identifier
  * type.coding = $cs-v2-0203|5.0.0#UDI "Universal Device Identifier"
  * system = "http://goodcare.org/devices/id"
  * value = "345675"
* definition = Reference(DeviceDefinition/30a47ba7-8975-4383-ad43-61c032c30e53)
* udiCarrier.deviceIdentifier = "example"
* distinctIdentifier = "example"
* manufactureDate = "2021-11-15T16:55:00+01:00"
* expirationDate = "2021-11-15T16:55:00+01:00"
* serialNumber = "987654"
* modelNumber = "56789"
* lotNumber = "12345"
* type
  * coding[snomed] = $cs-sct-de-20260515#434711009 "Specimen container"
  * text = "Probenbehälter"
* note.text = "test"
