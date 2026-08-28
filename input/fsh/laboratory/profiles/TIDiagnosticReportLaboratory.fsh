Profile: TIDiagnosticReportLaboratory
Parent: DiagnosticReportLabEu
Id: ti-diagnostic-report-laboratory
Title: "TI Diagnostic Report Laboratory"
Description: "Profil für den Laborgesamtbefund (DiagnosticReport). Darin verschachtelt unter \"Ergebnisse\" (DiagnosticReport.result) ist die Referenz auf \"Untersuchungsgruppe\" (Observation_Laboratory_Study_Group), darin die Referenz auf \"Laboruntersuchung\" (Observation_Laboratory_Study), darin die Referenz auf \"Probe\" (Specimen)."
* . ^definition = "Profil für den Laborgesamtbefund (DiagnosticReport). Darin verschachtelt unter \"Ergebnisse\" (DiagnosticReport.result) ist die Referenz auf \"Untersuchungsgruppe\" (Observation_Laboratory_Study_Group), darin die Referenz auf \"Laboruntersuchung\" (Observation_Laboratory_Study), darin die Referenz auf \"Probe\" (Specimen)."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* obeys diag-status-1
* extension MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains
  OrderEntryTimeExtension named orderEntryTime ..1 and
  PseudonymizedReportExtension named pseudonymizedReport ..1 and
  CriticalResultExtension named criticalResult ..1 and
  SecondaryStatusExtension named secondaryStatus ..3
* extension[note] MS
  * ^definition = "Freitextliche Angabe von zusätzliche Informationen zum Laborgesamtbefund."
  * valueAnnotation 1.. MS
    * text MS
* extension[orderEntryTime] MS
  * ^definition = """
  Die Bedeutung und Verwendung des Auftragseingangszeitpunktes im Laborprozess kann unterschiedlich sein, beispielsweise:\n
  * In einem OrderEntry-Setting kann der Auftragseingangszeitstempel zum Zeitpunkt der ersten Probeneinbuchung für diesen Auftrag im Labor gesetzt werden. In einem solchen Fall aktiviert/generiert die erste Probe den Auftrag im LIS.
  * In einem papiergebundenen Setting ist in der Regel der Scanzeitpunkt des Papierauftrages der Auftragseingangszeitstempel. Ggf. kann dieser vor oder nach der/den zugehörigen Probeneinbuchungen liegen.
  """
  * ^short = "Auftrageingangszeitpunkt im Labor"
  * valueDateTime MS
* extension[DiagnosticReportCompositionR5] MS
  * valueReference 1.. MS
    * insert ReferenceMS
* extension[criticalResult] MS
  * ^definition = "Dieses Kennzeichen ist optional und deklariert einen aus labormedizinischer Sicht medizinisch kritischen Befund. Es wird aus einer aktiven Entscheidung des/der Labormediziners/in manuell gesetzt."
  * ^short = "Manuell gesetztes Kennzeichen Kritischer Befund"
  * valueBoolean MS
* extension[pseudonymizedReport] MS
  * ^definition = """
  Mit diesem Kennzeichen kann ein Laborbefund als \"pseudonymisiert\" deklariert werden.\n
  Fachlicher Hintergrund: es gibt Anwendungsfälle, z.B. aus der Betriebsmedizin, die erfordern, dass ein Laborbefund pseudonymisiert, also ohne personenidentifizierende Inhalte übertragen wird. Nach welchen Regeln und mit welchem Identifikator ein pseudonymisierter Laborbefund übermittelt wird, ist Gegenstand einer Einzelabstimmung zwischen der anfordernden Einrichtung und dem Labor. Oft ist bereits der Auftrag pseudonymisiert. Hinweis: Zu einem späteren Zeitpunkt könnten Patient:innen berechtigterweise fordern, dass der Laborbefund seinen anderen Befunden hinzugefügt wird, z.B. in der ePA. Durch das Hochladen in die ePA wird der Befund eindeutig einer Person zugeordnet und dadurch die Pseudonymisierung (auch bei unverändert verdeckten Personendaten) \"demaskiert\".
  """
  * ^short = "Kennzeichnung, ob ein Laborbefund pseudonymisiert ist"
  * valueBoolean MS
* extension[secondaryStatus] MS
  * ^definition = """
  Optionale sekundäre Angabe des Änderungsstatus, die zusätzlich zum Hauptstatus \"Status Gesamtbefund\" mitgegeben werden kann. Es können mehrere Werte als Änderungsgrund angegeben werden. Die möglichen Werte sind:\n
  * Geändert
  * Korrigiert
  * Angefügt\n
  Der typische und in jedem Labor alltägliche Anwendungsfall ist die Nachforderung bei einer Stufendiagnostik. Änderungen am Gesamtbefund können sich auch auf einen noch nicht abgeschlossenen Befund beziehen, z.B. auf einen Teilbefund oder einen vorläufigen Befund.
  """
  * ^short = "Änderungsstatus Laborbefund (Sekundärstatus)"
  * valueCoding MS
  * valueCoding from SecondaryStatusVS (required)
* insert Coding(extension[secondaryStatus].valueCoding)
* identifier MS
  * type MS
  * insert IdentifierMS
* basedOn MS
  * ^definition = "Hier wird eine Laborauftrag-Information referenziert."
  * ^short = "Referenz Laborauftrag-Information"
  * insert ReferenceMS
* basedOn only Reference(TIServiceRequestLaboratory)
* status MS
  * ^definition = "Bearbeitungsstatus des Laborgesamtbefundes."
