Profile: TIDeviceDefinitionSpecimenContainer
Parent: DeviceDefinition
Id: ti-device-definition-specimen-container
Title: "TI DeviceDefinition Specimen Container"
Description: "Dieses Profil bildet das Modell eines Probenbehälters ab."
* . ^definition = "Dieses Profil bildet das Modell eines Probenbehälters ab."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* manufacturer[x] only string
  * ^definition = "Hier wird der Hersteller des Laboranalysegerätes angegeben."
* manufacturerString MS
  * ^definition = "Hier wird der Name des Herstellers des Laboranalysegerätes angegeben."


* type MS
  * ^definition = "Kategorisierung des Probenbehälters"
  * insert CodeableConceptMS
  * coding
    * ^definition = "Hier wird ein Code erfasst, welcher angibt um welchen Gerätetyp es sich handelt."
