Für die Referenzierung, Verwaltung und den Austausch von Dokumenten über FHIR-basierte Schnittstellen innerhalb der Telematikinfrastruktur wird ein einheitliches Dokumentenmodell auf Basis des IHE-Profils _Mobile access to Health Documents [IHE ITI MHD]_ verwendet. IHE MHD definiert auf Basis von HL7 FHIR ein standardisiertes Modell für den dokumentenbasierten Austausch. Zentrale Ressource für die Beschreibung eines Dokuments ist `DocumentReference`. Sie enthält die Dokumentmetadaten und verweist über `DocumentReference.content.attachment` auf den eigentlichen Dokumenteninhalt.

Die hier im IG definierten Profile basieren auf den entsprechenden IHE-MHD-Profilen und bilden die gemeinsame Grundlage für die Verwendung von Dokumenten über FHIR-basierte Schnittstellen innerhalb der TI. FHIR-basierte TI-Fachdienste und FHIR Data Services können diese Profile unmittelbar verwenden oder für ihre jeweiligen fachlichen Anforderungen weiter einschränken.

Ziel ist es, dass Client-Systeme Dokumente gegenüber unterschiedlichen FHIR-basierten TI-Fachdiensten und FHIR Data Services nach demselben grundlegenden Modell verarbeiten können. Einmal implementierte FHIR-Profile und Mechanismen zur Verarbeitung von Dokumenten können dadurch in unterschiedlichen fachlichen Kontexten wiederverwendet werden.

Dies ermöglicht insbesondere, eine `DocumentReference`, die von einem TI-Fachdienst oder FHIR Data Service bereitgestellt wurde, in einem anderen FHIR-basierten TI-Fachdienst oder FHIR Data Service weiterzuverwenden, sofern die jeweiligen Profile auf derselben gemeinsamen TI-Common-Profilbasis aufbauen.

### IHE MHD als Grundlage

Das gemeinsame Dokumentenmanagement innerhalb der TI basiert auf den grundlegenden Konzepten von IHE MHD. Hierzu gehören insbesondere:

- `DocumentReference` wird zur Beschreibung eines Dokuments und seiner Metadaten verwendet.
- `DocumentReference.content.attachment` wird zur Beschreibung und Referenzierung des Dokumenteninhalts verwendet.
- Dokumentmetadaten und Dokumenteninhalt werden getrennt voneinander verwaltet.
- `DocumentReference.relatesTo` wird zur Beschreibung von Beziehungen zwischen Dokumenten verwendet.
- Unterschiedliche Dokumentenformate werden über ein gemeinsames Metadatenmodell verwaltet.
- Für das Einstellen, Suchen und Abrufen von Dokumenten werden standardisierte Transaktionen verwendet.

Zu den für das Dokumentenmanagement relevanten IHE-MHD-Transaktionen gehören beispielsweise:

- _Provide Document Bundle [ITI-65]_ wird zum Einstellen von Dokumenten verwendet.
- _Find Document References [ITI-67]_ wird zur Suche nach Dokumenten verwendet.
- _Retrieve Document [ITI-68]_ wird zum Abruf von Dokumenteninhalten verwendet.
- _Simplified Publish [ITI-105]_ ermöglicht die vereinfachte Veröffentlichung eines Dokuments.
- _Generate Metadata [ITI-106]_ ermöglicht die serverseitige Erzeugung von Dokumentmetadaten.

Einzelne Dienste (wie die ePA) können weitere spezifische Interaktionen (z. B. Löschen und Aktualisieren von Dokumenten) definieren, die nicht Bestandteil von IHE MHD sind, sich jedoch an dessen Konzepten und Verarbeitungsprinzipien orientieren.

