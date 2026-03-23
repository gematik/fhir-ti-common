Profile: TIPractitionerRole
Parent: PractitionerRole
Id: ti-practitioner-role
Title: "TI PractitionerRole"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Ressource PractitionerRole in der Telematikinfrastruktur (TI). Es wird verwendet, um die Rolle und Funktion einer Gesundheitsfachperson innerhalb einer Organisation zu definieren.
"""
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* id MS
* practitioner MS
  * insert ReferenceMS
* organization MS
  * insert ReferenceMS
* telecom MS
  * system MS
  * value MS
  * use MS
