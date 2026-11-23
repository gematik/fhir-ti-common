Extension: IndicatorBVGExtension
Id: indicator-bvg-extension
Description: "Indicator of whether this regulation is made in reference to the 'Bundesentschädigungsgesetz' or the 'Bundesversorgungsgesetz'."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/indicator-bvg-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only boolean
* valueBoolean 1.. MS
* valueBoolean ^short = "BVG"
* valueBoolean ^definition = """
    Indicator of whether this regulation applies to claimants under the 'Bundesentschädigungsgesetz' (BEG) or to claimants under the 'Bundesversorgungsgesetz' (BVG).
    \r\n\r\nfalse - not BVG (default value)
    \r\ntrue - BVG
"""