Die konkrete Nutzung dieser Transaktionen kann sich zwischen FHIR-basierten TI-Fachdiensten und FHIR Data Services unterscheiden. Ein dokumentenzentriertes System, wie beispielsweise die ePA, kann die von IHE MHD definierten Transaktionen weitgehend unmittelbar für das Einstellen, Suchen und Abrufen von Dokumenten verwenden. Bei einem Workflow-orientierten System steht dagegen der fachliche Prozess im Vordergrund. Dieses kann sich an den Message Semantics und Verarbeitungsprinzipien der entsprechenden IHE-MHD-Transaktionen orientieren und diese in fachliche FHIR-Operationen integrieren. Die Verwendung der TI-Common-Profile setzt somit nicht voraus, dass alle FHIR-basierten TI-Fachdienste und FHIR Data Services dieselben IHE-MHD-Transaktionen oder Endpunkte bereitstellen. Unabhängig von der konkreten Ausgestaltung der Schnittstelle bilden das IHE-MHD-Dokumentenmodell und die darauf aufbauenden TI-Common-Profile die gemeinsame Grundlage für die Beschreibung und Verarbeitung von Dokumenten innerhalb der TI.

### Gemeinsame TI-MHD-Profile

Die hier definierten Profile bilden eine gemeinsame Schicht zwischen IHE MHD und den Profilen der jeweiligen TI-Fachdienste oder FHIR Data Services. Die TI-Common-Profile legen die innerhalb der TI gemeinsam verwendeten Einschränkungen und die Semantik des Dokumentenmodells fest. FHIR-basierte TI-Fachdienste und FHIR Data Services können diese Profile weiter einschränken und zusätzliche fachliche Anforderungen definieren. Die grundlegende Repräsentation eines Dokuments bleibt dadurch jedoch über unterschiedliche Dienste hinweg einheitlich.

{% capture document-profiles %}
StructureDefinition/ti-mhd-submission-set,
StructureDefinition/ti-mhd-simplified-publish-document-reference,
StructureDefinition/ti-mhd-folder,
StructureDefinition/ti-mhd-document-reference,
StructureDefinition/ti-document-location-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=document-profiles %}

Für Client-Systeme, wie beispielsweise Primärsysteme oder Frontends der Versicherten bedeutet dies, dass dieselben grundlegenden FHIR-Strukturen und Verarbeitungsmechanismen für Dokumente aus unterschiedlichen Diensten wiederverwendet werden können. Dies ist insbesondere für die dienstübergreifende Verwendung von `DocumentReference` relevant. Ist ein dienstspezifisches `DocumentReference`-Profil von einem gemeinsamen TI-Common-MHD-Profil abgeleitet, kann die Ressourceninstanz auch in einem anderen fachlichen Kontext verwendet werden, sofern dieser ebenfalls auf derselben gemeinsamen Profilbasis aufbaut.

### Dokumentmetadaten und Dokumenteninhalt

Dokumentmetadaten und Dokumenteninhalt werden getrennt voneinander verwaltet. Die `DocumentReference` beschreibt das Dokument und enthält die für dessen Verwaltung erforderlichen Metadaten. Der eigentliche Dokumenteninhalt wird über `DocumentReference.content.attachment` beschrieben und kann über die in `DocumentReference.content.attachment.url` angegebene URL abgerufen werden. Der Dokumenteninhalt kann dabei durch denselben FHIR-basierten TI-Fachdienst oder FHIR Data Service bereitgestellt werden oder sich in einem anderen Dienst befinden. Diese Trennung ermöglicht es, eine `DocumentReference` unabhängig vom Speicherort des Dokumenteninhalts in unterschiedlichen fachlichen Kontexten zu verwenden.

### Dienstübergreifende Referenzierung von Dokumenten

Ein wesentliches Ziel der gemeinsamen TI-MHD-Profile ist die dienstübergreifende Referenzierung und Wiederverwendung von Dokumenten.

