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

In diesem IG wurden Festlegungen getroffen wie diese Dosierungen anzugeben und zu validieren sind. Neben der FHIR-Struktur, die durch die Profildefinitionen vorgegeben ist, müssen FHIR Data Services derr TI auch außerhalb der FHIR-Validierung die textuelle Repräsentation der Dosierung prüfen.

Client Systeme, die Dosierinformationen an den FHIR Data Service übertragen, können diese strukturiert oder als Freitext angeben. Für diese Fälle muss in einer dafür vorgesehenen Extension eine textuelle Repräsentation der Dosierung generiert werden, die dann vom FHIR Data Service nach den Vorgaben des Algorithmus, der im [dgMP-DosageTextgenerierung-Skript] definiert ist, geprüft wird.

#### Umsetzung für Clients
Client Systeme, die strukturierte Dosierinformationen schreiben, müssen neben dieser eine textuelle Repräsentation erzeugen und in der Instanz angeben. Fehlende Angaben der textuellen Repräsentation, sowie dessen Metadaten, werden vom FHIR Data Service als invalide abgewiesen.

Client Systeme, die strukturierte Dosierinformationen lesen, müssen in der Lage sein, mindestens die textuelle Repräsentation anzuzeigen. Darüber hinaus können lesende Clients auch Logik auf den Dosierinformationen aufbauen und dem Nutzer Funktionalitäten bereitstellen (bspw. Erinnerungen zur Einnahme von Medikamenten).

Im Verordnungsdatensatz und der Dispensierinformation für ein Arzneimittel können Angaben zur Dosierung gemacht werden. Im dgMP Kontext gibt es hierfür einen übergreifenden FHIR-Implementation Guide [Medication IG DE] der HL7 Deutschland, die entsprechende Vorgaben dazu macht.

Hierzu muss u.a. für jede Angabe der Dosierung eine gerenderte textuelle Darstellung nach [dgMP-DosageTextgenerierung-Skript] erzeugt und im Datensatz angegeben werden.

#### Umsetzung für den FHIR Data Service
Der FHIR Data Service muss eingehende Instanzen zunächst FHIR-validieren und nachfolgend überprüfen, ob die textuelle Repräsentation der Dosierung dem Output des Algorithmus, der im [dgMP-DosageTextgenerierung-Skript] definiert ist, entspricht. Falls der Client keinen korrekten String übermittelt hat, wird die Instanz mit entsprechendem Fehler abgewiesen.

Im Fehlerfall gibt der FHIR Data Service eine entsprechende Fehlermeldung an den Client zurück und überträgt auch die erwartete textuelle Repräsentation der Dosierung.
Eine Auflistung an Beispielen ist hier zu finden: [Medication IG - Beispiele](https://ig.fhir.de/igs/medication/1.0.7/dosierung-beispiele.html).

#### Validierung von strukturierten Dosierungen

In FHIR-Ressourcen ist es möglich, strukturierte Dosierinformationen anzugeben. Diese Angaben sind im komplexen FHIRDatentyp "Dosage" definiert. Beispielsweise bieten die FHIR-Ressourcen MedicationRequest und MedicationDispense die Möglichkeit, diese Angaben unter dosagelnstruction zu vermerken. Der [Medication IG DE] der HL7 Deutschland legt für den dgMP fest, dass diese strukturierten Dosierinformationen zusätzlich als textuelle Repräsentation von erzeugenden Systemen bereitgestellt und von entgegennehmenden zentralen Diensten validiert werden müssen.

Der FHIR Data Service ist daher verpflichtet, über die strukturelle FHIR-Validierung hinaus sicherzustellen, dass die textuelle Repräsentation mit den strukturierten Dosierinformationen übereinstimmt.

Zu diesem Zweck stellt HL7 Deutschland das [dgMPDosageTextgenerierung-Skript] zur Verfügung. Dieses Skript implementiert einen Algorithmus, der die FHIR-Ressourcen MedicationRequest, -Dispense und -Statement mit Dosierinformationen in einen String umwandelt. Der FHIR Data Service muss in der Lage sein, zu überprüfen, ob die angegebene textuelle Repräsentation dem Output des im Referenzskript implementierten Algorithmus entspricht.

Das Referenzskript enthält eine Versionsnummer und eine Information zur Sprache, die in FHIR-Ressourcen unter `extension: generatedDosageInstructionsMeta`

- `.extension:language`
- `.extension: algorithmVersion`

angegeben sind. 

Diese Werte werden bei der Validierung berücksichtigt, sodass nur Repräsentationen entsprechend einer gültigen Version und Sprache im FHIR Data Service eingestellt werden können.

Die Validierung von Dosierungen gilt jeweils für freitextliche Dosierinformationen (`.dosagelnstruction.text`), sowie für strukturierte Dosierinformationen (`.dosagelnstruction.timing` und `.dosagelnstruction.doseAndRate`). Eine unstrukturierte Freitextangabe der Dosierung ist weiterhin möglich. Hierzu ist unter `extension[renderedDosagelnstruction]` der identische Text, wie in `.dosagelnstruction.text` anzugeben.

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
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS für die Validierung von Dosierungen prüfen, ob der in
    <ul>
        <li>MedicationRequest.extension.renderedDosageInstruction</li>
        <li>MedicationDispense.extension.renderedDosageInstruction</li>
        <li>MedicationStatement.extension.renderedDosageInstruction</li>
    </ul>
    angegebene String den Vorgaben der Validierung von strukturierten Dosierungen entspricht und andernfalls die Operation mit dem HTTP-Fehlercode 400 und einer Fehlermeldung inklusive erwarteter textueller Repräsentation abbrechen.
</requirement>

<requirement conformance="SHALL" key="IG-TI17421K31" title="Strukturierte Dosierung - Implementierung der Dosiertexterzeugung" version="0">
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS für die Validierung von Dosierungen eine Implementierung des [dgMP-DosageTextgenerierung-Skript] bereitstellen, womit strukturierte Dosierinformationen validiert werden können.
</requirement>

<requirement conformance="SHALL" key="IG-TI74988KAT" title="Strukturierte Dosierung - Bereitstellen von Versionen und Sprachen" version="0">
    <meta lockversion="false"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS für die Validierung von Dosierungen Implementierungen des [dgMP-DosageTextgenerierung-Skript] mit unterschiedlichen Versionen und Sprachen verwalten können.
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
    <meta lockversion="false"/>
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