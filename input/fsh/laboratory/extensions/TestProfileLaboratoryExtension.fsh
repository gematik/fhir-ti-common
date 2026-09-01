Extension: TestProfileLaboratoryExtension
Id: test-profile-laboratory-extension
Title: "Laboruntersuchungsgruppe / Test-Profil"
Description: "Mit dieser Extension werden zusammengehörige Labortests oder eine Gruppe von Einzeluntersuchungen aus einem Verfahren zusammengefasst."
Context: Observation
* insert Meta
* . ^definition = "Mit dieser Extension werden zusammengehörige Labortests oder eine Gruppe von Einzeluntersuchungen aus einem Verfahren zusammengefasst"
* value[x] only CodeableConcept
* valueCodeableConcept from LaboruntersuchungsgruppeVS (example)
* valueCodeableConcept 1..1
  * coding
    * system 1..1
    * version ..1
    * code 1..1
    * display 1..1