Eine `DocumentReference` kann in einem FHIR-basierten TI-Fachdienst oder FHIR Data Service verwendet werden, ohne dass der zugehörige Dokumenteninhalt durch denselben Dienst bereitgestellt werden muss. Um bei einer dienstübergreifend verwendeten `DocumentReference` die Quelle des Dokuments bestimmen zu können, wird die Extension [_TI Document Storage Location_](./StructureDefinition-ti-document-storage-location-extension.html) verwendet. Sie ermöglicht die Unterscheidung zwischen verschiedenen Dokumentenquellen, beispielsweise der ePA. Die Dokumentenquelle ergänzt dabei die in `DocumentReference.content.attachment.url` enthaltene URL zum Dokumenteninhalt um den Kontext, der für dessen Abruf erforderlich ist. Dadurch kann ein Client-System beispielsweise zunächst eine `DocumentReference` über _Find Document References [ITI-67]_ aus einem MHD-basierten Dokumentendienst beziehen und diese anschließend gegenüber einem anderen FHIR-basierten TI-Fachdienst oder FHIR Data Service weiterverwenden.

#### Beispiel: Referenzierung eines Dokuments aus der ePA

Ein Dokument befindet sich bereits in der ePA. Das Client-System ermittelt die zugehörige `DocumentReference` über die MHD-Transaktion _Find Document References [ITI-67]_. Da das ePA-spezifische `DocumentReference`-Profil auf dem gemeinsamen TI-Common-MHD-Profil aufbaut, kann die bestehende `DocumentReference`-Instanz anschließend in einem anderen FHIR-basierten TI-Fachdienst oder FHIR Data Service verwendet werden. Die _TI Document Storage Location_ Extension gibt dabei an, dass sich das Dokument in der ePA des durch `DocumentReference.subject` logisch referenzierten Versicherten befindet. Der Dokumenteninhalt kann über die in `DocumentReference.content.attachment.url` angegebene URL mittels der ePA-Transaktion _Retrieve Document [ITI-68]_ abgerufen werden. Dabei ist zu beachten, dass die angegebene URL zwar eine absolute URL ist, der Abruf jedoch im Kontext des zuvor identifizierten ePA-Aktensystems und der für den Zugriff bestehenden Befugnis erfolgt. Die URL ist daher nicht unabhängig von diesem Kontext auflösbar.

Es ist dabei nicht erforderlich, für den zweiten Dienst den Dokumenteninhalt erneut zu speichern. Die vorhandene `DocumentReference` einschließlich der Information über die Dokumentenquelle kann übernommen und in den neuen fachlichen Kontext eingebunden werden. Der Dokumenteninhalt verbleibt in der ePA und kann weiterhin über _Retrieve Document [ITI-68]_ abgerufen werden. Voraussetzung für den Abruf des Dokumenteninhalts ist weiterhin, dass der jeweilige Akteur über die erforderlichen Zugriffsberechtigungen auf die angegebene Dokumentenquelle verfügt.

Die gemeinsame TI-Common-Profilbasis ermöglicht damit nicht nur eine einheitliche Modellierung von Dokumenten, sondern insbesondere die Wiederverwendung einer bestehenden `DocumentReference`-Instanz einschließlich ihrer Dokumentenquelle über Dienstgrenzen hinweg.

### Lokale Speicherung und externe Bereitstellung

Ein FHIR-basierter TI-Fachdienst oder FHIR Data Service kann den Dokumenteninhalt entweder selbst verwalten oder eine bestehende `DocumentReference` verwenden, deren Dokumenteninhalt durch einen anderen Dienst bereitgestellt wird. Welche Variante verwendet wird, richtet sich nach den fachlichen Anforderungen.

Eine lokale Speicherung kann insbesondere erforderlich sein, wenn der Dokumenteninhalt für die fachliche Verarbeitung benötigt wird, einen eigenen Lebenszyklus innerhalb des Dienstes besitzt oder unabhängig von der Verfügbarkeit eines anderen Dienstes verfügbar sein muss.

Die Nutzung eines extern bereitgestellten Dokumenteninhalts kann dagegen verwendet werden, wenn ein bereits vorhandenes Dokument lediglich in einen zusätzlichen fachlichen Kontext eingebunden werden soll und eine erneute Speicherung des Dokumenteninhalts nicht erforderlich ist.

In beiden Fällen wird dasselbe gemeinsame MHD-basierte Dokumentenmodell verwendet.

### Versionierung von Dokumenten

