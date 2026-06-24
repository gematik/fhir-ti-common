Extension: IndicatorBVGExtension
Id: indicator-bvg-extension
Description: "Indicator of whether this regulation is made in reference to the 'Bundesentschädigungsgesetz' or the 'Bundesversorgungsgesetz'."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/indicator-bvg-extension"
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only boolean
* valueBoolean 1.. MS
* valueBoolean ^short = "BVG"
* valueBoolean ^definition = """
    Indicator of whether this regulation applies to claimants under the 'Bundesentschädigungsgesetz' (BEG) or to claimants under the 'Bundesversorgungsgesetz' (BVG).
    \r\n\r\nfalse - not BVG (default value)
    \r\ntrue - BVG
"""
