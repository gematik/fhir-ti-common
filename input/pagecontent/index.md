FHIR Data Services in Produkttypen der Telematikinfrastruktur (TI) unterstützen (digitale) Versorgungsprozesse mit anwendungsspezifischen Schnittstellen, die mit einer RESTful API (HTTP) auf dem FHIR-Standard basieren. Sie stellen über diese Schnittstellen einen Zugang zum jeweiligen Fachdienst bereit. Die in diesem Implementation Guide dargestellten Anforderungen gelten in erster Linie für FHIR Data Services als Ausprägung anwendungsbezogener, logischer Zugangsdienste. Allerdings sind nicht alle Produkttypen der TI als FHIR Data Service umgesetzt, sodass u.U. lediglich FHIR-Profile benutzt werden. Der VSDM Resource Server des Versichertenstammdatenmanagement 2.0 (VSDM 2.0) ist ein Beispiel für die bloße Nutzung der TI FHIR-Profile (d.h. _VSDMPatient_ als Ableitung von _TIPatient_). Erklärtes Ziel ist es, aus Primärsystemsicht dieselben FHIR-Profile für Fachanwendungen in der TI zu verarbeiten.

Die Konzepte und Anforderungen jedes spezifischen FHIR Data Service werden jeweils in einem separaten Implementation Guide beschrieben. Es gibt allerdings Aspekte, die allen FHIR Data Services gemeinsam sind. Diese Teile hält der vorliegende Implementation Guide ("TI Common") zentral vor und werden von den spezifischen Implementation Guides bei Bedarf referenziert.


### Abhängigkeiten

{% include dependency-table.xhtml %}

### Sprachliche Konventionen

- Zur besseren Lesbarkeit wird in diesem Implementation Guide das generische Maskulinum verwendet. Die hier verwendeten Personenbezeichnungen beziehen sich stets auf alle Geschlechter.

- Der Begriff "Arzt" wird in diesem Implementation Guide sowohl für Human- als auch für Zahnmediziner verwendet.

### Kontakt

Allgemeine Fragen und Kommentare zum Implementation Guide können Sie über das [Anfragenportal] der gematik einreichen. Falls kein Zugang besteht, senden Sie bitte eine E-Mail an "patientteam [ at ] gematik [ dot ] de" mit dem Betreff "Anfragenportal Zugang".