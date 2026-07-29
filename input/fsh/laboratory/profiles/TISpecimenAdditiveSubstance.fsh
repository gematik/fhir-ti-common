Profile: TISpecimenAdditiveSubstance
Parent: SpecimenAdditiveSubstance
Id: ti-specimen-additive-substance
Title: "TI Specimen Additive Substance"
Description: "Hier wird eine Substanz abgebildet, die bei der Probenverarbeitung als Zusatz hinzugefügt wird."
* . ^definition = "Hier wird eine Substanz abgebildet, die bei der Probenverarbeitung als Zusatz hinzugefügt wird."
* insert Meta-With-Versioning
* code MS
  * ^definition = "In diesem Element werden Angaben zu Additiva in Form einer Codierung gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * coding MS
    * ^definition = "Angabe der Probenzusätze bei der Probenweiterverarbeitung als codierte Information."
    * system 1..1 MS
    * version MS
    * code 1..1 MS
    * display 1..1 MS
  * text MS
    * ^definition = "Angabe der Probenzusätze bei der Probenweiterverarbeitung als Freitext."
