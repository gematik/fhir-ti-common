### Version 1.5.0

#### Akteure

- Dem IG wurde die Seite [Akteure und Obligations](actors.html) hinzugefügt. Sie beschreibt die Verwendung und Spezialisierung gemeinsamer Akteure sowie die Zuordnung von Obligations zu diesen Akteuren.
- Es wurden gemeinsame Akteure für die Zuordnung von Obligations eingeführt. Die grundlegenden Akteure `TIClient` und `TIService` können durch konkretere Akteure wie Primärsysteme, FdV, DiGA, Kostenträgersysteme oder fachliche TI Services spezialisiert werden.

#### Allgemein (Common)

- _TIPatient_, _TIPractitioner_, _TIPractitionerRole_ und _TIOrganization_ werden direkt von den jeweiligen EU-Core-Profilen abgeleitet. Die Paketabhängigkeit `hl7.fhir.eu.base#2.0.1` legt die Version der Basisprofile fest. Gegenüber TI Common 1.3.1 ergeben sich je Profil folgende Änderungen.
  - _TIPatient_ übernimmt die Invariante `eu-pat-1`, das Adressprofil _AddressEu_ und die EU-Core-Slices für Geburtsort, Geburtszeit, klinisches Geschlecht, Geschlechtsidentität, Pronomen, Staatsbürgerschaft und Nationalität. Mindestens ein Name und das Geburtsdatum bleiben Pflicht. Der Slice `name[Name]` ist optional, sodass auch ein Name ohne `HumanName.use` die Kardinalität von `Patient.name` erfüllen kann. Liegt der amtliche Name vor, MUSS er in `name[Name]` angegeben werden.
  - _TIPractitioner_ übernimmt _AddressEu_ für Adressen. Mindestens ein Name bleibt Pflicht. `HumanName.text` und `HumanName.family` sind optional. Die Invariante `ti-practitioner-name-1` verlangt für jeden Namen mindestens eines der Elemente `family`, `given`, `text` oder die Extension `data-absent-reason`. Fehlt `HumanName.text`, setzt das anzeigende System den Namen aus den vorhandenen Bestandteilen `prefix`, `given` und `family` in dieser Reihenfolge zusammen.
  - _TIPractitionerRole_ schränkt `practitioner` und `organization` bei Angabe auf Referenzen auf _TIPractitioner_ bzw. _TIOrganization_ ein. Beide Zielprofile sind von den entsprechenden EU-Core-Profilen abgeleitet. `specialty` ist als Must Support gekennzeichnet.
  - _TIOrganization_ übernimmt _AddressEu_ für Adressen.
- Instanzen, die den Profilen aus TI Common 1.3.1 entsprechen, bleiben gültig, sofern weitere Patientennamen `eu-pat-1` erfüllen und die in `PractitionerRole.practitioner`, `PractitionerRole.organization` und `Organization.partOf` referenzierten Ressourcen _TIPractitioner_, _TIOrganization_ bzw. Organization EU Core entsprechen.
- Die neuen Datentyp-Profile _TIHumanName_ und _TIBirthName_ wurden zur Abbildung offizieller Namen und Geburtsnamen ergänzt.
- Als gemeinsame Profile wurden _TIConditionDiagnosis_, _TIRelatedPerson_, _TIBodyStructure_ und _TIAppendixDocumentReference_ für Diagnosen, Kontakt- und Bezugspersonen, Körperstrukturen und Dokumentanhänge hinzugefügt. _TIConditionDiagnosis_ leitet von _ConditionEuCore_ und _TIBodyStructure_ von _BodyStructureEuCore_ ab. Damit übernehmen auch diese beiden Profile die Vorgaben ihrer jeweiligen EU-Core-Basisprofile.
- Für Probenbehälter wurde das Profil _TIDeviceSpecimenContainer_ ergänzt.
- Die gemeinsamen Extensions _CriticalResultExtension_, _PseudonymizedReportExtension_, _SecondaryStatusExtension_, _OrderEntryTimeExtension_, _SortingNumberExtension_, _ExternalServiceExtension_ und _SourceReferenceRangeExtension_ wurden ergänzt.

#### Medikationsprozess (dgMP)

