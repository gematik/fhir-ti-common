Extension: IndicatorSERExtension
Id: indicator-ser-extension
Description: "Kennzeichnung, ob diese Verordnung mit Bezug zum Sozialen Entschädigungsrecht nach SGB XIV (SER) erfolgt"
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/indicator-ser-extension"
// preserve the version
* ^version = "1.4.1"
* ^date = "2026-11-24"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only boolean
* valueBoolean 1.. MS
* valueBoolean ^short = "SER"
* valueBoolean ^definition = """
    Kennzeichnung, ob diese Verordnung mit Bezug zum Sozialen Entschädigungsrecht nach SGB XIV (SER) erfolgt
    \r\n\r\nfalse - not SER (default value)
    \r\ntrue - SER
"""
