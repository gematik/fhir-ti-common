ValueSet: TIRestfulInteractionVS
Id: ti-restful-interaction-vs
Title: "TI Restful Interaction ValueSet"
Description: "Definiert die unterstützten REST-Interaktionen einschließlich der TI-spezifischen bedingten Interaktionen."
* insert Meta-VS
// preserve the version of this resource
* ^version = "1.4.0"
* ^date = "2026-09-23"
* ^status = #active

// Standardisierte FHIR REST-Interaktionen
* include codes from valueset http://hl7.org/fhir/ValueSet/type-restful-interaction

// Ergänzende TI-Interaktionen
* include codes from system TIRestfulInteractionCS
