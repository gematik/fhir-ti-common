Alias: $ContactEntityTypeCS = http://terminology.hl7.org/CodeSystem/contactentity-type
Alias: $ti-organization-profession-type-oid-cs = https://gematik.de/fhir/directory/CodeSystem/OrganizationProfessionOID


Alias: $GematikOrganization-TelematikID = 9-2.58.00000040
RuleSet: GematikOrganization-display
* display = "gematik GmbH"


Instance: GematikOrganization
InstanceOf: TIOrganization
Description: "Example of an Organization as to be found in gematik FHIR Directory"
Usage: #example
* id = "153a9401-a7f9-4583-a6fc-11d011c47897"
* identifier[TelematikID].value = $GematikOrganization-TelematikID
* active = true
* type = $ti-organization-profession-type-oid-cs#1.2.276.0.76.4.58 "Betriebsstätte gematik"
* name = "gematik GmbH"
* active = true
* alias = "gematik"
* address.text = """gematik GmbH
Rosenthaler Straße 30,
10178 Berlin"""
* address
  * line[+] = "Rosenthaler Straße 30"
  * city = "Berlin"
  * district = "Mitte"
  * state = "Berlin"
  * postalCode = "10178"
  * country = "DE"
* contact
  * purpose = $ContactEntityTypeCS#ADMIN
  * name.text = "gematik ITSM"
  * telecom[+].system = #email
  * telecom[=].value = "betrieb@gematik.de"


Alias: $GematikApotheke-TelematikID = 9-2.58.00000023
RuleSet: GematikApotheke-display
* display = "gematik Apotheke"


Instance: GematikApotheke
InstanceOf: TIOrganization
Description: "Example of an Organization as to be found in gematik FHIR Directory"
Usage: #example
* id = "6bfef75a-066a-40dd-82c4-719d718072df"
* identifier[TelematikID].value = $GematikApotheke-TelematikID
* active = true
* type = $ti-organization-profession-type-oid-cs#1.2.276.0.76.4.54 "Öffentliche Apotheke"
* name = "gematik Apotheke"
* active = true
* alias = "Apotheke"
* address.text = """gematik Apotheke
Rosenthaler Straße 30,
10178 Berlin"""
* address
  * line[+] = "Rosenthaler Straße 30"
  * city = "Berlin"
  * district = "Mitte"
  * state = "Berlin"
  * postalCode = "10178"
  * country = "DE"
* contact
  * purpose = $ContactEntityTypeCS#ADMIN
  * name.text = "gematik ITSM"
  * telecom[+].system = #email
  * telecom[=].value = "betrieb@gematik.de"


Alias: $BetriebsstaetteArzt-TelematikID = 9-2.58.00000045
RuleSet: BetriebsstaetteArzt-display
* display = "Praxis Dr. med. Max Mustermann"

Instance: BetriebsstaetteArzt
InstanceOf: TIOrganization
Description: "Example of an Organization as to be found in gematik FHIR Directory"
Usage: #example
* id = "6d2610b9-5d50-421e-aca8-e7c61bc60742"
* identifier[TelematikID].value = $BetriebsstaetteArzt-TelematikID
* identifier[BSNR].value = "012300004"
* active = true
* type = $ti-organization-profession-type-oid-cs#1.2.276.0.76.4.50 "Betriebsstätte Arzt"
* name = "Praxis Dr. med. Max Mustermann"
* active = true
* address[+]
  * line[+] = "Musterstr. 1"
  * line[+] = "Mitte"
  * type = #both
  * city = "Darmstadt"
  * postalCode = "64283"
  * country = "DE"
* address[+]
  * line = "45678"
  * type = #postal
  * city = "Darmstadt"
  * country = "DE"



Instance: OrganizationEuCorexample
InstanceOf: TIOrganization
Title: "OrganizationEuCore Example"
Description: "Example of an Organization resource conforming to the Organization (EU Core) profile."
* id = "organization-eu-core-example"
* name = "Example Health Organization"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* address.line = "123 Example Street"
* address.city = "Example City"
* address.state = "EX"
* address.postalCode = "12345"
* address.country = "EX"
* telecom.system = #phone
* telecom.value = "555-1234"
* telecom.use = #work