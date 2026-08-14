// Example for image rendering

// Profile: ExampleProfileForObligationsProcedure
// Parent: Procedure
// Id: exp-obligations-procedure
// Title: "Example Profile for Obligations Procedure"
// Description: "Example Profile for Obligations Procedure"
// * ^version = "1.0.0"
// * ^status = #active
// * code 1..1 MS
// * code ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:populate-if-known
// * code ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(TIService)
// * code ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #SHALL:handle
// * code ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(TIPVS)
// * code ^extension[http://hl7.org/fhir/StructureDefinition/obligation][+].extension[code].valueCode = #MAY:display
// * code ^extension[http://hl7.org/fhir/StructureDefinition/obligation][=].extension[actor].valueCanonical = Canonical(TIFdV)
// * code ^definition = "Identification of the procedure or recording of \"absence of relevant procedures\" or of \"procedures unknown\"."
// * code ^binding.description = "SNOMED CT procedure code set or a code for absent/unknown procedure"
