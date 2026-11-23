Extension: MedicationIsVaccineExtension
Id: medication-is-vaccine-extension
Description: "Indicator of whether this is a vaccine."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-id-vaccine-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Medication"

* value[x] only boolean
* valueBoolean 1.. MS
* valueBoolean ^short = "Vaccine Indicator"
* valueBoolean ^definition = """
    Indicator of whether this is a vaccine..
    \r\n\r\nfalse - no vaccine (default value)
    \r\ntrue - vaccine
"""
