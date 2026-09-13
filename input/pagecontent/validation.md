
FHIR Data Services der TI verarbeiten FHIR-Ressourcen auf Grundlage definierter FHIR-Profile und weiterer Vorgaben der jeweils zugrunde liegenden Implementation Guides. Für eine einheitliche und reproduzierbare Verarbeitung ist dabei insbesondere relevant, welche Versionen der verwendeten FHIR-Artefakte der Implementierung und Validierung zugrunde liegen.

Neben der strukturellen Validierung anhand von FHIR-Profilen können zusätzliche fachliche oder anwendungsübergreifende Vorgaben für die Verarbeitung von FHIR-Ressourcen bestehen. Diese können insbesondere Prüfungen erfordern, die nicht allein durch die FHIR-Profilierung oder einen FHIR-Validator abgebildet werden können.

Die folgenden Abschnitte beschreiben eine gemeinsame Vorgehensweise für FHIR-basierte TI-Services und beteiligte Systeme.

### Package-Abhängigkeiten und Validierungsgrundlage

Die in einem Implementation Guide direkt deklarierten FHIR-Package-Abhängigkeiten legen fest, welche Versionen externer FHIR-Artefakte für den jeweiligen Implementation Guide maßgeblich sind.

Abhängigkeiten, die ausschließlich transitiv über ein anderes FHIR-Package eingebunden werden, gelten nicht als verbindliche Grundlage für die Definition der Profile dieses Implementation Guides. Werden Artefakte eines solchen Packages unmittelbar verwendet, ist das betreffende Package zusätzlich als direkte Dependency mit der vorgesehenen Version zu deklarieren.

Die direkt deklarierten Package-Abhängigkeiten bilden zugleich die Grundlage für die Validierung von FHIR-Daten. Für die Validierung sind die dort festgelegten Package-Versionen und die darin enthaltenen Profile, Extensions, Terminologien und weiteren FHIR-Artefakte heranzuziehen.

Durch die explizite Deklaration der verwendeten Packages und ihrer Versionen wird sichergestellt, dass sowohl bei der Implementierung als auch bei der Validierung ein einheitlicher und reproduzierbarer Stand der zugrunde liegenden FHIR-Artefakte verwendet wird.


#### Beispiel: Verwendung von Artefakten aus einer transitiven Abhängigkeit

Das FHIR-Package eines Implementation Guides (Package A) deklariert Package B als direkte Abhängigkeit. Package B besitzt wiederum eine Abhängigkeit zu Package C:

- `Package A → Package B → Package C`

Solange Artefakte aus Package C ausschließlich aufgrund der Abhängigkeiten von Package B benötigt werden, ist Package C für Package A eine transitive Abhängigkeit.

Verwendet Package A dagegen selbst ein Profil, eine Extension, ein ValueSet oder ein anderes Artefakt aus Package C, ist Package C zusätzlich mit der verwendeten Version als direkte Abhängigkeit zu deklarieren:

- `Package A → Package B`
- `Package A → Package C`

Damit wird explizit festgelegt, welche Version von Package C für den Implementation Guide maßgeblich ist. Änderungen der Abhängigkeiten von Package B verändern dadurch nicht implizit die für Package A vorgesehene Version von Package C.

#### Beispiel: Validierung von FHIR-Daten

Package A deklariert Package B und Package C mit den jeweils vorgesehenen Versionen als direkte Abhängigkeiten:

- `Package A → Package B`
- `Package A → Package C`

Bei der Validierung von FHIR-Ressourcen bilden Package A sowie die dort direkt deklarierten Package-Abhängigkeiten mit ihren jeweiligen Versionen den maßgeblichen Validierungskontext. Dadurch wird sichergestellt, dass insbesondere die Profile, Extensions, Terminologien und weiteren FHIR-Artefakte in den Versionen verwendet werden, die der Definition von Package A zugrunde liegen.

Eine abweichende Version von Package B oder Package C, die beispielsweise über eine transitive Abhängigkeit eines anderen Packages verfügbar ist, soll nicht anstelle der in Package A direkt deklarierten Version als Validierungsgrundlage verwendet werden.

### Strukturierte Dosierinformationen

