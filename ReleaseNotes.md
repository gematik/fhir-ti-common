<img align="right" width="250" height="47" alt="gematik GmbH" src="images/Gematik_Logo_Flag_With_Background.png"/> <br/>


# Release Notes: FHIR Implementation Guide Telematikinfrastruktur (TI) Common

### Version 1.5.0

- Es wurden neue Profile für das TI-weite Dokumentenmanagement hinzugefügt. Die Profile orientieren sich an den Konzepten von IHE MHD und stellen eine gemeinsame Grundlage für die Verwaltung und Referenzierung von Dokumenten in der Telematikinfrastruktur bereit.

### Version 1.4.0-ballot.1

- Hinzugefügt wurde das Profil für den TIFlow AccessCode und das Profil für das TIFlow Secret.
- Ergänzung der dgMP-spezifischen Medikationsprofile, einschließlich TIMedicationDgMP, TIMedicationRequestDgMP, TIMedicationDispenseDgMP und TIMedicationStatementDgMP.

### Version 1.3.1
- Hinzufügen von fehlenden oder inkonsistenten _Must Support_ Flags


### Version 1.3.0

- Nutzungsvorgabe bei partieller Angabe des Geburtsdatums in _birthDate_ angepasst
- Neue Codes in _TI Operation Outcome Details_ hinzugefügt


### Version 1.2.0

- Die Anforderung IG-TI90315JPK-02 – Speichern der Profilversion - wurde in den IG für die [ePA-Basisfunktionalitäten#IG-EPA74597GNF] verschoben.


### Version 1.1.1

- Must-Support-Kennzeichnen an den Elementen _id_, _meta_, _active_ wurden entfernt.
- Das neue Profil _MedicationPlanIdentifier_ wurde hinzugefügt, um die strukturierte Abbildung des Identifiers für den elektronischen Medikationsplan (eMP) zu unterstützen.
- Entspannen von Kardinalitäten von _TIPractitioner.name_
- _TIPractitioner.name_ verwendet nun _HumannameDeBasis_ als Datentyp
- Bindings der ValueSets _TIOrganization.type_ anziehen um Slicing-Fehler zu korrigieren
- Klarstellung: VSDM 2.0 Fachdienst wird auf der Hauptseite nicht als FHIR Data Service benannt
- Die allgemeinen Anforderungen für die Operation-API stehen jetzt im IG für die ePA-Basisfunktionalitäten


### Version 1.1.0

- FHIR-Patientenprofil hinzugefügt
- Hinzufügen von TI-Common Profilen für Organization, Practitioner und PractitionerRole
- Die Anforderung IG-TI28940QKS – Hostname in _Bundle.entry.fullUrl_ für die ePA wurde in den IG für die ePA-Basisfunktionalitäten verschoben.


### Version 1.0.1
- Korrektur der Displaynamen im ValueSet _TI Operation Outcome Details_


### Version 1.0.0
- Initial release


<br>
