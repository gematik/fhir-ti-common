Instance: 18a30aa6-3b2d-4738-9ca9-125a452d14e0
InstanceOf: TIDeviceLaboratoryAnalyzer
Description: "Maximale Beispielinstanz für das Profil TIDeviceLaboratoryAnalyzer"
Usage: #example
// * meta
//   * versionId = "1"
//   * lastUpdated = "2023-05-03T11:15:00+01:00"
// * text
//   * status = #extensions
//   * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Laboranalysegerät</div>"
* identifier
  * type.coding = $cs-v2-0203|5.0.0#UDI "Universal Device Identifier"
  * system = "http://goodcare.org/devices/id"
  * value = "345675"
* definition = Reference(DeviceDefinition/25068c1f-a497-4cfe-b4e7-4a7026adf1e6)
* udiCarrier.deviceIdentifier = "example"
* distinctIdentifier = "example"
* manufactureDate = "2021-11-15T16:55:00+01:00"
* expirationDate = "2021-11-15T16:55:00+01:00"
* lotNumber = "12345"
* serialNumber = "12345"
* deviceName[manDeviceName]
  * name = "Test-Name"
  * type = #manufacturer-name
* deviceName[modelName]
  * name = "Test Model"
  * type = #model-name
* modelNumber = "123456789"
* type
  * coding[snomed] = $cs-sct-de-20260515#30234008 "Medical laboratory analyzer"
  * text = "Medizinisches Laboranalysegerät"
* version.value = "v1"
* note.text = "test"
