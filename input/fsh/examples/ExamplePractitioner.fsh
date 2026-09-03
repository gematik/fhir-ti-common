Alias: $TIPractitionerProfessionOidCS = https://gematik.de/fhir/directory/CodeSystem/PractitionerProfessionOID

Alias: $FacharztCS = urn:oid:1.2.276.0.76.5.514

Alias: $Arzt-TelematikID = 1-1.58.00000056
RuleSet: Arzt-display
* display = "Dr. Max Manfred Mustermann"


Instance: Arzt
InstanceOf: TIPractitioner
Description: "Example of a Practitioner"
* id = "c021aa5a-efea-4086-bac2-c7f3fdc1ffe8"
* active = true
* identifier[TelematikID].value = $Arzt-TelematikID
* identifier[LANR].value = "123456789"
* qualification[+].code = $TIPractitionerProfessionOidCS#1.2.276.0.76.4.30 "Ärztin/Arzt"
* qualification[+].code = $FacharztCS#011001 "FA Allgemeinmedizin"
* name
  * prefix = "Dr."
  * given[+] = "Erika"
  * family = "Musterman"
  * text = "Dr. Erika Mustermann"


Instance: ExampleTIPractitionerDentist
InstanceOf: TIPractitioner
Usage: #example
Description: "Example of a Practitioner (Dentist)"
* id = "1e3ba201-dd19-4018-b13a-f8dde3e9af01"
* identifier[TelematikID].value = "2-2.58.00000040"
* identifier[ZANR].value = "987654321"
* qualification[+].code = $TIPractitionerProfessionOidCS#1.2.276.0.76.4.31 "Zahnärztin/Zahnarzt"
* name
  * prefix = "Dr."
  * given[+] = "Max"
  * given[+] = "Manfred"
  * family = "Musterman"
  * text = "Dr. Max Manfred Mustermann"



Instance: PractitionerEuCoreExample
InstanceOf: TIPractitioner
Title: "PractitionerEuCore Example"
Description: "Example of a Practitioner resource conforming to the Practitioner (EU Core) profile."
* id = "practitioner-eu-core-example"
* name.family = "Doe"
* name.given = "John"
* gender = #male
* birthDate = "1970-01-01"


Instance: MaximaleBeispielinstanzTIPractitioner
InstanceOf: TIPractitioner
Description: "Maximale Beispielinstanz für das Profil TIPractitioner"
* id = "00120bfc-a941-4bf4-8904-9eb09303dbfd"
* meta
  * versionId = "1"
  * lastUpdated = "2023-05-03T11:15:00+01:00"
* text
  * status = #extensions
  * div = "<div xmlns='http://www.w3.org/1999/xhtml'>John Doe</div>"
* identifier[LANR]
  * type = $cs-v2-0203|5.0.0#LANR "Lifelong physician number"
  * system = "https://fhir.kbv.de/NamingSystem/KBV_NS_Base_ANR"
  * value = "123456789"
* identifier[TelematikID]
  * type = $cs-v2-0203|5.0.0#PRN "Provider number"
  * system = "https://gematik.de/fhir/sid/telematik-id"
  * value = "1-1.58.00000056"
* name
  * use = #official
  * text = "Dr. Hans Glücklich"
  * family = "Glücklich"
  * given = "Hans"
  * prefix = "Dr"
    * extension[prefix-qualifier].valueCode = #AC
* telecom
  * system = #phone
  * value = "12123455"
* gender = #other
* qualification[+].code = $TIPractitionerProfessionOidCS#1.2.276.0.76.4.30 "Ärztin/Arzt"
* qualification[+].code = $FacharztCS#011001 "FA Allgemeinmedizin"
