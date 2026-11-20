Profile: TIPractitioner
Id: ti-practitioner
Parent: PractitionerEuCore
Title: "TI Practitioner"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Ressource Practitioner im Kontext der Telematikinfrastruktur (TI). Es dient der strukturierten Darstellung von Gesundheitsfachpersonen, wie z.B. Ärzt:innen, Zahnärzt:innen, Psychotherapeut:innen oder Apotheker:innen, innerhalb TI-konformer Anwendungen.
"""
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active


* id MS
* identifier MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
* identifier contains
    TelematikID 0..1 MS and
    LANR 0.. MS and
    ZANR 0.. MS
* identifier[TelematikID] only $identifier-telematik-id
  * insert IdentifierMS
* identifier[LANR] only $identifier-lanr
  * insert IdentifierMS
* identifier[ZANR] only $identifier-zanr
  * insert IdentifierMS
* name only HumannameDeBasis
* name 1..* MS
  * insert HumanNameMS
  * obeys ti-practitioner-name-1
  * extension contains $data-absent-reason named dataAbsentReason 0..*
  * extension[dataAbsentReason]
    * ^short = "Grund für fehlende Namensangaben"
    * ^definition = "Gibt an, warum für diesen Namen weder family noch given noch text vorliegt. Fehlen alle drei Angaben, muss diese Extension gemäß ti-practitioner-name-1 vorhanden sein."
  * text 0..1 MS
    * ^comment = "Wenn HumanName.text fehlt, MUSS das anzeigende System den Namen aus den vorhandenen Bestandteilen prefix, given und family in dieser Reihenfolge zusammensetzen."
  * family 0..1 MS
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
