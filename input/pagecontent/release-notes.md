### Version 1.5.0

#### Akteure

- Dem IG wurde die Seite [Akteure und Obligations](actors.html) hinzugefügt. Sie beschreibt die Verwendung und Spezialisierung gemeinsamer Akteure sowie die Zuordnung von Obligations zu diesen Akteuren.
- Es wurden gemeinsame Akteure für die Zuordnung von Obligations eingeführt. Die grundlegenden Akteure `TIClient` und `TIService` können durch konkretere Akteure wie Primärsysteme, FdV, DiGA, Kostenträgersysteme oder fachliche TI Services spezialisiert werden.

#### Allgemein (Common)

- _TIPatient_ ist nun konform zum Patient EU Core-Profil. Die Konformität wird über imposeProfile festgelegt. Zur Kompatibilität mit EU Core wurde die Kardinalität von _name[Name]_ auf 0..1 gesetzt, sodass auch Patient.name ohne HumanName.use zulässig bleibt.
- _TIOrganization_ ist nun konform zum Organization EU Core-Profil. Die Konformität wird über imposeProfile festgelegt. Dadurch wird für Organization.address das EU-Core-Profil Address EU verwendet.
- _TIPractitioner_ ist nun konform zum Practitioner EU Core-Profil. Die Konformität wird über imposeProfile festgelegt. Im Zuge der Anpassung wurden die Constraints für die Abbildung des Namens an EU Core angeglichen. Insbesondere sind _Practitioner.name.text_ und _Practitioner.name.family_ nicht mehr verpflichtend und können optional angegeben werden.
- _TIPractitionerRole_ ist nun konform zum PractitionerRole EU Core-Profil. Die Konformität wird über imposeProfile festgelegt.
- Die neuen Datentyp-Profile _TIHumanName_ und _TIBirthName_ wurden zur Abbildung offizieller Namen und Geburtsnamen ergänzt.
- Als gemeinsame Profile wurden _TIConditionDiagnosis_, _TIRelatedPerson_, _TIBodyStructure_ und _TIAppendixDocumentReference_ für Diagnosen, Kontakt- und Bezugspersonen, Körperstrukturen und Dokumentanhänge hinzugefügt. _TIConditionDiagnosis_ leitet von _ConditionEuCore_ und _TIBodyStructure_ von _BodyStructureEuCore_ ab. Damit übernehmen auch diese beiden Profile die Vorgaben ihrer jeweiligen EU-Core-Basisprofile.
- Für Probenbehälter und außerkörperliche Probenquellen wurden die Profile _TIDeviceSpecimenContainer_, _TIDeviceDefinitionSpecimenContainer_ und _TIDeviceDefinitionSpecimenSubject_ ergänzt.
- Die gemeinsamen Extensions _CriticalResultExtension_, _PseudonymizedReportExtension_, _SecondaryStatusExtension_, _OrderEntryTimeExtension_, _SortingNumberExtension_, _ExternalServiceExtension_ und _SourceReferenceRangeExtension_ wurden ergänzt.

#### Laborprozess

- Für Laboraufträge, Laboruntersuchungen, Untersuchungsgruppen, ergänzende Abbildungen und Proben wurden die Profile _TIServiceRequestLaboratory_, _TIObservationLaboratoryStudy_, _TIObservationLaboratoryStudyGroup_, _TIObservationLaboratoryImageAttachment_ und _TISpecimenLaboratory_ hinzugefügt. Ergänzend wurden _TISpecimenAdditiveSubstanceLaboratory_, _TIDeviceLaboratoryAnalyzer_, _TIDeviceDefinitionLaboratoryAnalyzer_ und _TIDeviceLaboratorySpecimenSubject_ für Probenzusätze, Analysegeräte und außerkörperliche Probenquellen eingeführt.
- Die folgenden Laborprofile bauen auf den europäischen Profilen aus HL7 Europe Laboratory auf und übernehmen deren Vorgaben: _TIServiceRequestLaboratory_ leitet von _ServiceRequestLabEu_ ab; _TIObservationLaboratoryStudy_, _TIObservationLaboratoryStudyGroup_ und _TIObservationLaboratoryImageAttachment_ leiten von _ObservationResultsLaboratoryEu_ ab.
- _TISpecimenLaboratory_ leitet von _SpecimenEu_, _TISpecimenAdditiveSubstanceLaboratory_ von _SpecimenAdditiveSubstance_, _TIDeviceLaboratoryAnalyzer_ von _DeviceMeasuringLabReportEu_ und _TIDeviceLaboratorySpecimenSubject_ von _DeviceSpecimenLabReportEu_ ab. Auch diese Profile übernehmen damit die Vorgaben ihrer europäischen Basisprofile.
- Für die Labordiagnostik wurden die Extensions _ReasonTypeLaboratoryExtension_, _TestProfileLaboratoryExtension_, _ZlogLaboratoryExtension_, _AssociationServiceLaboratoryExtension_, _NoLinearReferenceRangeLaboratoryExtension_ und _AlternativeResultLaboratoryExtension_ hinzugefügt.

