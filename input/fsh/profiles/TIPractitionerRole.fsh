Profile: TIPractitionerRole
Parent: PractitionerRole
Id: ti-practitioner-role
Title: "TI PractitionerRole"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Ressource PractitionerRole in der Telematikinfrastruktur (TI). Es wird verwendet, um die Rolle und Funktion einer Gesundheitsfachperson innerhalb einer Organisation zu definieren.
"""
* insert ProfileMeta
* id MS
* practitioner MS
* organization MS
* telecom MS
  * system MS
  * value MS
  * use MS