- Mit TI Common 1.4.0 wurden 21 Artefakte aus dem Namensraum `epa-medication` unter ihren bisherigen Canonical-URLs übernommen. In TI Common 1.5.0 tragen diese Artefakte die Version `1.5.0`. Dazu gehören die Identifier-Profile _RxPrescriptionProcessIdentifier_ und _RxOriginatorProcessIdentifier_, 18 Extensions und ein CodeSystem.
- Mit der Umstellung auf das finale Paket `de.fhir.medication#2.0.0` gilt für Dosierungsangaben in _TIMedicationRequestDgMP_, _TIMedicationDispenseDgMP_ und _TIMedicationStatementDgMP_ die Fassung von _DosageDgMP_ aus diesem Paket.
- In _TIMedicationDgMP_, _TIMedicationPZNIngredientDgMP_ und _TIMedicationPharmaceuticalProductDgMP_ ist der Zweck der Extension `data-absent-reason` an `Medication.form` beschrieben.

#### Laborprozess

- Für Laboraufträge, Laboruntersuchungen, Untersuchungsgruppen, ergänzende Abbildungen und Proben wurden die Profile _TIServiceRequestLaboratory_, _TIObservationLaboratoryStudy_, _TIObservationLaboratoryStudyGroup_, _TIObservationLaboratoryImageAttachment_ und _TISpecimenLaboratory_ hinzugefügt. Ergänzend wurden _TISpecimenAdditiveSubstanceLaboratory_, _TIDeviceLaboratoryAnalyzer_ und _TIDeviceLaboratorySpecimenSubject_ für Probenzusätze, Analysegeräte und außerkörperliche Probenquellen eingeführt.
- Die folgenden Laborprofile bauen auf den europäischen Profilen aus HL7 Europe Laboratory auf und übernehmen deren Vorgaben: _TIServiceRequestLaboratory_ leitet von _ServiceRequestLabEu_ ab; _TIObservationLaboratoryStudy_, _TIObservationLaboratoryStudyGroup_ und _TIObservationLaboratoryImageAttachment_ leiten von _ObservationResultsLaboratoryEu_ ab.
- _TISpecimenLaboratory_ leitet von _SpecimenEu_, _TISpecimenAdditiveSubstanceLaboratory_ von _SpecimenAdditiveSubstance_, _TIDeviceLaboratoryAnalyzer_ von _DeviceMeasuringLabReportEu_ und _TIDeviceLaboratorySpecimenSubject_ von _DeviceSpecimenLabReportEu_ ab. Auch diese Profile übernehmen damit die Vorgaben ihrer europäischen Basisprofile.
- Für die Labordiagnostik wurden die Extensions _ReasonTypeLaboratoryExtension_, _TestProfileLaboratoryExtension_, _ZlogLaboratoryExtension_, _AssociationServiceLaboratoryExtension_, _NonLinearReferenceRangeLaboratoryExtension_ und _AlternativeResultLaboratoryExtension_ hinzugefügt. Sind Richtgrenzen in einer Alternativeinheit angegeben, ist in _TIObservationLaboratoryStudy_ höchstens ein Referenzbereich zulässig.
- Die Definitionen der Kennzeichen Kritischer Befund, Fremdleistung, Verbundleistung und Nicht-linearer Wertebereich legen fest, was `true`, `false` und eine fehlende Extension bedeuten.

#### Dokumentenmanagement

- Dem IG wurde die Seite [IHE MHD-basiertes Dokumentenmanagement in der TI](document-management.html) hinzugefügt. Sie beschreibt das gemeinsame Dokumentenmodell und das an IHE MHD orientierte Verhalten für die Referenzierung, Verwaltung und den Austausch von Dokumenten in der TI.
- Für das TI-weite Dokumentenmanagement wurden die Profile _TIMHDDocumentReference_, _TIMHDSimplifiedPublishDocumentReference_, _TIMHDSubmissionSet_ und _TIMHDFolder_ hinzugefügt. Die Profile orientieren sich an den Konzepten von IHE MHD und stellen eine gemeinsame Grundlage für die Verwaltung und Referenzierung von Dokumenten in der Telematikinfrastruktur bereit. Ergänzt wurden außerdem die Extension _TIDocumentStorageLocation_, das CodeSystem _TIDocumentStorageLocationCS_ sowie die ValueSets _TIDocumentStorageLocationVS_ und _TIMHDDataCategoryVS_.

#### Paketabhängigkeiten

- IHE MHD ist auf `ihe.iti.mhd#4.2.5` festgelegt. Diese Version bindet `ihe.formatcode.fhir#1.6.0` als feste transitive Abhängigkeit ein.
- Als bekannte Einschränkung bindet `hl7.fhir.eu.base#2.0.1` weiterhin den Kommentarstand `ihe.pharm.mpd.r4#1.0.0-comment-2` ein. Die Abhängigkeit ergibt sich aus dem Paket von HL7 Europe Base.
- Die Veröffentlichung von TI Common 1.5.0 setzt die Umstellung auf das finale Paket `de.fhir.medication#2.0.0` voraus.