Dokumente werden unveränderlich gespeichert. Änderungen an einem Dokument führen daher nicht zur Aktualisierung einer bestehenden `DocumentReference`, sondern zur Erstellung einer neuen Dokumentenversion.

Die Beziehung zwischen den Versionen wird über `DocumentReference.relatesTo` mit dem Beziehungstyp `replaces` modelliert. Dieses Vorgehen orientiert sich an dem aus IHE MHD/XDS bekannten Prinzip der Dokumentersetzung. Die neu erstellte `DocumentReference` erhält den Status `current` und verweist über `relatesTo.code = replaces` auf die vorherige Version. Die `DocumentReference` der ersetzten Dokumentversion wird auf den Status `superseded` gesetzt. Frühere Dokumentversionen und ihre Dokumentinhalte bleiben standardmäßig erhalten und können weiterhin für Nachweis- und Revisionszwecke herangezogen werden. Üblicherweise ist die aktuelle Fassung die einzig fachlich gültige. Die genaue Ausgestaltung unterliegt jedoch den konkreten Services.

<figure>
    <div class="gem-ig-svg-container" style="--box-width: 460px; --box-width-mobile: 100%;">
        {% include document-version.svg %}
    </div>
    <figcaption>
        <strong>Abbildung:</strong> Ersetzung eines Dokuments durch eine neue Version
    </figcaption>
</figure>

<br/>

Die Verweise aus anderen FHIR-Ressourcen sind nur potenziell von der Versionierung betroffen. Jeder Service regelt im Detail, wie referenzierende Ressourcen bei einer Dokumentersetzung zu behandeln sind und insbesondere, ob bestehende Verweise auf die abgelöste Version bestehen bleiben dürfen oder zwingend auf die neue Dokumentversion umgestellt werden müssen. Das folgende Beispiel zeigt eine mögliche Ausgestaltung aus dem `Task`-Bereich: Wird ein Dokument durch eine neue Version ersetzt, verweist eine bestehende Referenz weiterhin auf die abgelöste `DocumentReference` mit `status = superseded` und muss daher im Zuge der Dokumentersetzung von der Geschäftslogik des Dienstes auf die neue `DocumentReference` mit `status = current` umgestellt werden.

<figure>
    <div class="gem-ig-svg-container" style="--box-width: 460px; --box-width-mobile: 100%;">
        {% include reference-document-version.svg %}
    </div>
    <figcaption>
        <strong>Abbildung:</strong> Eine Task-Instanz referenziert die neue Version
    </figcaption>
</figure>

<br/>

Die Abbildung zeigt beispielhaft die Ersetzung eines Dokuments durch eine neue Version. Die referenzierende Ressource verweist ausschließlich auf die aktuelle `DocumentReference` (Version 2), die über `relatesTo.code = replaces` auf die vorherige Version verweist. Beide Dokumentenversionen und ihre jeweiligen Dokumenteninhalte bleiben weiterhin erhalten.

Durch die Verwendung desselben Versionierungsmodells über unterschiedliche FHIR-basierte TI-Fachdienste und FHIR Data Services hinweg können Client-Systeme Dokumentenversionen und Dokumenthistorien einheitlich verarbeiten.

### Direkte MHD-Nutzung und MHD-orientierte Nutzung

Die Verwendung der gemeinsamen TI-MHD-Profile bedeutet nicht, dass jeder FHIR-basierte TI-Fachdienst oder FHIR Data Service sämtliche IHE-MHD-Transaktionen unverändert implementieren muss. Die konkrete Nutzung kann sich abhängig vom jeweiligen fachlichen Kontext unterscheiden.

#### MHD-nahe Dokumentenschnittstelle

Die Ressourcen, Interaktionen und Verarbeitungsregeln orientieren sich hierbei unmittelbar an IHE MHD.

<figure>
    <div class="gem-ig-svg-container" style="--box-width: 460px; --box-width-mobile: 100%;">
        {% include mhd-ITI-105.svg %}
    </div>
    <figcaption>
        <strong>Abbildung:</strong> Diagramm für <i>Simplified Publish [ITI-105]</i>
    </figcaption>
</figure>

<br/>

