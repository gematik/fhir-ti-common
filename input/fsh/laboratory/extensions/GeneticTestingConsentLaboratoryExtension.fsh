Extension: GeneticTestingConsentLaboratoryExtension
Id: genetic-testing-consent-laboratory-extension
Title: "Kennzeichen Einwilligung Genetische Untersuchung"
Description: "Diese Extension bildet eine Kennzeichnung bezüglich der Einwilligung für eine genetische Untersuchung nach § 8 GenDG (Gendiagnostikgesetz) ab."
Context: ServiceRequest
* insert Meta
* . ^definition = "Diese Extension bildet eine Kennzeichnung bezüglich der Einwilligung für eine genetische Untersuchung nach § 8 GenDG (Gendiagnostikgesetz) ab."
// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only boolean
* valueBoolean 1..1
