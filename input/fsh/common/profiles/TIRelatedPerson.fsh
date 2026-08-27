Profile: TIRelatedPerson
Parent: RelatedPerson
Id: ti-related-person
Title: "TI Related Person"
Description: "Dieses Profil bildet eine Kontakt- oder Bezugsperson ab."
* insert Meta-With-Versioning
* . ^definition = "Hier wird eine Kontakt- oder Bezugsperson erfasst, die eine Beziehung zum Patienten / zur Patientin hat. Sie kann an der Versorgung des Patienten / der Patientin beteiligt sein, jedoch nur als Privatperson in ihrer privaten Zeit. Wenn ausgedrückt werden soll, dass sie an der Versorgung beteiligt ist, kann sie im Versorgungsteam aufgeführt werden. Ein Beispiel für Letzteres ist ein(e) pflegende(r) An- oder Zugehörige(r)."
* obeys pat-de-1
* extension MS
* extension contains $hl7-note named additionalComment 0..1
* extension[additionalComment] MS
  * ^definition = "Hier werden weitere Informationen, beispielsweise die Pflegebedürftigkeitssituation der Kontaktperson, dargestellt. Wenn die Kontaktperson auch gesetzlich betreuende Person ist, kann hier beschrieben werden, für welchen Bereich sie bevollmächtigt ist."
  * text MS
* identifier MS
  * type MS
  * system MS
  * value MS
* insert SubjectEu(patient)
* relationship MS
  * ^definition = "In diesem Element werden Angaben über die Beziehung der Kontaktperson zur/zum Patient:in gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * insert CodeableConceptMS
  * coding MS
    * ^definition = "Hier wird die Beziehung der Kontaktperson zur/zum Patient:in anhand eines Codes, bevorzugt aus dem ValueSet PatientRelationshipType, angegeben."
    * ^definition = "Hier wird ein Freitext eingetragen."
* name MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^comment = """
        Um die Unterscheidung der Namensbestandteile gemäß dem VSDM-Datensatz beizubehalten oder Präfixe als akademische Titel zu qualifizieren, können Anbieter die im deutschen HumanName-Basisprofil spezifizierten Erweiterungen unterstützen: [HumanName DE Basis](https://simplifier.net/basisprofil-de-r4/humannamedebasis).

        Dies ist jedoch nicht verpflichtend im Rahmen dieser Spezifikation.
        """
* name contains
    Name 0..1 MS and
    Geburtsname 0..1 MS
* name[Name] only TIHumanName
* name[Name] ^patternHumanName.use = #official
* name[Geburtsname] only TIBirthName
* name[Geburtsname] ^patternHumanName.use = #maiden
* gender MS
* gender
  * extension contains
    GenderOtherDE named other-amtlich 0..1
* telecom MS
  * ^definition = "Dieses Element beschreibt die vorhandenen Kontaktmöglichkeiten."
  * system 1.. MS
    * ^definition = "Hier wird die Art des Kontaktes definiert."
  * value 1.. MS
    * ^definition = "In diesem Element werden Kontaktinformationen passend zum Kontaktkanal angegeben. Beispiele für mögliche Werte sind: 'm.mustermann@mio42.de' (beim Kontaktkanal 'E-mail', oder '030712345678' (beim Kontaktkanal 'Telefon')."
* address MS
  * use MS
  * text MS
  * line MS
  * city MS
  * state MS
  * postalCode MS
  * country MS