<figure>
    <div class="gem-ig-svg-container" style="--box-width: 460px; --box-width-mobile: 100%;">
        {% include mhd-ITI-67.svg %}
    </div>
    <figcaption>
        <strong>Abbildung:</strong> Diagramm für <i>Find Document References [ITI-67]</i> und <i>Retrieve Document [ITI-68]</i>
    </figcaption>
</figure>

<br/>

Die ePA ist beispielsweise ein dokumentenzentriertes System, bei dem die MHD-Transaktionen sehr nahe an den von IHE MHD definierten Mechanismen verwendet werden können.

#### MHD-orientierte fachliche Operationen

FHIR-basierte TI-Fachdienste und FHIR Data Services können die Konzepte und Verarbeitungsprinzipien von IHE MHD auch innerhalb fachlicher FHIR-Operationen verwenden. Die konkrete Operation muss dabei nicht unmittelbar einer IHE-MHD-Transaktion entsprechen.

Ein Beispiel hierfür ist die serverseitige Erzeugung einer `DocumentReference` auf Grundlage eines übermittelten Dokuments. Dieses Vorgehen orientiert sich am Prinzip von _Generate Metadata [ITI-106]_. Das Dokument wird dabei im Rahmen einer fachlichen FHIR-Operation übermittelt und die für dessen Verwaltung erforderliche `DocumentReference` durch den TI-Fachdienst oder FHIR Data Service erzeugt. In einem Workflow-orientierten System kann dies beispielsweise Bestandteil einer fachlichen Operation wie `Task/{id}/$activate` sein. Das mit der Operation übermittelte Dokument wird dabei in den fachlichen Kontext des adressierten Workflow gespeichert. Die zugehörige `DocumentReference` wird serverseitig erzeugt und basiert unmittelbar auf dem entsprechenden TI-Common-Profil.

Auf diese Weise werden die von IHE MHD definierten Konzepte und Verarbeitungsprinzipien auch für fachliche FHIR-Operationen wiederverwendet, ohne dass diese die jeweilige IHE-MHD-Transaktion vollständig abbilden müssen.

Die konkreten Verarbeitungsschritte der fachlichen Operation, die Ableitung der Dokumentmetadaten sowie die Einbindung der erzeugten `DocumentReference` in den jeweiligen fachlichen Kontext werden durch die Spezifikation des verwendenden TI-Fachdienstes oder FHIR Data Service festgelegt.

### Unterstützte Dokumentformate

Das gemeinsame Dokumentenmodell ermöglicht die einheitliche Verwaltung unterschiedlicher Dokumentenformate. Dazu können sowohl unstrukturierte beziehungsweise darstellungsorientierte Formate wie PDF/A als auch strukturierte Dokumente wie FHIR Documents gehören. Unabhängig vom jeweiligen Format werden die Dokumentmetadaten über eine `DocumentReference` beschrieben und der zugehörige Dokumenteninhalt über `DocumentReference.content.attachment` abgebildet.

FHIR-basierte TI-Fachdienste und FHIR Data Services legen fest, welche Dokumentenformate sie für den jeweiligen fachlichen Anwendungsfall unterstützen. Die Verwendung der gemeinsamen TI-MHD-Profile ermöglicht dabei einen einheitlichen Umgang mit den Dokumentmetadaten unabhängig vom konkreten Dokumentformat.

Strukturierte Dokumente können darüber hinaus durch einen TI-Fachdienst oder FHIR Data Service fachlich weiterverarbeitet werden. Bei einem FHIR Document können beispielsweise die enthaltenen FHIR-Ressourcen validiert, extrahiert und zusätzlich für einen ressourcenbasierten Zugriff bereitgestellt werden.

Eine solche Weiterverarbeitung ist nicht Bestandteil des gemeinsamen TI-MHD-Dokumentenmodells, sondern eine zusätzliche Funktion des jeweiligen TI-Fachdienstes oder FHIR Data Service. Das ursprüngliche Dokument und die zugehörige DocumentReference bleiben unabhängig davon die Grundlage für den dokumentenbasierten Zugriff.