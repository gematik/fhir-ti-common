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


// * ^expansion.timestamp = "2026-09-12T00:00:00+02:00"

// // FHIR RESTful interactions
// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #read
// * ^expansion.contains[=].display = "read"

// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #vread
// * ^expansion.contains[=].display = "vread"

// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #update
// * ^expansion.contains[=].display = "update"

// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #patch
// * ^expansion.contains[=].display = "patch"

// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #delete
// * ^expansion.contains[=].display = "delete"

// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #history-instance
// * ^expansion.contains[=].display = "history-instance"

// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #history-type
// * ^expansion.contains[=].display = "history-type"

// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #create
// * ^expansion.contains[=].display = "create"

// * ^expansion.contains[+].system = "http://hl7.org/fhir/restful-interaction"
// * ^expansion.contains[=].version = "4.0.1"
// * ^expansion.contains[=].code = #search-type
// * ^expansion.contains[=].display = "search-type"

// // TI-specific conditional interactions
// * ^expansion.contains[+].system = Canonical(TIRestfulInteractionCS)
// * ^expansion.contains[=].version = "1.4.0"
// * ^expansion.contains[=].code = #conditional-create
// * ^expansion.contains[=].display = "Conditional Create"

// * ^expansion.contains[+].system = Canonical(TIRestfulInteractionCS)
// * ^expansion.contains[=].version = "1.4.0"
// * ^expansion.contains[=].code = #conditional-read
// * ^expansion.contains[=].display = "Conditional Read"

// * ^expansion.contains[+].system = Canonical(TIRestfulInteractionCS)
// * ^expansion.contains[=].version = "1.4.0"
// * ^expansion.contains[=].code = #conditional-update
// * ^expansion.contains[=].display = "Conditional Update"

// * ^expansion.contains[+].system = Canonical(TIRestfulInteractionCS)
// * ^expansion.contains[=].version = "1.4.0"
// * ^expansion.contains[=].code = #conditional-delete
// * ^expansion.contains[=].display = "Conditional Delete"
