Instance: 01a21c9c-2cd1-44e5-a999-f84d9ef70605
InstanceOf: TIServiceRequestLaboratory
Description: "Maximale Beispielinstanz für das Profil ServiceRequestdgLP"
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>Laborauftrag-Information</div>"
* identifier
  * system = "http://testsystem.de"
  * value = "20211115-127"
* status = #completed
* intent = #order
* priority = #routine
* code.coding = $cs-sct-de-20260515#721965002 "Laboratory order"
* orderDetail.text = "Beispieltext"
* subject = Reference(Patient/84e01fa5-6763-4a96-99f3-170cf9b317ff)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
* authoredOn = "2023-05-03T11:08:15+01:00"
* requester = Reference(Practitioner/2b946366-cf18-4d89-a29c-00bf69ac90f6)
* reasonCode[0]
  * extension[reasonType].valueString = "Anlass"
  * text = "Grund"
* reasonCode[1]
  * extension[reasonType].valueString = "Veranlassungsgrund"
  * text = "Grund2"
* reasonReference = Reference(Condition/1d344181-abf0-428d-9f3f-1bbd84b7684e)
* supportingInfo.display = "testressource"
* note.text = "test"
