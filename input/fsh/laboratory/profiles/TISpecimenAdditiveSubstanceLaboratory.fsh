Profile: TISpecimenAdditiveSubstanceLaboratory
Parent: SpecimenAdditiveSubstance
Id: ti-specimen-additive-substance-laboratory
Title: "TI Specimen Additive Substance Laboratory"
Description: "Hier wird eine Substanz abgebildet, die bei der Probenverarbeitung als Zusatz hinzugefügt wird."
* . ^definition = "Hier wird eine Substanz abgebildet, die bei der Probenverarbeitung als Zusatz hinzugefügt wird."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* code MS
  * ^definition = "In diesem Element werden Angaben zu Additiva in Form einer Codierung gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * insert CodeableConceptMS
  * coding
    * ^definition = "Angabe der Probenzusätze bei der Probenweiterverarbeitung als codierte Information."
  * text MS
    * ^definition = "Angabe der Probenzusätze bei der Probenweiterverarbeitung als Freitext."
