Extension: MedicationIsVaccineExtension
Id: medication-is-vaccine-extension
Description: "Indicator of whether this is a vaccine."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/medication-id-vaccine-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only boolean
* valueBoolean 1..
* valueBoolean ^short = "Vaccine Indicator"
* valueBoolean ^definition = """
    Indicator of whether this is a vaccine..
    \r\n\r\nfalse - no vaccine (default value)
    \r\ntrue - vaccine
"""
