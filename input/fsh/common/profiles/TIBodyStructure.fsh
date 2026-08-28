Profile: TIBodyStructure
Parent: BodyStructureEuCore
Id: ti-body-structure
Title: "TI Body Structure"
Description: "Dieses Profil bildet eine Körperstruktur ab.\n\n
Angaben zur Körperstruktur können enthalten:\n
* Körperstelle (anatomische Benennung)
* Lateralität (für paarige Organe/Strukturen: rechts, links, beidseits)
* Lokalisierung (für räumliche Angaben, z.B. oben, unten)
* Uhrzeigerposition (z.B. 12-Uhr-Position)
* Morphologie (z.B. pathologische Strukturen)"
* . ^definition = "Angaben zur Körperstruktur können enthalten:\n
* Körperstelle (anatomische Benennung)
* Lateralität (für paarige Organe/Strukturen: rechts, links, beidseits)
* Lokalisierung (für räumliche Angaben, z.B. oben, unten)
* Uhrzeigerposition (z.B. 12-Uhr-Position)
* Morphologie (z.B. pathologische Strukturen)"
* insert Meta-With-Versioning
* extension MS
* extension[includedStructure] MS
  * extension[structure] MS
    * ^definition = "Anatomische Benennung eines Körperteils, Körperdetails oder Organs."
    * ^short = "Anatomische Körperstelle"
    * valueCodeableConcept MS
      * insert CodeableConceptMS
      * text MS
  * extension[laterality] MS
    * ^definition = "Das Datenelement Lateralität gibt bei paarigen Organen (z.B. Niere) oder paarigen Körperteilen (z.B. Arm, Bein) an, ob \"Rechts\", \"Links\" oder \"Bilateral\" betroffen ist."
    * ^short = "Angabe der Lateralität bei paarigen anatomischen Strukturen"
    * valueCodeableConcept MS
      * insert CodeableConceptMS
      * text MS
  * extension[bodyLandmarkOrientation] MS
    * extension[clockFacePosition] MS
      * ^definition = "Eine Beschreibung der Richtung, in der sich etwas von einem Orientierungspunkt entfernt befindet, basierend auf einem radialen Zifferblatt, als sogenannte Uhr-Position (Bsp. 3-Uhr-Position, 12 Uhr-Position)."
      * ^short = "Örtliche Präzisierung als Uhrzeigerposition"
      * valueCodeableConcept from BodyStructureClockFacePositionVS (example)
      * valueCodeableConcept MS
        * insert CodeableConceptMS
        * text MS
  * extension[qualifier] MS
    * ^definition = "An dieser Stelle kann eine präzisere Beschreibung der Lokalisation innerhalb einer Körperstruktur / eines Organs / Körperteils abgebildet werden. Es geht um räumliche Angaben, beispielsweise: oben, unten, medial, lateral oder Angabe eines Quadranten."
    * ^short = "Örtliche Qualifizierung oder Präzisierung einer anatomischen Körperstelle"
    * valueCodeableConcept from BodyStructureLocalisationVS (preferred)
    * valueCodeableConcept MS
      * insert CodeableConceptMS
      * text MS
* morphology MS
  * ^definition = "(Abnorm-)Morphologische Ausprägung(en) der Körperstruktur, beispielsweise Gewebeveränderungen, Entzündungsaspekte, Fehlbildungen.\n\n
Disclaimer: Da das Element BodyStructure.morphology auf eine Kardinalität von 0..1 beschränkt ist, können mehrere morphologische Erscheinungen nicht in strukturierter Form angegeben werden. Alternativ werden weitere morphologische Ausprägungen als ergänzende Angaben formuliert."
  * ^short = "(Abnorm-)Morphologische Einordnung zur Körperstruktur."
  * insert CodeableConceptMS
  * text MS
* description MS
  * ^definition = "In diesem Element werden ergänzende Freitext-Angaben zur Körperstruktur gemacht.\n
  Die Notwendigkeit ergänzender Angaben zur Körperstruktur ergibt sich unter anderem aus der Anforderung, weitere morphologische Erscheinungen zu dokumentieren.\n\n
  Disclaimer: Da das Element BodyStructure.morphology auf eine Kardinalität von 0..1 beschränkt ist, können mehrere morphologische Erscheinungen nicht in strukturierter Form angegeben werden."
* insert SubjectEu(patient)
