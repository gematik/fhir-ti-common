Instance: ExampleTIPatient
InstanceOf: TIPatient
Title: "Example TIPatient"
Usage: #example
// * id = "ti-patient-example"
* id = "c78415a2-9285-403d-9fda-1b8e24e30964"
* identifier[KVNR].system = $sid-identifier-kvid-10
* identifier[KVNR].value = "G995030566"
* name[Name]
  * use = #official
  * family = "Gundlach"
  * given = "Monika"
  * prefix = "Dr."
    * extension[prefix-qualifier].valueCode = #AC
* name[Geburtsname]
  * use = #maiden
  * family = "Blohm"
    * extension[nachname].valueString = "Blohm"
* gender = #female
* birthDate = "1954-02-27"


Instance: ExamplePatientEuCore
InstanceOf: TIPatient
Title: "PatientEuCore Example"
Description: "Example of a Patient resource conforming to the Patient (EU Core) profile."
* id = "4acf1580-7770-4e37-9cbe-d839cd75c1f3"
* name.family = "Doe"
* name.given = "John"
* gender = #male
* birthDate = "1980-01-01"
* address.line = "123 Example Street"
* address.city = "Example City"
* address.state = "EX"
* address.postalCode = "12345"
* address.country = "EX"
* telecom.system = #phone
* telecom.value = "555-1234"
* telecom.use = #home
