Instance: ExampleTIPatient
InstanceOf: TIPatient
Title: "Example Patient"
Usage: #example
* identifier[KVNR].system = $sid-identifier-kvid-10
* identifier[KVNR].value = "G995030566"
* name[Name]
  * family = "Gundlach"
  * given = "Monika"
  * prefix = "Dr."
    * extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
    * extension.valueCode = #AC
* name[Geburtsname]
  * family = "Blohm"
    * extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
    * extension.valueString = "Blohm"
* gender = #female
* birthDate = "1954-02-27"