* code MS
  * ^definition = "Codierte Angabe zur Art des Befundes, hier Laborbefund"
  * ^short = "Deklariert \"Laborbefund\""
  * insert CodeableConceptMS
  * text MS
* insert SubjectEu(subject)
* encounter MS
  * ^definition = "Referenzierung auf die Fall-Identifikation / Fallnummer bezüglich Begegnung/Aufenthalt."
  * ^short = "Fallbezug"
* issued MS
  * ^definition = "Dokumentationszeitpunkt des Befundes durch das auftragnehmende Labor."
  * ^short = "Dokumentationszeitpunkt Laborgesamtbefund"
* performer MS
  * ^definition = "Person oder Organisation, die für Erstellung des Laborgesamtbefundes verantwortlich ist.\n\n
  Das auftragnehmende Labor kann die Laborleistung selbst erbringen, teilweise selbst erbringen und teilweise an ein Speziallabor weiterleiten oder insgesamt an ein Speziallabor weiterleiten. Der Gesamtbefund wird vollumfänglich zum gesamten Laborauftrag vom Auftragnehmer erstellt."
  * ^short = "Auftragnehmendes Labor"
* performer only Reference(TIPractitionerRole or TIPractitioner or TIOrganization or CareTeam)
* performer[organization] only Reference(TIOrganization)
* resultsInterpreter only Reference(TIPractitionerRole or TIPractitioner or TIOrganization or CareTeam)
* resultsInterpreter[author] only Reference(TIPractitionerRole)
* specimen MS
  * ^comment = "Zum Erhalt der europäischen Interoperabilität, orientiert an der Veröffentlichung https://hl7.eu/fhir/laboratory/history.html kann auf Gesamtbefundebene auf das gesamte Probenmaterial referenziert werden. Diese optionale Angabe ist redundant zu den Probenreferenzen der Einzeluntersuchungen."
  * insert ReferenceMS
* specimen only Reference(TISpecimenLaboratory)
* result MS
  * ^definition = "Die Laborergebnisse werden grundsätzlich gruppiert. Es gibt mindestens eine Untersuchungsgruppe."
  * insert ReferenceMS
  * extension MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "url"
    * ^slicing.rules = #open
  * extension contains SortingNumberExtension named sortingNumberGroup 0..1 MS
  * extension[sortingNumberGroup] MS
    * ^definition = "Zu jeder Untersuchungsgruppe gibt es immer eine Sortiernummer. Die mit dem Datenstrom mitgegebenen Sortiernummern sind als Standardsortierung gedacht. Die Standardsortierung legt das Befund-erstellende Labor fest. Verwender können in Primärsystemen zusätzlich interaktiv auch anders sortieren, wenn das Primärsystem solche Funktionen anbietet."
    * ^short = "Sortiernummer Untersuchungsgruppe"
    * valuePositiveInt MS
* result only Reference(TIObservationLaboratoryStudyGroup or TIObservationImageAttachment)
* media MS
  * ^definition = "Zum Anhängen zusätzlicher Resultate, die nicht Teil des strukturierten Laborbefundes sind. Hier können Befunde aus labormedizinischen Spezialbereichen in einem digitalen Dokumentformat angehängt werden, beispielsweise Ergebnisse aus mikrobiologischen Kulturen oder humangenetischen Untersuchungen. Ziel ist es, grundsätzlich alle Laborbefunde in digitalem Format übermitteln zu können und in der elektronischen Patientenakte ablegen zu können."
  * ^short = "Ergänzende Dokumente (zusätzlich zum strukturierten Teil des Laborbefundes)"
  * comment MS
    * ^definition = "Feld für Freitext-Angaben zum ergänzenden Dokument, die in der vorgegebenen Datenstruktur nicht erfasst werden können."
    * ^short = "Freitext-Angaben zum ergänzenden Dokument"
  * link MS
    * extension MS
    * extension[link] MS
      * ^definition = "Referenzierung auf ergänzende Dokumente"
      * ^short = "Referenzierung auf ergänzende Dokumente"
      * valueReference only Reference(TIAppendixDocumentReference)
    * display MS
      * ^definition = "Hinweis, der besagt, dass anstelle einer Referenz auf Media auf eine DocumentReference über die Cross-version Extension „link“ referenziert wird."
* conclusion MS
  * ^definition = "Befund-Bewertung, die sich auf den gesamten Laborbefund bezieht und ggf. Antworten auf klinische Fragestellungen formuliert. "
  * ^short = "Beurteilung des Laborgesamtbefundes"
* presentedForm MS
  * ^definition = "Zusätzlich zur FHIR®-Instanz soll der GESAMTE Laborbefund (das bezieht sowohl die strukturierten Daten als auch ergänzende Dokument-Anteile mit ein) in einem weiteren Format z.B. als PDF mitgegeben werden."
  * ^short = "Kompletter Gesamtbefund als exportierbares Format"
  * contentType MS
    * ^definition = "Hier wird das Dateiformat abgebildet."
  * contentType from $epa-xds-mime-type-vs (required)
  * data MS
    * ^definition = "Hier wird die Dokument-Datei angehängt."
  * title MS
    * ^definition = "Hier wird ein Titel bzw. eine Bezeichnung für die angehängte Datei angegeben."
  * creation MS
    * ^definition = "Hier wird der Zeitpunkt der Erstellung des referenzierten Dokumentes bzw. des Anhangs angegeben."
