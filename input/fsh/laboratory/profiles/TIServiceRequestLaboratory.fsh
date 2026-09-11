Profile: TIServiceRequestLaboratory
Parent: ServiceRequestLabEu
Id: ti-service-request-laboratory
Title: "TI Service Request Laboratory"
Description: "Administrative und für die Befundung klinisch relevante Teilinformationen aus dem Laborauftrag"
* . ^definition = "Administrative und für die Befundung klinisch relevante Teilinformationen aus dem Laborauftrag."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* identifier MS
* identifier 1.. MS
  * ^definition = "In der Labordatenkommunikation kann sowohl von der einsendenden Einrichtung/Person wie auch vom auftragsnehmenden Labor ein auftragsbezogener Identifikator zugeordnet werden."
  * ^short = "Auftragsbezogener Identifikator"
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* identifier contains
  orderNumberSender 1..1 MS and
  additionalRequestIdentification 0.. MS
* identifier[orderNumberSender]
  * ^definition = "Auftragsnummer, die der auftraggebende Einsender vergibt und führt."
  * ^short = "Auftragsnummer, die der auftraggebende Einsender vergibt und führt."
  * type 1.. MS
    * coding 1..1
      * version MS
  * type = $ti-cs-laboratory-identificator#AE "Auftragsnummer des Einsenders"
  * system 1.. MS
  * value 1.. MS
* insert Coding(identifier[orderNumberSender].type.coding)
* identifier[additionalRequestIdentification]
  * ^definition = "Nachforderungs-ID - Eine Nachforderung ist eine ergänzende Anforderung von Laboruntersuchungen zu einem bereits bestehenden Überweisungsauftrag."
  * ^short = "Identifiziert eine Nachforderung mit Bezug auf eine bereits vorhandene Auftragsidentifikation"
  * type 1.. MS
    * coding 1..1 MS
      * version MS
  * type = $ti-cs-laboratory-identificator#NI "Nachforderungsidentifikation"
  * system 1.. MS
  * value 1.. MS
* insert Coding(identifier[additionalRequestIdentification].type.coding)
* priority MS
  * ^definition = """
Die im Laborauftrag formulierte Dringlichkeit von Laboruntersuchungen soll im Laborbefund berücksichtigt werden. Mögliche Werte sind:\n
* Routine (routine)
* Dringend (urgent): der Auftrag sollte umgehend bearbeitet werden, höhere Priorität als Routine
* Baldmöglichst (asap): der Auftrag sollte so schnell wie möglich bearbeitet werden, höhere Priorität als dringend
* Sofort/Notfall (stat): der Auftrag sollte sofort mit höchstmöglicher Priorität bearbeitet werden, Notfall-Labor
"""
  * ^short = "Dringlichkeit des Laborauftrags"
* code MS
  * ^definition = "Hier wird ein Klassifizierung der Laboraufstrag-Informformation anhand einer codierten Information oder als Freitext vorgenommen."
  * insert CodeableConceptMS
* orderDetail MS
  * ^definition = "Eine Anforderung aus dem Laborauftrag."
  * ^short = "Anforderung aus dem Laborauftrag"
  * text MS
    * ^definition = "Als Freitext formulierte Anforderung aus dem Laborauftrag. Das kann beispielsweise aus Muster 10 übernommen sein oder über den Labordatentransfer (LDT) übermittelt worden sein."
    * ^short = "Freitext Anforderung aus dem Laborauftrag"
* insert SubjectEu(subject)
* authoredOn MS
  * ^definition = "Zeitpunkt, zu dem der Einsender den Auftrag erstellt hat."
  * ^short = "Auftragszeitpunkt"
* requester MS
  * ^definition = """
Referenzierung auf die auftraggebende bzw. einsendende Person/Einrichtung. Diese kann sein:\n
* Behandelnde/r Arzt/Ärztin als Person oder Einrichtung
* Therapeut:in als Person oder Einrichtung
* Behandelnde Person/Einrichtung-Kombination
* Patient:in selbst
* Kontaktperson
"""
  * ^short = "Einsender:in, Auftraggeber:in"
  * insert OnlyReferenceMS
* requester only Reference(TIPractitioner or TIPractitionerRole or TIOrganization or TIPatient or TIRelatedPerson or Device)
* reasonCode MS
  * ^definition = """
  Der Anlass der Labordiagnostik wird als prozessuale Fragestellung formuliert. Diese Angabe dient der Fokussierung der Beurteilung. Beispiele für Inhalte aus dem LDT, die in dieses Freitextfeld hineinpassen könnten, sind: Ausschluss; Verlaufskontrolle; Vorsorge.\n\n
  Der Veranlassungsgrund der Labordiagnostik wird als medizinische Fragestellung formuliert. Diese Angabe dient der fachlichen Präzision der Beurteilung. Beispiele für Inhalte aus dem LDT, die in dieses Freitextfeld hineinpassen könnten, sind: Eingriff; Infektion; Rheuma; Tumor.\n\n
  Zusätzlich zur Freitextangabe einer LDT-Information ist in FHIR® auch die Codierung möglich.
  """
  * ^short = "Prozessualer Anlass oder medizinischer Veranlassungsgrund der Labordiagnostik"
  * extension MS
  * extension contains ReasonTypeLaboratoryExtension named reasonType 0..1
  * extension[reasonType] MS
    * ^definition = "Hier wird unterschieden, ob es sich bei der Angabe um einen Anlass und Veranlassungsgrund des Laborauftrags handelt."
    * valueString MS
  * text MS
* reasonReference MS
  * insert OnlyReferenceMS
* supportingInfo MS
  * ^definition = "Klinische Angaben aus dem Laborauftrag, die für die Befundung wichtig sind, können hier angegeben werden. Das sind beispielsweise Angaben zur Medikation oder zur gesundheitlichen Konstitution."
  * ^short = "Klinische Angaben aus dem Laborauftrag"
  * insert OnlyReferenceMS
* specimen only Reference(TISpecimenLaboratory)
* note MS
  * ^definition = "Ergänzende Angaben zum Auftrag, z. B. Institutionsspezifische administrative Zuordnung (\"Tour-Nummer\"; \"Tagebuch-Nummer\"). Der Inhalt dieses Elementes kann den Angaben zu \"Auftragsbezogene Hinweise\" aus der LDT-Kommunikation entsprechen."
  * ^short = "Auftragsbezogene Hinweise"
  * text MS