#### Dokumentenmanagement

- Dem IG wurde die Seite [IHE MHD-basiertes Dokumentenmanagement in der TI](document-management.html) hinzugefügt. Sie beschreibt das gemeinsame Dokumentenmodell und das an IHE MHD orientierte Verhalten für die Referenzierung, Verwaltung und den Austausch von Dokumenten in der TI.
- Für das TI-weite Dokumentenmanagement wurden die Profile _TIMHDDocumentReference_, _TIMHDSimplifiedPublishDocumentReference_, _TIMHDSubmissionSet_ und _TIMHDFolder_ hinzugefügt. Die Profile orientieren sich an den Konzepten von IHE MHD und stellen eine gemeinsame Grundlage für die Verwaltung und Referenzierung von Dokumenten in der Telematikinfrastruktur bereit. Ergänzt wurden außerdem die Extension _TIDocumentStorageLocation_, das CodeSystem _TIDocumentStorageLocationCS_ sowie die ValueSets _TIDocumentStorageLocationVS_ und _TIMHDDataCategoryVS_.

#### Medikationsprozess (dgMP)

Keine neuen FHIR-Artefakte mit expliziter Version `1.5.0`.

#### Systemverhalten

Keine neuen FHIR-Artefakte mit expliziter Version `1.5.0`.

#### Anforderungen

Neue Anforderungen wurden hinzugefügt, bestehende geändert und nicht mehr benötigte gelöscht. Die folgenden Release Notes geben einen detaillierten Überblick über alle Anpassungen.

{% include release-notes.html version="1.5.0" diff_to="1.4.0" with_links=true %}

### Version 1.4.0

- Eine neue Seite zur Validierung strukturierter Dosierungen wurde ergänzt, die die Vorgaben für FHIR Data Services zur Erzeugung und Prüfung der textuellen Repräsentation von Dosierinformationen beschreibt.

#### TIFlow

- Hinzugefügt wurde das Profil für den TIFlow AccessCode und das Profil für das TIFlow Secret.

#### Medikationsprozess (dgMP)

- Ergänzung der dgMP-spezifischen Medikationsprofile, einschließlich TIMedicationDgMP, TIMedicationRequestDgMP, TIMedicationDispenseDgMP und TIMedicationStatementDgMP.
- Mit TIMedicationPZNIngredientDgMP und TIMedicationPharmaceuticalProductDgMP wurden zwei neue Profile für die Abbildung von PZN-Bestandteilen in Rezepturen sowie von pharmazeutischen Produkten innerhalb von Kombipackungen ergänzt.

#### Systemverhalten

- Die neue Extension ExpectedDosageTextExtension wurde ergänzt, um in einem OperationOutcome den erwarteten Text der Dosierungsanweisung für die renderedDosageInstruction anzugeben.


#### Anforderungen

Neue Anforderungen wurden hinzugefügt, bestehende geändert und nicht mehr benötigte gelöscht. Die folgenden Release Notes geben einen detaillierten Überblick über alle Anpassungen.

{% include release-notes.html version="1.4.0" with_links=false %}

### Version 1.3.1

#### FHIR

- Hinzufügen von fehlenden oder inkonsistenten _Must Support_ Flags

{% comment %}

#### Anforderungen

{% include release-notes.html version="1.3.1" with_links=false %}

{% endcomment %}

### Version 1.3.0

#### TI Patient
- Nutzungsvorgabe bei partieller Angabe des Geburtsdatums in _birthDate_ angepasst

#### Terminologien
- Neue Codes in _TI Operation Outcome Details_ hinzugefügt

#### Anforderungen

{% include release-notes.html version="1.3.0" with_links=false %}

### Version 1.2.0

#### Anforderungen

- Die Anforderung IG-TI90315JPK-02 – Speichern der Profilversion - wurde in den IG für die [ePA-Basisfunktionalitäten#IG-EPA74597GNF] verschoben.

{% include release-notes.html version="1.2.0" with_links=false %}

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
