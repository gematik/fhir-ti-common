Profile: TIRelatedPerson
Parent: RelatedPerson
Id: ti-related-person
Title: "TI Related Person"
Description: "Dieses Profil bildet eine Kontakt- oder Bezugsperson ab."
* insert Meta-With-Versioning
* . ^definition = "Hier wird eine Kontakt- oder Bezugsperson erfasst, die eine Beziehung zum Patienten / zur Patientin hat. Sie kann an der Versorgung des Patienten / der Patientin beteiligt sein, jedoch nur als Privatperson in ihrer privaten Zeit. Wenn ausgedrückt werden soll, dass sie an der Versorgung beteiligt ist, kann sie im Versorgungsteam aufgeführt werden. Ein Beispiel für Letzteres ist ein(e) pflegende(r) An- oder Zugehörige(r)."
* extension MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains AdditionalCommentExtension named additionalComment 0..1
* extension[additionalComment] MS
  * ^definition = "Hier werden weitere Informationen, beispielsweise die Pflegebedürftigkeitssituation der Kontaktperson, dargestellt. Wenn die Kontaktperson auch gesetzlich betreuende Person ist, kann hier beschrieben werden, für welchen Bereich sie bevollmächtigt ist."
  * valueString MS
* identifier MS
  * type MS
  * system MS
  * value MS
* insert SubjectEu(patient)
* relationship MS
  * ^definition = "In diesem Element werden Angaben über die Beziehung der Kontaktperson zur/zum Patient:in gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * insert CodeableConceptMS
  * coding MS
    * ^definition = "Hier wird die Beziehung der Kontaktperson zur/zum Patient:in anhand eines Codes aus einer Werteliste angegeben."
  * text MS
    * ^definition = "Hier wird ein Freitext eingetragen."
* name only HumannameDeBasis
* name MS
  * ^patternHumanName.use = #official
  * use 1.. MS
  * family 1.. MS
    * extension[namenszusatz] 0..1 MS
      * valueString 1.. MS
    * extension[nachname] 0..1 MS
      * valueString 1.. MS
    * extension[vorsatzwort] 0..1 MS
      * valueString 1.. MS
  * given 1.. MS
  * prefix MS
    * extension[prefix-qualifier] 0..1 MS
      * valueCode = #AC (exactly)
* gender MS
  * extension MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "url"
    * ^slicing.rules = #open
  * extension contains GenderOtherDE named other-amtlich 0..1
  * extension[other-amtlich] MS
    * valueCoding 1..1 MS
      * insert CodingMS
* telecom MS
  * ^definition = "Dieses Element beschreibt die vorhandenen Kontaktmöglichkeiten."
  * system 1.. MS
    * ^definition = "Hier wird die Art des Kontaktes definiert."
  * value 1.. MS
    * ^definition = "In diesem Element werden Kontaktinformationen passend zum Kontaktkanal angegeben. Beispiele für mögliche Werte sind: 'm.mustermann@mio42.de' (beim Kontaktkanal 'E-mail', oder '030712345678' (beim Kontaktkanal 'Telefon')."
