Profile: TIServiceRequestLaboratory
Parent: ServiceRequestLabEu
Id: ti-serviceRequest-laboratory
Title: "TI Service Request Laboratory"
Description: "Administrative und für die Befundung klinisch relevante Teilinformationen aus dem Laborauftrag"
* . ^definition = "Administrative und für die Befundung klinisch relevante Teilinformationen aus dem Laborauftrag."
* insert Meta-With-Versioning
* identifier MS
* priority MS
  * ^definition = "Die im Laborauftrag formulierte Dringlichkeit von Laboruntersuchungen soll im Laborbefund berücksichtigt werden. Mögliche Werte sind:\n
* Routine (routine)
* Dringend (urgent): der Auftrag sollte umgehend bearbeitet werden, höhere Priorität als Routine
* Baldmöglichst (asap): der Auftrag sollte so schnell wie möglich bearbeitet werden, höhere Priorität als dringend
* Sofort/Notfall (stat): der Auftrag sollte sofort mit höchstmöglicher Priorität bearbeitet werden, Notfall-Labor"
  * ^short = "Dringlichkeit des Laborauftrags"
* code MS
  * insert CodeableConceptMS
* orderDetail MS
  * ^definition = "Als Freitext formulierte Anforderung aus dem Laborauftrag. Das kann beispielsweise aus Muster 10 übernommen sein oder über den Labordatentransfer (LDT) übermittelt worden sein."
  * ^short = "Freitext Anforderung aus dem Laborauftrag"
  * text MS
* insert SubjectEu(subject)
* authoredOn MS
  * ^definition = "Zeitpunkt, zu dem der Einsender den Auftrag erstellt hat."
  * ^short = "Auftragszeitpunkt"
* requester MS
  * ^definition = "Referenzierung auf die auftraggebende bzw. einsendende Person/Einrichtung. Diese kann sein:\n
* Behandelnde/r Arzt/Ärztin als Person oder Einrichtung
* Therapeut:in als Person oder Einrichtung
* Behandelnde Person/Einrichtung-Kombination
* Patient:in selbst
* Kontaktperson"
  * ^short = "Einsender:in, Auftraggeber:in"
  * insert ReferenceMS
* reasonCode MS
  * ^definition = "Der Anlass der Labordiagnostik wird als prozessuale Fragestellung formuliert. Diese Angabe dient der Fokussierung der Beurteilung. Beispiele für Inhalte aus dem LDT, die in dieses Freitextfeld hineinpassen könnten, sind: Ausschluss; Verlaufskontrolle; Vorsorge.\n\n
Der Veranlassungsgrund der Labordiagnostik wird als medizinische Fragestellung formuliert. Diese Angabe dient der fachlichen Präzision der Beurteilung. Beispiele für Inhalte aus dem LDT, die in dieses Freitextfeld hineinpassen könnten, sind: Eingriff; Infektion; Rheuma; Tumor.\n\n
Zusätzlich zur Freitextangabe einer LDT-Information ist in FHIR® auch die Codierung möglich."
  * ^short = "Prozessualer Anlass oder medizinischer Veranlassungsgrund der Labordiagnostik"
* reasonReference MS
  * ^definition = "Hier besteht die Option, die Diagnose aus dem Laborauftrag mitzuführen. Die Übernahme eines Diagnose-Codes geschieht in Abhängigkeit von den Auftragsdaten. Das setzt voraus, dass die Diagnose in den Auftragsdaten codiert übergeben worden ist."
  * ^short = "Auftragsdiagnose"
  * insert ReferenceMS
* supportingInfo MS
  * ^definition = "Klinische Angaben aus dem Laborauftrag, die für die Befundung wichtig sind, können hier angegeben werden. Das sind beispielsweise Angaben zur Medikation oder zur gesundheitlichen Konstitution."
  * ^short = "Klinische Angaben aus dem Laborauftrag"
* note MS
  * ^definition = "Ergänzende Angaben zum Auftrag, z. B. Institutionsspezifische administrative Zuordnung (\"Tour-Nummer\"; \"Tagebuch-Nummer\"). Der Inhalt dieses Elementes kann den Angaben zu \"Auftragsbezogene Hinweise\" aus der LDT-Kommunikation entsprechen."
  * ^short = "Auftragsbezogene Hinweise"
  * text MS
