Instance: 1d344181-abf0-428d-9f3f-1bbd84b7684e
InstanceOf: TIConditionDiagnosis
Description: "Maximale Beispielinstanz für das Profil TIConditionDiagnosis"
Usage: #example
// * text
//   * status = #extensions
//   * div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* clinicalStatus = $cs-condition-clinical|3.0.0#active "Active"
* verificationStatus = $cs-condition-ver-status|2.0.1#provisional "Provisional"
* code
  * coding[ICD-10-GM] = $icd-10-gm|2026#A00 "Cholera"
    * extension[Mehrfachcodierungs-Kennzeichen].valueCoding = $icd-10-gm-mehrfachcodierungs-kennzeichen|1.5.4#* "*"
    * extension[Seitenlokalisation].valueCoding = $KBV_CS_SFHIR_ICD_SEITENLOKALISATION|1.00#B "beiderseits"
    * extension[Diagnosesicherheit].valueCoding = $KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|1.00#V "Verdacht auf / zum Ausschluss von"
  * coding[orphanet] = $cs-orphanet|2025#173 "Cholera"
  * coding[alphaId] = $cs-alpha-id|2020#I30919 "Klassische Cholera"
  * coding[snomed] = $cs-sct-de-20260515#63650001 "Cholera"
  * text = "Beispielkrankheit"
* subject = Reference(ExampleTIPatient)
  * identifier
    * type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * system = $sid-identifier-kvid-10
    * value = "K123456789"
