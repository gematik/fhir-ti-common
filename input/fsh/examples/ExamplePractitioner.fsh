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


// RuleSet: Arzt_PractitionerRole_Reference
// * requester = Reference(Arzt_PractitionerRole)
//   * display = "Dr. Max Manfred Mustermann / Praxis Dr. med. Max Mustermann"


// Instance: Arzt_PractitionerRole
// InstanceOf: PractitionerRole
// Title: "Arzt PractitionerRole"
// Usage: #example

// * id = "73a551f8-d8cd-4b44-823d-ab5f8aeab1aa"
// * practitioner = Reference(Arzt)
//   * identifier
//     * type
//       // * coding.version = "2.9.0"
//       * coding = $v2-0203#PRN "Provider number"
//     * system = $sid-identifier-telematik-id
//     * value = $Arzt-TelematikID
//   * insert Arzt-display
// * organization = Reference(BetriebsstaetteArzt)
//   * identifier
//     * type
//       // * coding.version = "2.9.0"
//       * coding = $v2-0203#PRN "Provider number"
//     * system = $sid-identifier-telematik-id
//     * value = $BetriebsstaetteArzt-TelematikID
//   * insert BetriebsstaetteArzt-display
