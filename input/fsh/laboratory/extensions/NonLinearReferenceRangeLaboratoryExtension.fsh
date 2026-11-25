Extension: NonLinearReferenceRangeLaboratoryExtension
Id: non-linear-reference-range-laboratory-extension
Title: "Kennzeichen Nicht-linearer Wertebereich"
Description: "Diese Extension kennzeichnet, dass es sich um einen nicht-linearen Wertebereich handelt."
Context: Observation.referenceRange
* insert Meta
* . ^definition = "Diese Extension kennzeichnet, dass es sich um einen nicht-linearen Wertebereich handelt."
// preserve the version
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

* value[x] only boolean
* valueBoolean 1..1
* valueBoolean ^short = "Kennzeichen Nicht-linearer Wertebereich"
* valueBoolean ^definition = "true: Das numerische Ergebnis stammt aus einem nicht-linearen Wertebereich, z. B. einem ganzzahligen Score oder einer Titerstufe. false: Der Wertebereich ist linear. Fehlt die Extension, ist der Wertebereich nicht als nicht-linear gekennzeichnet; ein Hinweis kann sich weiterhin aus dem LOINC-Code ergeben (Scale = SemiQn)."
