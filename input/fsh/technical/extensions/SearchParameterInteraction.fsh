Extension: SearchParameterInteraction
Id: search-parameter-interaction
Title: "Search Parameter Interaction"
Description: "Gibt an, für welche REST-Interaktionen ein SearchParameter unterstützt wird."
* insert Meta

// preserve the version of this resource
* ^version = "1.4.0"
* ^date = "2026-09-23"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.resource.searchParam"

* value[x] only code
* valueCode from TypeRestfulInteraction (required)
