RuleSet: Subject(element-name)
* {element-name} 1..1 MS
* {element-name} only Reference(Patient)
  * identifier 1..1 MS
  * identifier only IdentifierKvid10


RuleSet: ObservationEffectiveDateTime
* effective[x] only dateTime
* effective[x] 1..1 MS
  * ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #closed
* effective[x] contains effectiveDateTime 1..1 MS
* effectiveDateTime only dateTime


RuleSet: Performer
* performer ..1 MS
  * ^definition = "Hier wird die behandelnde Person/Einrichtung referenziert, die die Beobachtung durchgeführt hat."
  * reference MS
  * identifier MS
  * identifier only identifier-kvid-10 or
      identifier-telematik-id
* performer only Reference(Organization or
    RelatedPerson or
    Patient or
    Practitioner or
    PractitionerRole)


RuleSet: Note
* note MS
  * ^definition = "Hier können ergänzende freitextliche Kommentare und Notizen vorgenommen werden, die nicht durch die strukturierten Datenelemente erfassbar sind."
  * author[x] only Reference
  * author[x] MS
    * ^definition = "Hier wird die Person referenziert, die die Notiz erstellt hat."
    * ^slicing.discriminator.type = #type
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #closed
  * author[x] contains authorReference 0..1 MS
  * authorReference only Reference(Organization or
      Patient or
      Practitioner)
    * reference MS
    * identifier MS
    * identifier only identifier-kvid-10 or
          identifier-telematik-id
  * time MS
    * ^definition = "Hier wird der Zeitpunkt angegeben, zu dem die Notiz erstellt wurde."
    * ^comment = "Dieses Element sollte in der Regel automatisiert ohne Aufwand für die Person, die die Notiz erstellt befüllt werden."
  * text MS
    * ^definition = "Hier wird der eigentliche Text der Notiz eingetragen."