Der [Medication IG DE] der HL7 DE definiert als ersten Anwendungsfall für die deutschlandweite Nutzung von Profilen für den Arzneimittelbereich die Angabe strukturierter Dosierinformationen.

In diesem IG wurden Festlegungen getroffen wie diese Dosierungen anzugeben und zu validieren sind. Neben der FHIR-Struktur, die durch die Profildefinitionen vorgegeben ist, müssen FHIR Data Services der TI auch außerhalb der FHIR-Validierung die textuelle Repräsentation der Dosierung prüfen.

Client-Systeme können Dosierinformationen strukturiert oder als Freitext an einen FHIR Data Service übertragen. Für die Dosierinformation wird in einer dafür vorgesehenen Extension eine textuelle Repräsentation bereitgestellt. Bei strukturierten Dosierinformationen wird diese aus den strukturierten Angaben generiert; bei einer Dosierung als Freitext wird die textuelle Angabe entsprechend übernommen. Der FHIR Data Service prüft diese textuelle Repräsentation anschließend nach den Vorgaben des Algorithmus.

Die HL7 DE hat für die Erzeugung des gerenderten Dosiertextes eine [dgMP-DosageTextgenerierung-Spezifikation] bereitgestellt, die normativ vorgibt, wie eine Textgenerierung von strukturierten Dosierinformationen zu erfolgen hat. Dieser Algorithmus ist normativ vom FHIR Data Service umzusetzen.

#### Umsetzung für Clients
Client-Systeme, die strukturierte Dosierinformationen schreiben, müssen neben dieser eine textuelle Repräsentation erzeugen und in der Instanz angeben. Fehlende Angaben der textuellen Repräsentation, sowie deren Metadaten, werden vom FHIR Data Service als invalide abgewiesen.

Client-Systeme, die strukturierte Dosierinformationen lesen, müssen in der Lage sein, mindestens die textuelle Repräsentation anzuzeigen. Darüber hinaus können lesende Client-Systeme auch Logiken auf den Dosierinformationen aufbauen und dem Nutzer Funktionalitäten bereitstellen (bspw. die Erinnerung zur Einnahme von Medikamenten).

Im Verordnungsdatensatz und der Dispensierinformation für ein Arzneimittel können Angaben zur Dosierung gemacht werden. Im Kontext des digital gestützten Medikationsprozesses (dgMP) gibt es hierfür einen übergreifenden FHIR Implementation Guide [Medication IG DE] von HL7 Deutschland e.V., der entsprechende Vorgaben dazu macht. Hierzu muss u.a. für jede Angabe der Dosierung eine textuelle Darstellung nach [dgMP-DosageTextgenerierung-Spezifikation] erzeugt und im Datensatz angegeben werden.

