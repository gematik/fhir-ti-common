Extension: RxPrescriptionProcessIdentifierExtension
Id: rx-prescription-process-identifier-extension
Title: "TI Extension: Prozesskennung der Arzneimittelverordnung"
Description: "Ermöglicht die Nachverfolgung von Verordnungsvorgängen zwischen dem E-Rezept-Fachdienst und der ePA. Der ePA Medication Service erzeugt die Prozesskennung aus der PrescriptionId und dem in den Aufrufparametern übermittelten Datum authoredOn. Die Kennung dient der systemübergreifenden Referenzierung und Verwaltung der zugehörigen Ressourcen."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/rx-prescription-process-identifier-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "MedicationDispense"

* value[x] only Identifier
* valueIdentifier 1..1
  * ^short = "Prozesskennung der Arzneimittelverordnung"
  * ^definition = "Kennung zur Nachverfolgung eines Verordnungsvorgangs zwischen E-Rezept-Fachdienst und ePA."
* valueIdentifier only RxPrescriptionProcessIdentifier
