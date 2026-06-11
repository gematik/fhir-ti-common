Extension: TeratogenicExtension
Id: teratogenic-extension
Description: "Abbildung der Angaben zur Verordnung eines teratogenen Arzneimittels (T-Rezept)"
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/teratogenic-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] 0..0
* url MS
* extension MS
* extension ^slicing.rules = #closed
* extension contains
    off-label 1..1 MS and
    childbearing-potential 1..1 MS and
    security-compliance 1..1 MS and
    hand-out-information-material 1..1 MS and
    declaration-of-expertise 1..1 MS

* extension[off-label]
  * value[x] MS
  * value[x] only boolean
  * valueBoolean MS
  * valueBoolean ^short = "Off-Label"
  * valueBoolean ^definition = "Dieses Feld enthält eine Angabe, ob eine Behandlung außerhalb der jeweils zugelassenen Anwendungsgebiete („Off-Label“) erfolgt."

* extension[childbearing-potential]
  * value[x] MS
  * value[x] only boolean
  * valueBoolean MS
  * valueBoolean ^short = "Gebärfähige Frau"
  * valueBoolean ^definition = "Dieses Feld enthält die Angabe, ob es sich um eine Verschreibung für eine gebärfähige Frau handelt."

* extension[security-compliance]
  * value[x] MS
  * value[x] only boolean
  * valueBoolean MS
  * valueBoolean ^short = "Einhaltung Sicherheitsmaßnahmen"
  * valueBoolean ^definition = "Dieses Feld enthält eine Angabe, ob die Sicherheitsmaßnahmen gemäß der aktuellen Fachinformation eines entsprechenden Fertigarzneimittels eingehalten werden, insbesondere, dass erforderlichenfalls ein Schwangerschafts-Präventionsprogramm durchgeführt wird."

* extension[hand-out-information-material]
  * value[x] MS
  * value[x] only boolean
  * valueBoolean MS
  * valueBoolean ^short = "Aushändigung Informationsmaterialien"
  * valueBoolean ^definition = "Dieses Feld enthält eine Angabe, ob der Patientin oder dem Patienten vor Beginn der medikamentösen Behandlung geeignete medizinische Informationsmaterialien ausgehändigt wurden."

* extension[declaration-of-expertise]
  * value[x] MS
  * value[x] only boolean
  * valueBoolean MS
  * valueBoolean ^short = "Erklärung Sachkenntnis"
  * valueBoolean ^definition = "Dieses Feld enthält die Erklärung, ob die verschreibende Person über ausreichende Sachkenntnisse zur Verschreibung von Arzneimitteln mit Lenalidomid, Pomalidomid oder Thalidomid verfügt."

