Extension: TestProfileLaboratoryExtension
Id: test-profile-laboratory-extension
Title: "Laboruntersuchungsgruppe / Test-Profil"
Description: "Mit dieser Extension werden zusammengehörige Labortests oder eine Gruppe von Einzeluntersuchungen aus einem Verfahren zusammengefasst."
Context: Observation
* insert Meta
* . ^definition = "Mit dieser Extension werden zusammengehörige Labortests oder eine Gruppe von Einzeluntersuchungen aus einem Verfahren zusammengefasst"
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* value[x] only CodeableConcept
* valueCodeableConcept from $ti-vs-laboruntersuchungsgruppe (example)
* valueCodeableConcept 1..1
  * coding
    * system 1..1
    * version ..1
    * code 1..1
    * display 1..1
