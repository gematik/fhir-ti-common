Profile: TIDeviceDefinitionSpecimenSubject
Parent: DeviceDefinition
Id: ti-deviceDefinition-specimen-subject
Title: "TI DeviceDefinition Specimen Subject"
Description: "Dieses Profil bildet das Modell einer außerkörperlichen Stelle ab."
* . ^definition = "Dieses Profil bildet das Modell einer außerkörperlichen Stelle ab."
* insert Meta-With-Versioning
* manufacturer[x] MS
  * ^definition = "Hier werden Angaben zum Hersteller des Gerätes referenziert."
* manufacturerReference MS
  * ^definition = "Hier wird der Hersteller des Produkts referenziert."
  * insert ReferenceMS
* manufacturerReference only Reference(TIOrganization)
* type MS
  * ^definition = "Kategorisierung der außerkörperlichen Stelle"
  * insert CodeableConceptMS
  * coding
    * ^definition = "Hier wird ein Code erfasst, welcher angibt um welchen Gerätetyp es sich handelt."
