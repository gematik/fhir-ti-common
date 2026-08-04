Profile: TIDeviceDefinitionSpecimenContainer
Parent: DeviceDefinition
Id: ti-deviceDefinition-specimen-container
Title: "TI DeviceDefinition Specimen Container"
Description: "Dieses Profil bildet das Modell eines Probenbehälters ab."
* . ^definition = "Dieses Profil bildet das Modell eines Probenbehälters ab."
* insert Meta-With-Versioning
* manufacturer[x] MS
  * ^definition = "Hier werden Angaben zum Hersteller des Gerätes referenziert."
* manufacturerReference MS 
  * ^definition = "Hier wird der Hersteller des Probenbehälters referenziert."
  * insert ReferenceMS
* type MS
  * ^definition = "Kategorisierung des Probenbehälters"
  * insert CodeableConceptMS
  * coding
    * ^definition = "Hier wird ein Code erfasst, welcher angibt um welchen Gerätetyp es sich handelt."
