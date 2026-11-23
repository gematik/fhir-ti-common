Instance: ExampleHistoryBundle
InstanceOf: Bundle
Title: "Example History Bundle"
Description: "Das ist ein Beispiel für ein Bundle des Typ history"

* id = "example-history-bundle"

* type = #history
* total = 2

* link[0].relation = "self"
* link[0].url = "/epa/medication/api/v1/fhir/MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43/_history"

// POST: this was a create
* entry[0].fullUrl = "http://epa4all/epa/medication/api/v1/fhir/MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43"
* entry[0].request.method = #DELETE
* entry[0].request.url = "MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43"
* entry[0].response.status = "200 OK"
* entry[0].response.lastModified = "2025-08-22T15:00:00.000Z"

// POST: this was a create
* entry[1].fullUrl = "http://epa4all/epa/medication/api/v1/fhir/MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43"
* entry[1].resource = ExampleHistoryMedicationDispense
* entry[1].request.method = #POST
* entry[1].request.url = "MedicationDispense"
* entry[1].response.status = "201 Created"
* entry[1].response.lastModified = "2025-08-22T14:43:33.244Z"
* entry[1].response.location = "MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43/_history/1"



Instance: ExampleHistoryMedicationDispense
InstanceOf: MedicationDispense
Usage: #inline
* id = "4e6e1623-778e-44a3-b208-8479f5339e43"
* meta
  * versionId = "1"
  * lastUpdated = "2025-08-22T14:43:33.244Z"
  * profile[+] = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-dispense" 

* extension[+].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/rx-prescription-process-identifier-extension"
* extension[=].valueIdentifier
  * system = "https://gematik.de/fhir/epa-medication/sid/rx-prescription-process-identifier"
  * value = "162.153.303.257.459_20250301"

* status = #completed
* medicationReference = Reference(Medication/16e5611a-911c-4c0e-a705-43b0e4e79cf6)
* subject
  * identifier.system = "http://fhir.de/sid/gkv/kvid-10"
  * identifier.value = "X110411319"
* whenHandedOver = "2025-08-22"
* performer.actor = Reference(Organization/a2ce62fc-1f29-4759-863e-1a1ca7f9669e)
* authorizingPrescription = Reference(MedicationRequest/f434862b-9bf8-414d-8b94-5eaa0b4bbf01)
* dosageInstruction.text = "1-0-0-0"
* substitution
  * wasSubstituted = false