Profile: MedicationPlanIdentifier
Parent: Identifier
Id: medication-plan-identifier
Title: "Profil für den Identifikator eines eMP-Eintrags"
Description: """
Definiert die Struktur des Identifikators für einen Eintrag im elektronischen Medikationsplan (eMP). Der Identifikator ermöglicht die eindeutige technische Referenzierung einzelner eMP-Einträge.
"""
* insert Meta

// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* use = #official (exactly)
  * ^short = "official"
* system 1..1 MS
* system = "https://gematik.de/fhir/sid/emp-identifier"
* value 1..1 MS
  * ^short = "Der eindeutige Identifikationswert"
  * ^example.label = "General"
  * ^example.valueString = "687512ce-744c-8001-83c3-238227110dd6"
* period 0..0
* assigner 0..0
* extension 0..0
* id 0..0