#### Umsetzung für den FHIR Data Service
Der FHIR Data Service muss eingehende Instanzen zunächst gemäß FHIR validieren und nachfolgend überprüfen, ob die textuelle Repräsentation der Dosierung dem Ergebnis des Algorithmus, der im [dgMP-DosageTextgenerierung-Spezifikation] definiert ist, entspricht. Falls das Client-System keinen korrekten Text erzeugt und übermittelt hat, wird die Instanz mit einem entsprechenden Fehler abgewiesen und überträgt auch die erwartete textuelle Repräsentation der Dosierung. Eine Auflistung an Beispielen ist hier zu finden: [Medication IG - Beispiele](https://ig.fhir.de/igs/medication/2.0.0-ballot/dosierung-beispiele.html).

#### Validierung von strukturierten Dosierungen

In FHIR-Ressourcen ist es möglich, strukturierte Dosierinformationen anzugeben. Diese Angaben sind im komplexen FHIR-Datentyp _Dosage_ definiert. Beispielsweise bieten die FHIR-Ressourcen _MedicationRequest_ und _MedicationDispense_ die Möglichkeit, diese Angaben unter _dosagelnstruction_ zu vermerken. Der [Medication IG DE] legt für den dgMP fest, dass diese strukturierten Dosierinformationen zusätzlich als textuelle Repräsentation von erzeugenden Systemen bereitgestellt und von entgegennehmenden zentralen Diensten validiert werden müssen. Der FHIR Data Service ist daher verpflichtet, über die strukturelle FHIR-Validierung hinaus sicherzustellen, dass die textuelle Repräsentation mit den strukturierten Dosierinformationen übereinstimmt.

Zu diesem Zweck stellt HL7 Deutschland e.V. das [dgMP-DosageTextgenerierung-Skript] zur Verfügung. Dieses Skript implementiert einen Algorithmus, der die FHIR-Ressourcen _MedicationRequest_, -_Dispense_ und -_Statement_ mit Dosierinformationen in einen menschlesbaren Text (Zeichenkette) umwandelt. Der FHIR Data Service muss in der Lage sein, zu überprüfen, ob die angegebene textuelle Repräsentation dem Ergebnis des im Referenzskript implementierten Algorithmus entspricht.

Das Referenzskript enthält eine Versionsnummer und eine Information zur Sprache, die in FHIR-Ressourcen unter `extension: generatedDosageInstructionsMeta`

- `.extension:language`
- `.extension: algorithmVersion`

angegeben sind. Diese Werte werden bei der Validierung berücksichtigt, sodass nur Repräsentationen entsprechend einer gültigen Version und Sprache im FHIR Data Service eingestellt werden können.

Die Validierung von Dosierungen gilt jeweils für freitextliche Dosierinformationen (_.dosagelnstruction.text_), sowie für strukturierte Dosierinformationen (_.dosagelnstruction.timing_ und _.dosagelnstruction.doseAndRate_). Eine unstrukturierte Freitextangabe der Dosierung ist weiterhin möglich. Hierzu ist unter _extension[renderedDosagelnstruction]_ der identische Text wie in _.dosagelnstruction.text_ anzugeben.

#### Anforderungen an einen FHIR Data Service

<requirement conformance="SHALL" key="IG-TI83690KSY" title="Strukturierte Dosierung - Validierung von Version und Sprache" version="0">
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS für die Validierung von Dosierungen die Angaben von Version und Sprache unter
    <ul>
        <li>MedicationRequest.extension.generatedDosageInstructionsMeta</li>
        <li>MedicationDispense.extension.generatedDosageInstructionsMeta</li>
        <li>MedicationStatement.extension.generatedDosageInstructionsMeta</li>
    </ul>
    mit dem aktuellen Implementierungsstand vergleichen und bei Abweichungen die Operation mit dem HTTP-Fehlercode 400 und einer Fehlermeldung inklusive implementierter Version und Sprache abbrechen.
</requirement>

<requirement conformance="SHALL" key="IG-TI96213YXB" title="Strukturierte Dosierung - Validierung der generierten Dosierungsangabe" version="0">
    <meta lockversion="true"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS für die Validierung von Dosierungen prüfen, ob der in
    <ul>
        <li>MedicationRequest.extension:renderedDosageInstruction</li>
        <li>MedicationDispense.extension:renderedDosageInstruction</li>
        <li>MedicationStatement.extension:renderedDosageInstruction</li>
    </ul>
angegebene String den Vorgaben der Validierung von strukturierten Dosierungen entspricht und andernfalls die Operation mit dem HTTP Status Code 400 und einer Fehlermeldung inklusive erwarteter textueller Repräsentation abbrechen.
</requirement>

<requirement conformance="SHALL" key="IG-TI17421K31" title="Strukturierte Dosierung - Implementierung der Dosiertexterzeugung" version="1">
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS für die Validierung von Dosierungen eine Implementierung des [dgMP-DosageTextgenerierung-Spezifikation] bereitstellen, womit strukturierte Dosierinformationen validiert werden können.
</requirement>

<requirement conformance="SHALL" key="IG-TI74988KAT" title="Strukturierte Dosierung - Bereitstellen von Versionen und Sprachen" version="1">
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS für die Validierung von Dosierungen Implementierungen des [dgMP-DosageTextgenerierung-Spezifikation] mit unterschiedlichen Versionen und Sprachen verwalten können.
</requirement>

<requirement conformance="SHALL" key="IG-TI39852FY6" title="Strukturierte Dosierung - Unterstützen mehrerer Versionen" version="0">
    <meta lockversion="false"/>
     <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS bei der Validierung einer Instanz die zur jeweiligen Kombination aus Version und Sprache passende Implementierung des [dgMP-DosageTextgenerierung-Spezifikation] heranziehen.
</requirement>

<requirement conformance="SHALL" key="IG-TI43381BV9" title="Strukturierte Dosierung - Anwendung der Validierung" version="0">
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS die Validierung von Dosierungen anwenden, wenn eines der folgenden Felder in einer FHIR-Ressource vorhanden ist:
    <ul>
        <li>MedicationRequest.dosageInstruction</li>
        <li>MedicationDispense.dosageInstruction</li>
        <li>MedicationStatement.dosage</li>
    </ul>
</requirement>

<requirement conformance="SHALL" key="IG-TI20681JNN" title="Strukturierte Dosierung - Rückgabe erwarteter Dosierungstext" version="0">
    <meta lockversion="true"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS im Falle einer fehlerhaften Instanz den erwarteten Dosierungstext unformatiert in <i>OperationOutcome.extension[expectedDosageText].valueMarkdown</i> einsetzen.
</requirement>

**Ein Beispiel für eine OperationOutcome mit erwartetem Dosierungstext:**
<div class="gem-ig-example" data-title="OperationOutcome (JSON)">
    {% fragment OperationOutcome/5ab6bca4-fbdf-49c3-a693-a065187cffd6 JSON %}
</div>
<div class="gem-ig-example" data-title="OperationOutcome (XML)">
    {% fragment OperationOutcome/5ab6bca4-fbdf-49c3-a693-a065187cffd6 XML %}
</div>

### Validierung von Referenzen in FHIR-Objekten

FHIR ermöglicht die Verknüpfung von Ressourcen über Referenzen. Das erfolgt über den Datentyp [Reference](https://hl7.org/fhir/R4/references.html). Referenzen dienen dazu, auf andere Ressourcen innerhalb derselben oder einer anderen FHIR-Instanz zu verweisen.

FHIR Data Services der gematik erzeugen und validieren diese Angaben.

Beim Erzeugen von FHIR-Objekten verwenden FHIR Data Services grundsätzlich das `urn:uuid`-Schema, um eine Referenz anzugeben. Das ermöglicht eine direkte Auflösung innerhalb des Artefakts.

#### Referenzierungen und fullUrl in FHIR-Bundles

Innerhalb eines [FHIR-Bundle](https://hl7.org/fhir/R4/bundle.html#references) dient die `fullUrl` als eindeutige Kennung eines Bundle-Eintrags, damit Resourcen im Bundle referenziert und aufgelöst werden können. Für den Wert von `fullUrl` sind sieht die FHIR Spezifikation verschiedene Formate vor: 

- `oid`, 
- `urn:uuid` 
- und `http(s)`

Die `fullUrl` muss dabei mit der ID der referenzierten Ressource konsistent sein, damit die Referenzierung eindeutig und prüfbar bleibt.

<requirement conformance="SHALL" key="IG-TI03535MXB" title="FHIR-Ressource erzeugen - fullUrl Format in FHIR-Bundles" version="0">
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS beim Erzeugen von FHIR-Bundles im `fullUrl`-Element das `urn:uuid`-Schema verwenden.
</requirement>

<requirement conformance="SHALL" key="IG-TI12108QJK" title="FHIR-Ressource erzeugen - Format von Referenzen in FHIR-Ressourcen" version="0">
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS beim Erzeugen von FHIR-Datensätzen für die Referenzierung von FHIR-Ressourcen das `urn:uuid`-Schema verwenden.
</requirement>

<!-- A_26229-02 -->
<requirement conformance="SHALL" key="IG-TI21687PU7" title="FHIR-Ressource validieren - Prüfung Konsistenz Ressource IDs" version="0">
	<meta lockversion="false"/>
	<actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
    	<testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
  	</actor>
	Der FHIR Data Service MUSS bei der Validierung einer FHIR-Ressource vom Typ Bundle prüfen, ob die ID der Ressource (Bundle.entry.resource.id) und die ID ihrer fullUrl (Bundle.entry.fullurl) übereinstimmen und bei Abweichung die Operation mit dem folgenden Fehler:
      <table id="error-code" style="border: 1px solid black; border-collapse: collapse;">
        <tr>
            <th>HTTP-Code</th>
            <td>400 - Bad Request</td>
        </tr>
        <tr>
            <th>Severity</th>
            <td>error</td>
        </tr>
        <tr>
            <th>Code</th>
            <td>invalid</td>
        </tr>
        <tr>
            <th>Details Code</th>
            <td>MSG_RESOURCE_ID_MISMATCH</td>
        </tr>
        <tr>
            <th>Details Text</th>
            <td>Die ID einer Ressource und die ID der zugehörigen fullUrl stimmen nicht überein.</td>
        </tr>
    </table> 
    abbrechen.
</requirement>

<!-- A_26233-01 -->
<requirement conformance="SHALL" key="IG-TI42629HLM" title="FHIR-Ressource validieren - Prüfung Format fullUrl" version="0">
	<meta lockversion="false"/>
	<actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
    	<testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
  	</actor>
	Der FHIR Data Service MUSS bei der Validierung einer FHIR-Ressource vom Typ Bundle prüfen, ob der Wert von fullUrls der entries (Bundle.entry.fullUrl) dem [Format http-Schema] oder [Format urn:uuid-Schema] entsprechen und bei Abweichung die Operation mit dem folgenden Fehler:
      <table id="error-code" style="border: 1px solid black; border-collapse: collapse;">
        <tr>
            <th>HTTP-Code</th>
            <td>400 - Bad Request</td>
        </tr>
        <tr>
            <th>Severity</th>
            <td>error</td>
        </tr>
        <tr>
            <th>Code</th>
            <td>invalid</td>
        </tr>
        <tr>
            <th>Details Code</th>
            <td>SVC_RESOURCE_FULLURL_INVALID</td>
        </tr>
        <tr>
            <th>Details Text</th>
            <td>Invalid format of the fullUrl</td>
        </tr>
    </table> 
    abbrechen.
</requirement>

<!-- A_27648 -->
<requirement conformance="SHALL" key="IG-TI06477FBZ" title="FHIR-Ressource validieren - Prüfung Existenz von Ressource.id" version="0">
	<meta lockversion="false"/>
	<actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
    	<testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
  	</actor>
	Der FHIR Data Service MUSS bei der Validierung einer FHIR-Ressource vom Typ Bundle prüfen, ob für jedes entry im Bundle die ID der Ressource (Bundle.entry.resource.id) vorhanden ist und bei Abweichung die Operation mit dem folgenden Fehler:
      <table id="error-code" style="border: 1px solid black; border-collapse: collapse;">
        <tr>
            <th>HTTP-Code</th>
            <td>400 - Bad Request</td>
        </tr>
        <tr>
            <th>Severity</th>
            <td>error</td>
        </tr>
        <tr>
            <th>Code</th>
            <td>invalid</td>
        </tr>
        <tr>
            <th>Details Code</th>
            <td>MSG_RESOURCE_ID_MISSING</td>
        </tr>
        <tr>
            <th>Details Text</th>
            <td>The ID of a resource in the bundle does not exist</td>
        </tr>
    </table> 
    abbrechen.
</requirement>

<!-- A_27649 -->
<requirement conformance="SHALL" key="IG-TI05986KWW" title="FHIR-Ressource validieren - Prüfung Auflösbarkeit von Referenzen" version="0">
	<meta lockversion="false"/>
	<actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
    	<testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
  	</actor>
	Der FHIR Data Service MUSS bei der Validierung einer FHIR-Ressource prüfen, ob angegebene Referenzen nach [FHIR Spezifikation Auflösen von Referenzen in Bundles] ermittelt werden können und bei Abweichung die Operation mit dem folgenden Fehler:
      <table id="error-code" style="border: 1px solid black; border-collapse: collapse;">
        <tr>
            <th>HTTP-Code</th>
            <td>400 - Bad Request</td>
        </tr>
        <tr>
            <th>Severity</th>
            <td>error</td>
        </tr>
        <tr>
            <th>Code</th>
            <td>invalid</td>
        </tr>
        <tr>
            <th>Details Code</th>
            <td>MSG_RESOURCE_ID_FAIL</td>
        </tr>
        <tr>
            <th>Details Text</th>
            <td>Reference to a resource could not be resolved</td>
        </tr>
    </table> 
    abbrechen.
</requirement>
