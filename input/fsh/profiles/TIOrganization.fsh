Profile: TIOrganization
Id: ti-organization
Parent: Organization
Title: "TI Organization"
Description: "Definiert die Datenstruktur für medizinische, regulatorische und technische Organisationen"
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* extension contains
    NcpehCountryExtension named ncpehCountryEx 0..1 MS
* extension[ncpehCountryEx] insert ExtensionCodingMS
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
  * insert IdentifierMS
* identifier[BSNR] only $identifier-bsnr
  * insert IdentifierMS
* identifier[KZVA] only $identifier-kzva
  * insert IdentifierMS
* identifier[IKNR] only $identifier-iknr
  * insert IdentifierMS
* type MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* type contains
    providerType 0..* MS and
    profession 0..* MS
* type[providerType] from TIOrganizationTypeVS (required)
  * insert CodeableConceptMS
* type[profession] from TIOrganizationProfessionTypeOidVS (required)
  * insert CodeableConceptMS
* alias MS
* contact MS
  * name MS
    * insert HumanNameMS
* address MS
  * use MS
  * text MS
  * line MS
  * city MS
  * state MS
  * postalCode MS
  * country MS
* partOf MS
  * insert ReferenceMS
