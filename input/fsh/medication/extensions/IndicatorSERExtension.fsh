Extension: IndicatorSERExtension
Id: indicator-ser-extension
Title: "TI Extension: Kennzeichen für Soziales Entschädigungsrecht"
Description: "Kennzeichnung, ob diese Verordnung mit Bezug zum Sozialen Entschädigungsrecht nach SGB XIV (SER) erfolgt"
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/indicator-ser-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only boolean
* valueBoolean 1.. MS
* valueBoolean ^short = "Kennzeichen für Soziales Entschädigungsrecht"
* valueBoolean ^definition = "Gibt an, ob die Verordnung mit Bezug zum Sozialen Entschädigungsrecht nach SGB XIV erfolgt."
