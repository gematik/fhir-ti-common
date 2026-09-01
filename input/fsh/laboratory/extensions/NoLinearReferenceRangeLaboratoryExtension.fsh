Extension: NoLinearReferenceRangeLaboratoryExtension
Id: no-linear-reference-range-laboratory-extension
Title: "Kennzeichen Nicht-linearer Wertebereich"
Description: "Diese Extension kennzeichnet, dass es sich um einen nicht-linearen Wertebereich handelt."
Context: Observation.referenceRange
* insert Meta
* . ^definition = "Diese Extension kennzeichnet, dass es sich um einen nicht-linearen Wertebereich handelt."
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* value[x] only boolean
* valueBoolean 1..1
