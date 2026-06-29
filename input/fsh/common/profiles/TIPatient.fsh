Profile: TIPatient
Id: ti-patient
Parent: Patient
Title: "TI Patient"
Description: "Das Patient-Profil für die Telematikinfrastruktur (TI) FHIR Data Services"
* insert Meta
// preserve the version of this resource
* ^version = "1.3.0"
* ^date = "2026-03-20"
* ^status = #active

* obeys pat-de-1

* identifier 0.. MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    KVNR 0..1 MS
* identifier[KVNR] only IdentifierKvid10
* identifier[KVNR] ^patternIdentifier.system = "http://fhir.de/sid/gkv/kvid-10"
* name MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^comment = """
        Um die Unterscheidung der Namensbestandteile gemäß dem VSDM-Datensatz beizubehalten oder Präfixe als akademische Titel zu qualifizieren, können Anbieter die im deutschen HumanName-Basisprofil spezifizierten Erweiterungen unterstützen: [HumanName DE Basis](https://simplifier.net/basisprofil-de-r4/humannamedebasis).

        Dies ist jedoch nicht verpflichtend im Rahmen dieser Spezifikation.
        """
* name contains
    Name 1..1 MS and
    Geburtsname 0..1 MS
* name[Name] only HumannameDeBasis
  * ^patternHumanName.use = #official
  * use 1.. MS
  * family 1.. MS
    * extension[namenszusatz] 0..1 MS
    * extension[nachname] 0..1 MS
    * extension[vorsatzwort] 0..1 MS
  * given 1.. MS
  * prefix MS
    * extension[prefix-qualifier] 0..1 MS
    * extension[prefix-qualifier].value[x] = #AC (exactly)
* name[Geburtsname] only HumannameDeBasis
  * ^patternHumanName.use = #maiden
  * use 1.. MS
  * family 1.. MS
    * extension[namenszusatz] 0..1 MS
    * extension[nachname] 0..1 MS
    * extension[vorsatzwort] 0..1 MS
  * given ..0
  * prefix ..0
  * suffix ..0
* birthDate 1.. MS
  * ^definition = """
      Das Geburtsdatum des Versicherten ist eine Pflichtangabe. Partielle Datumsangaben sind allerdings zulässig.
      """
  * ^comment = """
      Hinweise insbesondere zur Angabe unvollständiger Datumswerte siehe [Patient.birthDate](https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Patient.html#ig-markdown-Ressourcen-Patient-Geburtsdatum) im HL7 Leitfaden Basis DE (R4).
      """
  * ^short = """
      Geburtsdatum
      """
* gender MS
* gender
  * extension contains
    GenderOtherDE named other-amtlich 0..1