Der [Medication IG DE] der HL7 DE definiert als ersten Anwendungsfall für die deutschlandweite Nutzung von Profilen für den Arzneimittelbereich die Angabe strukturierter Dosierinformationen.

In diesem IG wurden Festlegungen getroffen wie diese Dosierungen anzugeben und zu validieren sind. Neben der FHIR-Struktur, die durch die Profildefinitionen vorgegeben ist, müssen FHIR Data Services der TI auch außerhalb der FHIR-Validierung die textuelle Repräsentation der Dosierung prüfen.

Client-Systeme, die Dosierinformationen an den FHIR Data Service übertragen, können diese strukturiert oder als Freitext angeben. Für diese Fälle muss in einer dafür vorgesehenen Extension eine textuelle Repräsentation der Dosierung generiert werden, die dann vom FHIR Data Service nach den Vorgaben des Algorithmus, der im [dgMP-DosageTextgenerierung-Skript] definiert ist, geprüft wird.

### Umsetzung für Clients
Client-Systeme, die strukturierte Dosierinformationen schreiben, müssen neben dieser eine textuelle Repräsentation erzeugen und in der Instanz angeben. Fehlende Angaben der textuellen Repräsentation, sowie dessen Metadaten, werden vom FHIR Data Service als invalide abgewiesen.

Client-Systeme, die strukturierte Dosierinformationen lesen, müssen in der Lage sein, mindestens die textuelle Repräsentation anzuzeigen. Darüber hinaus können lesende Client-Systeme auch Logiken auf den Dosierinformationen aufbauen und dem Nutzer Funktionalitäten bereitstellen (bspw. die Erinnerung zur Einnahme von Medikamenten).

Im Verordnungsdatensatz und der Dispensierinformation für ein Arzneimittel können Angaben zur Dosierung gemacht werden. Im Kontext des digital gestützten Medikationsprozesses (dgMP) gibt es hierfür einen übergreifenden FHIR Implementation Guide [Medication IG DE] von HL7 Deutschland e.V., der entsprechende Vorgaben dazu macht. Hierzu muss u.a. für jede Angabe der Dosierung eine textuelle Darstellung nach [dgMP-DosageTextgenerierungSkript] erzeugt und im Datensatz angegeben werden.

### Umsetzung für den FHIR Data Service
Der FHIR Data Service muss eingehende Instanzen zunächst gemäß FHIR validieren und nachfolgend überprüfen, ob die textuelle Repräsentation der Dosierung dem Ergebnis des Algorithmus, der im [dgMP-DosageTextgenerierung-Skript] definiert ist, entspricht. Falls das Client-System keinen korrekten Text erzeugt und übermittelt hat, wird die Instanz mit einem entsprechenden Fehler abgewiesen und überträgt auch die erwartete textuelle Repräsentation der Dosierung. Eine Auflistung an Beispielen ist hier zu finden: [Medication IG - Beispiele](https://ig.fhir.de/igs/medication/1.0.7/dosierung-beispiele.html).

### Validierung von strukturierten Dosierungen

In FHIR-Ressourcen ist es möglich, strukturierte Dosierinformationen anzugeben. Diese Angaben sind im komplexen FHIRDatentyp _Dosage_ definiert. Beispielsweise bieten die FHIR-Ressourcen _MedicationRequest_ und _MedicationDispense_ die Möglichkeit, diese Angaben unter _dosagelnstruction_ zu vermerken. Der [Medication IG DE] legt für den dgMP fest, dass diese strukturierten Dosierinformationen zusätzlich als textuelle Repräsentation von erzeugenden Systemen bereitgestellt und von entgegennehmenden zentralen Diensten validiert werden müssen. Der FHIR Data Service ist daher verpflichtet, über die strukturelle FHIR-Validierung hinaus sicherzustellen, dass die textuelle Repräsentation mit den strukturierten Dosierinformationen übereinstimmt.

Zu diesem Zweck stellt HL7 Deutschland e.V. das [dgMPDosageTextgenerierung-Skript] zur Verfügung. Dieses Skript implementiert einen Algorithmus, der die FHIR-Ressourcen _MedicationRequest_, -_Dispense_ und -_Statement_ mit Dosierinformationen in eine Zeichenkette umwandelt. Der FHIR Data Service muss in der Lage sein, zu überprüfen, ob die angegebene textuelle Repräsentation dem Ergebnis des im Referenzskript implementierten Algorithmus entspricht.

Das Referenzskript enthält eine Versionsnummer und eine Information zur Sprache, die in FHIR-Ressourcen unter `extension: generatedDosageInstructionsMeta`

- `.extension:language`
- `.extension: algorithmVersion`

angegeben sind. Diese Werte werden bei der Validierung berücksichtigt, sodass nur Repräsentationen entsprechend einer gültigen Version und Sprache im FHIR Data Service eingestellt werden können.

Die Validierung von Dosierungen gilt jeweils für freitextliche Dosierinformationen (_.dosagelnstruction.text_), sowie für strukturierte Dosierinformationen (_.dosagelnstruction.timing_ und _.dosagelnstruction.doseAndRate_). Eine unstrukturierte Freitextangabe der Dosierung ist weiterhin möglich. Hierzu ist unter _extension[renderedDosagelnstruction]_ der identische Text, wie in _.dosagelnstruction.text_ anzugeben.

### Anforderungen an einen FHIR Data Service

<requirement conformance="SHALL" key="IG-TI83690KSY" title="Strukturierte Dosierung - Validierung von Version und Sprache" version="0">
    <meta lockversion="true"/>
    <actor name="TI-Flow_FD" description="TI-Flow-Fachdienst">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
     Der FHIR Data Service MUSS für die Validierung von Dosierungen die Angaben von Version und Sprache unter

- `MedicationRequest.extension.generatedDosageInstructionsMeta` bzw.
- `MedicationDispense.extension.generatedDosageInstructionsMeta`

mit dem aktuellen Implementierungsstand vergleichen und bei Abweichungen die Operation mit dem HTTP Status Code 400 und einer Fehlermeldung inklusive implementierter Version und Sprache abbrechen.
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

- `MedicationRequest.extension:renderedDosageInstruction` oder
- `MedicationDispense.extension:renderedDosageInstruction`

angegebene String den Vorgaben der Validierung von strukturierten Dosierungen entspricht und andernfalls die Operation mit dem HTTP Status Code 400 und einer Fehlermeldung inklusive erwarteter textueller Repräsentation abbrechen.
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

- `MedicationRequest.dosageInstruction`
- `MedicationDispense.dosageInstruction`
</requirement>