Profile: TIPractitionerRole
// Parent: PractitionerRoleEuCore
Parent: PractitionerRole
Id: ti-practitioner-role
Title: "TI PractitionerRole"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Ressource PractitionerRole in der Telematikinfrastruktur (TI). Es wird verwendet, um die Rolle und Funktion einer Gesundheitsfachperson innerhalb einer Organisation zu definieren.
"""
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.5.0"
* ^date = "2026-09-30"
* ^status = #active

//-------- EU --------
* insert ImposeProfile(PractitionerRoleEuCore, 0)
//--------------------

* id MS
* practitioner only Reference (TIPractitioner)
* practitioner MS
  * insert ReferenceMS
* organization only Reference (TIOrganization)
* organization MS
  * insert ReferenceMS
* telecom MS
  * system MS
  * value MS
  * use MS
