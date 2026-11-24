Extension: IndicatorBVGExtension
Id: indicator-bvg-extension
Title: "TI Extension: Kennzeichen für BEG oder BVG"
Description: "Kennzeichnet, ob die Verordnung mit Bezug zum Bundesentschädigungsgesetz (BEG) oder zum Bundesversorgungsgesetz (BVG) erfolgt."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/indicator-bvg-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only boolean
* valueBoolean 1.. MS
* valueBoolean ^short = "Kennzeichen für BEG oder BVG"
* valueBoolean ^definition = "Gibt an, ob die Verordnung mit Bezug zum Bundesentschädigungsgesetz (BEG) oder Bundesversorgungsgesetz (BVG) erfolgt."
