Profile: TIOrganization
Id: ti-organization
Parent: Organization
Title: "TI Organization"
Description: "Definiert die Datenstruktur für medizinische, regulatorische und technische Organisationen"
* insert Meta-With-Versioning

* extension contains
    NcpehCountryExtension named ncpehCountryEx 0..1 MS
* id MS
* active MS
* name 1..1 MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    TelematikID 0..1 MS and
    BSNR 0..1 MS and
    KZVA 0..1 MS and
    IKNR 0..* MS
* identifier[TelematikID] only $identifier-telematik-id
* identifier[BSNR] only $identifier-bsnr
* identifier[KZVA] only $identifier-kzva
* identifier[IKNR] only $identifier-iknr
* type MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* type contains
    providerType 0..* MS and
    profession 0..* MS
* type[providerType] from TIOrganizationTypeVS (required)
* type[profession] from TIOrganizationProfessionTypeOidVS (required)
* alias MS
* contact MS
* address MS
  * use MS
  * text MS
  * line MS
  * city MS
  * state MS
  * postalCode MS
  * country MS
* partOf MS
