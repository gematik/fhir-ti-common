### Version 1.2.0

#### TI Patient
- Die Kardinalität des FHIR-Elements _active_ wurde auf 0..0 gesetzt.

#### Anforderungen

Neue Anforderungen wurden hinzugefügt, bestehende geändert und nicht mehr benötigte gelöscht. Die folgenden Release Notes geben einen detaillierten Überblick über alle Anpassungen.

- Die Anforderung IG-TI90315JPK=02 – Speichern der Profilversion - wurde in den IG für die [ePA-Basisfunktionalitäten#IG-EPA74597GNF] verschoben.

{% include release-notes.html version="1.2.0" with_links=true %}

### Version 1.1.1

#### TI Patient
- Must-Support-Kennzeichnen an den Elementen _id_, _meta_, _active_ wurden entfernt.

#### Datentypen
- Das neue Profil _MedicationPlanIdentifier_ wurde hinzugefügt, um die strukturierte Abbildung des Identifiers für den elektronischen Medikationsplan (eMP) zu unterstützen.

#### TI Common

- Entspannen von Kardinalitäten von _TIPractitioner.name_
- _TIPractitioner.name_ verwendet nun _HumannameDeBasis_ als Datentyp
- Bindings der ValueSets _TIOrganization.type_ anziehen um Slicing-Fehler zu korrigieren
- Klarstellung: VSDM 2.0 Fachdienst wird auf der Hauptseite nicht als FHIR Data Service benannt

#### Operation API
- Die allgemeinen Anforderungen für die Operation-API stehen jetzt im IG für die ePA-Basisfunktionalitäten

#### Anforderungen

{% include release-notes.html version="1.1.1" with_links=false %}

### Version 1.1.0

#### TI Patient
- FHIR-Patientenprofil hinzugefügt

#### TI Common
- Hinzufügen von TI-Common Profilen für Organization, Practitioner und PractitionerRole

#### Anforderungen

- Die Anforderung IG-TI28940QKS – Hostname in _Bundle.entry.fullUrl_ für die ePA wurde in den IG für die ePA-Basisfunktionalitäten verschoben.

{% include release-notes.html version="1.1.0" with_links=false %}

### Version 1.0.1

#### Terminologien
- Korrektur der Displaynamen im ValueSet _TI Operation Outcome Details_

#### Anforderungen

{% include release-notes.html version="1.0.1" with_links=false %}


### Version 1.0.0

#### Anforderungen

{% include release-notes.html version="1.0.0" with_links=false %}

<br>
