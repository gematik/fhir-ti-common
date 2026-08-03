Profile: TIDeviceDefinitionLaboratoryAnalyzer
Parent: DeviceDefinition
Id: ti-deviceDefinition-laboratory-analyzer
Title: "TI DeviceDefinition LaboratoryAnalyzer"
Description: "Dieses Profil bildet das Modell eines Laboranalysegerätes ab."
* . ^definition = "Dieses Profil bildet das Modell eines Laboranalysegerätes ab."
* insert Meta-With-Versioning
* manufacturer[x] MS
  * ^definition = "Hier werden Angaben zum Hersteller des Gerätes referenziert."
* manufacturerReference MS
  * ^definition = "Hier wird der Hersteller des Laboranalysegerätes referenziert."
  * insert ReferenceMS
* type MS
  * ^definition = "Kategorisierung des Laboranalysegerätes"
  * insert CodeableConceptMS
  * coding 
    * ^definition = "Hier wird ein Code erfasst, welcher angibt um welchen Gerätetyp es sich handelt."
