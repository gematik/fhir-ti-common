Profile: TIPractitionerRole
Parent: PractitionerRoleEuCore
Id: ti-practitioner-role
Title: "TI PractitionerRole"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Ressource PractitionerRole in der Telematikinfrastruktur (TI). Es wird verwendet, um die Rolle und Funktion einer Gesundheitsfachperson innerhalb einer Organisation zu definieren.

Die Bindungen von `PractitionerRole.code` (example) und `PractitionerRole.specialty` (preferred) sind bewusst offen, weil das Profil dienstübergreifend und für alle Berufsgruppen verwendet wird. Deutsche Kodierungen können verwendet werden.
"""
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active

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
* specialty MS
  * insert CodeableConceptMS
