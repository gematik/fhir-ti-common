FHIR Data Services in Produkttypen der Telematikinfrastruktur (TI) unterstützen (digitale) Versorgungsprozesse mit anwendungsspezifischen Schnittstellen, die mit einer RESTful API (HTTP) auf dem FHIR-Standard basieren. Sie stellen über diese Schnittstellen einen Zugang zum Fachdienst bereit.

#### Prinzipien

Sämtliche FHIR-Ressourcen (d.h. Instanzen) sollen – wenn möglich – für eine Nachnutzung anwendungs- bzw. prozessübergreifend zur Verfügung stehen. Beispielsweise sollen Zusatzinformationen mit Relevanz für die Arzneimitteltherapiesicherheit wie Beobachtungen, Allergien oder Intoleranzen für den dgMP als auch in einer strukturierten Patientenkurzakte zur Verfügung stehen. Beobachtungen werden zukünftig auch innerhalb des strukturierten Krankenhausentlassbriefs erhoben (z.B. das Körpergewicht). Erklärtes Ziel ist es, erhobene Daten einheitlich dem gesamten Datenraum – und damit anderen Versorgungsprozessen – zur Verfügung zu stellen. Ein Datenraum soll anwendungsbezogen mit logischen Zugangsdiensten (sogenannten FHIR Data Services) gelesen und manipuliert werden.

Die hier dargestellten Anforderungen gelten in erster Linie für FHIR Data Services. Allerdings sind nicht alle Produkttypen der TI als FHIR Data Service umgesetzt, sodass u.U. lediglich FHIR-Profile benutzt werden. Der VSDM Resource Server des Versichertenstammdatenmanagement 2.0 (VSDM 2.0) ist ein Beispiel für die bloße Nutzung der TI FHIR-Profile (d.h. _VSDMPatient_ als Ableitung von _TIPatient_).


### Allgemeingültige Anforderungen

Die Konzepte und Anforderungen jedes spezifischen FHIR Data Service werden jeweils in einem separaten Implementation Guide beschrieben. Es gibt allerdings Aspekte, die allen FHIR Data Services gemeinsam sind. Diese Teile hält der vorliegende Implementation Guide ("TI Common") zentral vor und werden von den spezifischen Implementation Guides bei Bedarf referenziert.


### Abhängigkeiten

{% include dependency-table.xhtml %}


### Lizenz

Copyright 2025 gematik GmbH

Apache License, Version 2.0

See the <a href="./license.html">LICENSE</a> for the specific language governing permissions and limitations under the License