#### Systemverhalten

- Dem CodeSystem _TIOperationOutcomeDetailsCS_ und dem ValueSet _TIOperationOutcomeDetailsVS_ wurde der Code _SVC_DANGLING_REFERENCE_ hinzugefügt. Er wird verwendet, wenn eine schreibende Anfrage abgelehnt wird, weil sie zu hängenden literalen Referenzen führen würde (siehe Abschnitt "Referentielle Integrität" unter [Generelle Prinzipien](general-principles.html)).
- Zur Paginierung ist ergänzt, dass die Links `next` und `previous` nur angegeben werden, wenn eine folgende bzw. vorhergehende Ergebnisseite existiert.
- Für die booleschen Angaben `required` (_HTTPHeader_) und `retryable` (_HttpResponseInfo_) ist festgelegt, was `true` und `false` bedeuten.

#### Anforderungen

Neue Anforderungen wurden hinzugefügt, bestehende geändert und nicht mehr benötigte gelöscht. Die folgenden Release Notes geben einen detaillierten Überblick über alle Anpassungen.

{% include release-notes.html version="1.5.0" diff_to="1.4.0" with_links=true %}

### Version 1.4.1

#### Medikationsprozess (dgMP)

- Update der Abhängigkeit zu de.fhir.medication 1.0.8
- Korrektur des Bindings für TIMedicationDgMP.form von CodeSystem zu ValueSet
- Anpassung der Kardinalität der Slices von TIMedicationDgMP.form auf jeweils 0..*
- Referenzierung des Profils DosageDgMP in TIMedicationDispenseDgMP
- Die Profile _TIMedicationRequestDgMP_, _TIMedicationDispenseDgMP_ und _TIMedicationStatementDgMP_ tragen nun die Constraints `ExtRequiresDosage-MR`, `ExtRequiresDosage-MD` bzw. `ExtRequiresDosage-MS` aus dem Medication IG DE (DosageExtensionsRequireDosage). Liegt die Dosierungs-Extension _renderedDosageInstruction_ oder _generatedDosageInstructionsMeta_ vor, müssen den Profilen entsprechende Instanzen mindestens eine Dosierung enthalten.
- In _TIMedicationDispenseDgMP_ wird die Dosierung nun als _DosageDgMP_ statt als _DosageDE_ abgebildet. Damit gelten für die Abgabe dieselben Dosierungs-Vorgaben des Medication IG DE wie für Verordnung und Medikationsinformation.

### Version 1.4.0

- Eine neue Seite zur Validierung strukturierter Dosierungen wurde ergänzt, die die Vorgaben für FHIR Data Services zur Erzeugung und Prüfung der textuellen Repräsentation von Dosierinformationen beschreibt.

#### TIFlow

- Hinzugefügt wurde das Profil für den TIFlow AccessCode und das Profil für das TIFlow Secret.

#### Medikationsprozess (dgMP)

- Ergänzung der dgMP-spezifischen Medikationsprofile, einschließlich TIMedicationDgMP, TIMedicationRequestDgMP, TIMedicationDispenseDgMP und TIMedicationStatementDgMP.
- Mit TIMedicationPZNIngredientDgMP und TIMedicationPharmaceuticalProductDgMP wurden zwei neue Profile für die Abbildung von PZN-Bestandteilen in Rezepturen sowie von pharmazeutischen Produkten innerhalb von Kombipackungen ergänzt.

##### Übernahme und Versionierung der ePA-Medication-Artefakte

- TI Common 1.4.0 hat 21 Artefakte aus `de.gematik.epa.medication` 1.3.5 unter ihren bisherigen Canonical-URLs übernommen. 
- Änderungen an Must Support betreffen die Unterstützung von Elementen durch Implementierungen. Sie ändern die Gültigkeit von Instanzen nicht.
- Die `context-extension` bindet an das inhaltsgleiche ValueSet `https://gematik.de/fhir/ti/ValueSet/context-code`. Das CodeSystem `context-code` verweist ebenfalls auf dieses ValueSet.
- In der `rx-prescription-process-identifier-extension` macht `value[x]` mit `1..1` explizit, was die FHIR-Invariante `ext-1` bei ausgeschlossenen Unter-Extensions bereits in `de.gematik.epa.medication` 1.3.5 verlangte. Eine Extension ohne Wert war damit bereits ungültig.


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
