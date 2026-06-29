Profile: TIPractitioner
Id: ti-practitioner
Parent: Practitioner
Title: "TI Practitioner"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Ressource Practitioner im Kontext der Telematikinfrastruktur (TI). Es dient der strukturierten Darstellung von Gesundheitsfachpersonen, wie z.B. Ärzt:innen, Zahnärzt:innen, Psychotherapeut:innen oder Apotheker:innen, innerhalb TI-konformer Anwendungen.
"""
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* id MS
* identifier MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    TelematikID 0..1 MS and
    LANR 0.. MS
* identifier[TelematikID] only $identifier-telematik-id
  * insert IdentifierMS
* identifier[LANR] only $identifier-lanr
  * insert IdentifierMS
* name only HumannameDeBasis
* name 1..* MS
  * insert HumanNameMS
  * text 1..1 MS
  * family 1..1 MS
  * given 0..* MS
* gender MS
* birthDate MS
* photo MS
  * insert AttachmentMS
* qualification MS
  * code MS
    * insert CodeableConceptMS
  * code from $ti-practitioner-qualification-vs (extensible)
* communication MS
  * insert CodeableConceptMS
