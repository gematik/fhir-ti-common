Dieser Implementation Guide verwendet die Schlüsselwörter **MUSS**, **DARF NICHT**, **SOLL NICHT** und **KANN** als deutsche Pendants des [RFC2119], um Anforderungen als Ausdruck normativer Festlegungen zu kennzeichnen. Anforderungen werden im Implementation Guide wie folgt dargestellt:

<p><br><b>&lt;IG-ID-Version&gt; - &lt;Titel der Anforderung&gt;</b><br> Text / Beschreibung<br> [&lt;=]</p>


### Eindeutigkeit von FHIR-Ressourcen

<requirement conformance="SHALL" key="IG-TI29386S9L" title="UUID für Resource.id" version="2">
    <meta lockversion="false"/>
    <actor name="EPA-Audit-Service" description="EPA-Audit-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-MHD-Service" description="EPA-MHD-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS ausschließlich zeitbasierte Universally Unique IDentifier (UUID) gemäß [RFC9562] für logische IDs (d.h. für das FHIR-Element <i>Resource.id</i>) verwenden.
</requirement>


### Must Support in FHIR-Profilen

Die Deklarierung als Must Support wird in der Anzeige der FHIR-Profile durch ein rotes "S" gekennzeichnet. Als Must Support deklarierte Elemente MÜSSEN durch jedes Client-System, welches diese Spezifikation implementiert, unterstützt werden. Das bedeutet:

<requirement conformance="SHALL" key="IG-TI87140VUU" title="Befüllungspflicht für Must Support" version="2">
    <meta lockversion="false"/>
    <actor name="EPA-PS" description="ePA-Schnittstelle eines PS">
        <testProcedure id="Konformitätsbestätigung">funkt. Eignung: Konformitätsbestätigung</testProcedure>
    </actor>
    <actor name="EPA-FdV" description="ePA - Frontend des Versicherten">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-CS-KTR" description="Clientsystem-Schnittstelle ePA: Kostenträger">
        <testProcedure id="Konformitätsbestätigung">funkt. Eignung: Konformitätsbestätigung</testProcedure>
    </actor>
    Ein Client-System, das schreibend ein FHIR-Profil des FHIR Data Service implementiert, MUSS jedes als Must Support gekennzeichnete Element gemäß der dazugehörigen Kardinalitätsangabe befüllen. Das heißt auch, dass in optionalen Elementen (z.B. Kardinalität "0..1", "0..*") der Elementwert leer bleiben darf, sofern dem Client-System kein Wert zur Verfügung steht.
</requirement>

<requirement actor="EPA-PS, EPA-FdV" conformance="SHALL" key="IG-TI09377BM6" title="Verarbeitung für Must Support" version="2">
    <meta lockversion="false"/>
    <actor name="EPA-PS" description="ePA-Schnittstelle eines PS">
        <testProcedure id="Konformitätsbestätigung">funkt. Eignung: Konformitätsbestätigung</testProcedure>
    </actor>
    <actor name="EPA-FdV" description="ePA - Frontend des Versicherten">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Das Client-System, das lesend ein FHIR-Profil des FHIR Data Service implementiert, MUSS in der Lage sein, alle Must-Support-Elemente in FHIR-Instanzen zu verarbeiten. Das Client-System MUSS auch Must-Support-Elemente ohne Wert verarbeiten können, ohne mit einem Fehler abzubrechen oder die Anwendung abstürzen zu lassen.
</requirement>

<requirement actor="EPA-PS, EPA-FdV, EPA-CS-KTR, EPA-CS-Ombudsstelle, VSDM-Client" conformance="SHALL" key="IG-TI06089XAH" title="Anzeige für Must Support" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-PS" description="ePA-Schnittstelle eines PS">
        <testProcedure id="Konformitätsbestätigung">funkt. Eignung: Konformitätsbestätigung</testProcedure>
    </actor>
    <actor name="EPA-FdV" description="ePA - Frontend des Versicherten">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-CS-KTR" description="Clientsystem-Schnittstelle ePA: Kostenträger">
        <testProcedure id="Konformitätsbestätigung">funkt. Eignung: Konformitätsbestätigung</testProcedure>
    </actor>
    <actor name="EPA-CS-Ombudsstelle" description="Clientsystem-Schnittstelle ePA: Ombudsstelle">
        <testProcedure id="Konformitätsbestätigung">funkt. Eignung: Konformitätsbestätigung</testProcedure>
    </actor>
    <actor name="VSDM-Client" description="CS-Schnittstelle für VSDM 2">
        <testProcedure id="Konformitätsbestätigung">funkt. Eignung: Konformitätsbestätigung</testProcedure>
    </actor>
    Wenn eine Anforderung vom Client-System verlangt, Inhalte einer oder mehrerer Instanzen von FHIR-Profilen des FHIR Data Service anzuzeigen, die das Client-System implementiert, MUSS das entsprechende Client-System alle Must-Support-Elemente für die menschliche Nutzung anzeigen. Es muss dabei nicht jeden Wert genauso darstellen, wie er in der Instanz kodiert ist, darf aber auch keine wesentlichen Informationen ausblenden.
</requirement>


### Versionierung

Jede Änderung an einer FHIR-Instanz führt zu einer neuen Version dieser Instanz, wobei jede Version eine eindeutige <i>Meta.versionId</i> und ein <i>Meta.lastUpdated</i> erhält. Auch eine neu erstellte FHIR-Instanz wird vom FHIR Data Service mit diesen Metadaten versehen. Dadurch kann der vollständige Änderungsverlauf einer Instanz nachvollzogen werden. Der FHIR Data Service speichert und stellt die Historie aller Versionen einer FHIR-Instanz bereit. Dies umfasst auch die Möglichkeit, frühere Versionen einer Instanz über die FHIR API unter Verwendung der <i>Meta.versionId</i> abzurufen. Falls eine FHIR-Instanz gleichzeitig aktualisiert wird, erkennt der FHIR Data Service potenzielle Konflikte und verarbeitet diese entsprechend.

Bei einer Aktualisierung einer FHIR-Instanz, die keine inhaltlichen Änderungen an den bestehenden Werten vornimmt, bleibt die aktuelle Version der Instanz unverändert. Der FHIR Data Service erstellt in diesem Fall keine neue Version und behält den bestehenden Wert in _Meta.versionId_ sowie das Datum in _Meta.lastUpdated_ bei.

<requirement actor="EPA-Medication-Service, EPA-Patient-Service" conformance="SHALL" key="IG-TI59347HCY" title="Initiale Versionierung neu erstellter oder hinzugefügter FHIR-Instanzen" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS jede neu erstellte oder neu hinzugefügte FHIR-Instanz mit einer <i>Meta.versionId</i> und einem <i>Meta.lastUpdated</i> versehen, um die Versionierung sicherzustellen.
</requirement>

<requirement conformance="SHALL" key="IG-TI94882PRF" title="Aktualisierung von Meta.versionId und Meta.lastUpdated bei einer Änderung" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass bei jeder Aktualisierung einer FHIR-Instanz die <i>Meta.versionId</i> angepasst wird. Das Element <i>Meta.lastUpdated</i> MUSS auf den Zeitpunkt der Aktualisierung gesetzt werden.
</requirement>

<requirement conformance="SHALL" key="IG-TI52895H8W" title="Keine neue Version bei inhaltsgleichen Aktualisierungen" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass bei einer Aktualisierung einer FHIR-Instanz, die keine inhaltlichen Änderungen an den bestehenden Werten vornimmt, die aktuelle Version unverändert bleibt. In diesem Fall wird keine neue Version erstellt und die bestehende <i>Meta.versionId</i> sowie das <i>Meta.lastUpdated-Datum</i> bleiben erhalten.
</requirement>


#### Format für Resource.meta.versionId

Das Metadatenattribut `Resource.meta.versionId` gibt die Versionsnummer einer FHIR-Instanz an. Die FHIR R4 Spezifikation definiert kein spezifisches Format für dieses Element. Die Vergabe und Verwaltung der <i>versionId</i> liegt ausschließlich beim FHIR Data Service.

<requirement conformance="SHALL" key="IG-TI52829PK9" title="Numerisches Format der Resource.meta.versionId" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass das Element <i>Resource.meta.versionId</i> ausschließlich numerische Werte enthält. Alphanumerische Zeichen, Symbole oder Sonderzeichen dürfen nicht verwendet werden.
</requirement>

<requirement conformance="SHALL" key="IG-TI06069XBQ" title="Aufsteigende Sequenz der Resource.meta.versionId" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass die <i>versionId</i> einer FHIR-Instanz bei jeder neuen Version um genau 1 erhöht wird. Die erste Version einer FHIR-Instanz erhält die <i>versionId</i> 1, die nächste Version 2, und so weiter. Beispiel: 1 → 2 → 3 →
</requirement>

<requirement conformance="SHALL" key="IG-TI44024J5L" title="Eindeutigkeit der Resource.meta.versionId pro FHIR-Instanz" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass die <i>Resource.meta.versionId</i> innerhalb einer spezifischen FHIR-Instanz eindeutig ist. Die Versionsnummer darf nicht zurückgesetzt oder übersprungen werden. Jede Instanz besitzt eine eigene fortlaufende Versionsnummer, die bei jeder Änderung der FHIR-Instanz aufsteigt.
</requirement>


#### Abfrage der Versionhistorie über HTTP GET

Die <i>_history</i>-Abfrage beim FHIR Data Service ermöglicht es, die Versionshistorie entweder einer spezifischen FHIR-Instanz oder aller Instanzen eines bestimmten ResourceType abzurufen. Damit kann nachverfolgt werden, welche Änderungen an einer Instanz vorgenommen wurden und welche Versionen im Laufe ihres Lebenszyklus existieren.

**Abruf der Versionshistorie einer spezifischen Instanz**

Die URL für den Abruf der Versionhistorie einer FHIR-Instanz folgt diesem Muster:

```
GET [base]/[ResourceType]/[id]/_history
```

Dabei ist:

- <i>ResourceType</i> der Typ der Ressource (z.B. <i>MedicationRequest</i>, <i>MedicationDispense</i>),
- <i>id</i> die eindeutige ID der Ressource,
- <i>_history</i> die Anzeige der Versionshistorie der Instanz, welche abgerufen werden soll

**Abruf der Versionshistorie aller Instanzen eines Ressourcentyps**

Die URL für den Abruf der Versionshistorie aller Instanzen eines Ressourcentyps folgt diesem Muster:

```
GET [base]/[ResourceType]/_history
```

Dabei gilt:

- <i>ResourceType</i> ist der Typ der Ressource (z.B. <i>MedicationRequest</i>, <i>MedicationDispense</i>)
- <i>_history</i> – zeigt an, dass die Versionshistorien aller Instanzen dieses Ressourcentyps abgerufen werden sollen


Funktionalität und Verhalten:

- Der FHIR Data Service gibt als Antwort ein _Bundle_ mit dem Typ _history_ zurück.
- Das _Bundle_ enthält eine Liste aller bekannten Versionen der angeforderten FHIR-Instanz.
- Jede Version wird als _entry_ innerhalb des _Bundles_ dargestellt und enthält die entsprechenden Metadaten (_meta.versionId_, _meta.lastUpdated_)
- Falls die FHIR-Instanz gelöscht wurde, bleibt ihre Historie weiterhin abrufbar.

**Beispiel für ein Bundle mit dem Typ history**
<div class="gem-ig-example" data-title="Bundle (JSON)">
    {% fragment Bundle/example-history-bundle JSON %}
</div>
<div class="gem-ig-example" data-title="Bundle (XML)">
    {% fragment Bundle/example-history-bundle XML %}
</div>

<requirement conformance="SHALL" key="IG-TI16747WFN" title="Implementierung der _history-Abfrage gemäß HL7 FHIR Spezifikation" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS die <i>_history</i>-Abfrage gemäß der HL7 FHIR Spezifikation [FHIR History Interaction] implementieren, um die Versionshistorie einer FHIR-Instanz abrufbar zu machen.
</requirement>

<requirement conformance="SHALL" key="IG-TI60515LXY" title="Abruf der Versionshistorie aller Instanzen eines ResourceType" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS es ermöglichen, die Versionshistorie aller Instanzen eines bestimmten Ressourcentyps über eine HTTP GET-Anfrage an folgende URL abzurufen: <i>[base]/[ResourceType]/_history</i>.
</requirement>

<requirement conformance="SHALL" key="IG-TI78384PEX" title="Abruf der Versionshistorie einer FHIR-Instanz" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS es ermöglichen, die Versionshistorie einer FHIR-Instanz über eine HTTP GET-Anfrage an folgende URL abzurufen: <i>[base]/[ResourceType]/[id]/_history</i>.
</requirement>

<requirement conformance="SHALL" key="IG-TI94321ZRC" title="Bereitstellung eines Bundles mit dem Typ history als Antwort" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS als Antwort auf eine <i>_history</i>-Abfrage ein Bundle mit dem Typ <i>history</i> zurückgeben, das die Versionen der angeforderten FHIR-Instanz enthält.
</requirement>

<requirement conformance="SHALL" key="IG-TI52070SA6" title="Bundle.entry.request und Bundle.entry.response innerhalb des _history Bundles" version="1">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS innerhalb des <i>_history</i> <i>Bundle</i> für jede Version einer FHIR-Instanz die zugehörigen <i>entry.request</i>- und <i>entry.response</i>-Elemente bereitstellen.
    <br/><br/>
    <ul>
        <li>
            <i>Bundle.entry.request.method</i> gibt die HTTP-äquivalente Aktion an, die zur Entstehung der jeweiligen Version der Ressourceinstanz geführt hat. <i>POST</i> für das Anlegen, <i>PUT</i> für eine Aktualisierung, <i>DELETE</i> für das Löschen der Ressourceinstanz.
        </li>
        <li>
            <i>Bundle.entry.request.url</i> enthält die äquivalente Ressourcen-URL relativ zum FHIR-Endpunkt, aus der die versionsspezifische Abruf-URL <i>ResourceType/{id}/_history/{versionId}</i> abgeleitet werden kann.
        </li>
        <li>
            <i>Bundle.entry.response.status</i> enthält den HTTP-ähnlichen Status der internen Verarbeitung (z. B. <i>201 Created</i> oder <i>200 OK</i>).
        </li>
        <li>
            <i>Bundle.entry.response.lastModified</i> gibt das Datum und die Uhrzeit der letzten Änderung der jeweiligen Version der Ressourceinstanz an und stimmt mit <i>meta.lastUpdated</i> überein, sofern <i>Bundle.entry.resource</i> vorhanden ist.
        </li>
        <li>
            <i>Bundle.entry.response.location</i> enthält die vollständige versionsspezifische Ressourcen-URL (z. B. <i>ResourceType/{id}/_history/{versionId}</i>), sofern die entsprechende Version der Ressourceinstanz einzeln abrufbar ist.
        </li>
    </ul>
</requirement>

**Hinweis:**

Die in <i>Bundle.entry.request.method</i> und <i>Bundle.entry.request.url</i> abgebildete Interaktion ist die HTTP-äquivalente Repräsentation der internen Persistenz des FHIR Data Service. Sie muss nicht der tatsächlich aufgerufenen fachlichen FHIR-Operation entsprechen.


#### Abfrage einer spezifischen Version über HTTP GET
Um eine spezifische Version einer Ressource abzurufen, kann eine einfache HTTP <i>GET</i>-Anfrage an den FHIR Data Service gesendet werden. Die URL für den Abruf einer bestimmten Version einer FHIR-Instanz folgt diesem Muster:

```
GET [base]/[ResourceType]/[id]/_history/[versionId]
```

Dabei ist:

- <i>resourceType</i> der Typ der Ressource (z.B. <i>Medication</i>, <i>MedicationStatement</i>)
- <i>id</i> die eindeutige ID der Ressource
- <i>versionId</i> die spezifische <i>Meta.versionId</i> der abzurufenden Ressourcenversion

**Beispiel**

Um die 3. Version einer `MedicationStatement`-Instanz mit der ID "391fc0c6-e045-48d9-8af6-3ac2466beb88" vom FHIR Data Service abzurufen, muss die URL für die HTTP GET-Anfrage wie folgt aussehen:

```
GET [base]/epa/medication/api/v1/fhir/MedicationStatement/391fc0c6-e045-48d9-8af6-3ac2466beb88/_history/3
```

<requirement conformance="SHALL" key="IG-TI06008V22" title="Abruf einer spezifischen Ressourcenversion über die FHIR API" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS das Lesen spezifischer Versionen von FHIR-Instanzen gemäß der HL7 FHIR Spezifikation [FHIR Version Read] implementieren. Dabei MUSS eine angeforderte Version einer Instanz über eine GET-Anfrage der Form <i>[base]/[resourceType]/[id]/_history/[versionId]</i> bereitgestellt werden. Die Antwort MUSS die angeforderte Version der Instanz enthalten, einschließlich der zugehörigen Metadaten (<i>meta.versionId</i>, <i>meta.lastUpdated</i>).
</requirement>

<requirement conformance="SHALL" key="IG-TI66923Q9F" title="Identifikation der Ressourcenversion durch Meta.versionId" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass eine spezifische Version einer Ressource über die <i>Meta.versionId</i> eindeutig identifiziert und abgerufen werden kann. Die <i>versionId</i> dient dabei zur referenzgenauen Anforderung einer bestimmten historischen Version einer Ressource.
</requirement>

<requirement conformance="SHALL" key="IG-TI06872YZP" title="404 Not Found Antwort für nicht existierende spezifische Versionen" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS bei einem HTTP GET-Request auf eine spezifische Version einer FHIR-Instanz den HTTP Status Code <i>404 (Not Found)</i> zurückgeben, wenn die angeforderte Version nicht existiert.
    <br/><br/>
    Die Response MUSS eine <i>OperationOutcome</i>-Ressource enthalten mit folgenden Eigenschaften:
    <ul>
        <li><i>OperationOutcome.issue.code</i> auf <i>not-found</i> gesetzt.</li>
        <li><i>OperationOutcome.issue.diagnostics</i> mit einer Meldung, dass die angeforderte Version nicht existiert.</li>
    </ul>
</requirement>


#### Löschen als Versionierungsergebnis

Im FHIR Data Service wird das Löschen einer Ressource als ein weiteres Ereignis im Lebenszyklus einer Ressource behandelt. Das bedeutet: Anstatt die Ressource physisch zu entfernen, wird die Ressource als gelöscht markiert und eine neue Version der Ressource erstellt, welche diesen Zustand widerspiegelt. Obwohl eine Ressource als gelöscht markiert wurde, können frühere Versionen über die versionsspezifischen Endpunkte (s.o.) abgerufen werden.

<requirement conformance="SHALL" key="IG-TI11342RSA" title="Behandlung des Löschvorgangs als versioniertes Ereignis" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS das Löschen einer Instanz als ein Ereignis im Lebenszyklus der Instanz behandeln, indem eine neue Version erstellt wird, die den gelöschten Zustand widerspiegelt.
</requirement>

<requirement conformance="SHALL" key="IG-TI66054HX2" title="Kennzeichnung gelöschter Instanzen statt physischer Entfernung" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS eine als gelöscht markierte Instanz weiterhin in der Versionshistorie speichern, anstatt sie physisch zu entfernen.
</requirement>

<requirement conformance="SHALL" key="IG-TI16700VFJ" title="Abruf früherer Versionen einer gelöschten Instanz" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass frühere Versionen einer gelöschten Instanz weiterhin über versionsspezifische Endpunkte abrufbar sind.
</requirement>

<requirement conformance="SHALL" key="IG-TI36210TD1" title="HTTP 410 Gone für den Abruf einer gelöschten FHIR-Instanz" version="2">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS bei einem <i>GET</i>-Request auf eine gelöschte FHIR-Instanz oder eine gelöschte Version den HTTP Status Code <i>410 (Gone)</i> zurückgeben.
    <br/><br/>
    Dies gilt für:
    <ul>
        <li><i>[ResourceType]/[id]</i> – wenn die gesamte FHIR-Instanz gelöscht wurde</li>
        <li><i>[ResourceType]/[id]/_history/[versionId]</i> – wenn eine spezifische Version der FHIR-Instanz gelöscht wurde</li>
    </ul>
    <br/>
    Die Response muss eine <i>OperationOutcome</i>-Ressource enthalten mit folgenden Eigenschaften:
    <ul>
        <li><i>OperationOutcome.issue.code</i> ist auf <i>processing</i> gesetzt</li>
        <li><i>OperationOutcome.issue.details</i> ist auf <i>MSG_DELETED</i> gesetzt</li>
        <li><i>OperationOutcome.issue.diagnostics</i> enthält eine Meldung, dass die Instanz gelöscht wurde</li>
    </ul>
</requirement>

Das folgende Beispiel zeigt die erwartete Antwort nach dem Abruf einer gelöschten Instanz.

<div class="gem-ig-example" data-title="OperationOutcome (JSON)">
    {% fragment OperationOutcome/0dc58d79-1b2e-4c6f-afe0-0a5b721661a2 JSON %}
</div>
<div class="gem-ig-example" data-title="OperationOutcome (XML)">
    {% fragment OperationOutcome/0dc58d79-1b2e-4c6f-afe0-0a5b721661a2 XML %}
</div>


<requirement conformance="SHALL" key="IG-TI23978E7A" title="Repräsentation gelöschter Versionen in Bundle.entry.request und Bundle.entry.response innerhalb eines _history-Bundles" version="1">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS innerhalb des <i>_history</i> Bundle auch gelöschte Versionen einer FHIR-Instanz dokumentieren.
    <br/><br/>
    Für gelöschte Versionen gilt:
    <ul>
        <li>Bei gelöschten Ressourceinstanzen wird das Element <i>Bundle.entry.resource</i> nicht ausgegeben.</li>
        <li><i>Bundle.entry.request.method</i> hat für gelöschte Ressourceinstanzen den Wert <i>DELETE</i>.</li>
        <li><i>Bundle.entry.request.url</i> enthält die REST-äquivalente Ressourcen-URL relativ zum FHIR-Endpunkt, <i>ResourceType/{id}</i>.</li>
        <li><i>Bundle.entry.response.status</i> enthält den Wert <i>200 OK</i>.</li>
        <li><i>Bundle.entry.response.lastModified</i> enthält das Löschdatum der Ressourceinstanz.</li>
    </ul>
</requirement>

**Hinweis:**

Gelöschte Versionen enthalten keine Ressourcendarstellung.
Die dokumentierte <i>DELETE</i> Aktion entspricht der internen Kennzeichnung der Ressource als gelöscht.
Die Löschzeit kann mit dem Zeitpunkt der internen Markierung übereinstimmen, der in lastModified angegeben wird.

{% comment %}
#### Hard Delete

Der FHIR Data Service setzt weiterhin eine Hard-Delete-Funktion um. Ein Hard Delete bezieht sich auf das vollständige und unwiederbringliche Entfernen einer Ressource aus dem FHIR Data Service, ohne dass eine Versionshistorie verbleibt. Diese Funktion MUSS ausschließlich für die <i>Task</i>-Ressource angewendet werden, beispielsweise beim asynchronen Verlinken von Verschreibungsdaten mit Medikationsplanungsdaten.

{% endcomment %}

#### Versionierte Referenzen
Versionierte Referenzen in FHIR ermöglichen es, innerhalb einer FHIR-Ressource auf eine spezifische Version einer anderen Ressource zu verweisen. Dies ist besonders wichtig in Szenarien, in denen die Genauigkeit und der Kontext der bezogenen Daten über die Zeit erhalten bleiben müssen.

In FHIR kann eine Referenz auf eine andere Ressource in der Regel durch die Angabe des Ressourcentyps und der ID erfolgen. Versionierte Referenzen erweitern dieses Konzept, indem sie es ermöglichen, zusätzlich die Version der referenzierten Ressource anzugeben. Dies stellt sicher, dass immer auf den exakten Zustand der referenzierten Ressource zum Zeitpunkt der Referenzerstellung Bezug genommen wird, unabhängig von späteren Änderungen oder Aktualisierungen dieser Ressource.

Eine versionierte Referenz in FHIR beinhaltet den Ressourcentyp, die Ressourcen-ID und die spezifische <i>Meta.versionId</i> der referenzierten Ressource. Das Format sieht wie folgt aus:

```
[ResourceType]/[id]/_history/[versionId]
```

Beispiel für eine versionierte Referenz auf eine spezifische Version einer _MedicationStatement_-Instanz:

```
MedicationStatement/391fc0c6-e045-48d9-8af6-3ac2466beb88/_history/4
```

In diesem Beispiel bezieht sich die Referenz auf die 4. Version der _MedicationStatement_-Instanz mit der ID _391fc0c6-e045-48d9-8af6-3ac2466beb88_.

<requirement conformance="SHALL" key="IG-TI47719G19" title="Umsetzung der Versionierte Referenzen gemäß FHIR" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS versionierte Referenzen nach [FHIR References and Versions] implementieren.
</requirement>

<requirement conformance="SHALL" key="IG-TI61673KWG" title="Unterstützung versionierter Referenzen im FHIR Data Service" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS versionierte Referenzen unterstützen, um es zu ermöglichen, innerhalb einer FHIR-Instanz auf eine spezifische Version einer anderen Instanz zu verweisen.
</requirement>

<requirement conformance="SHALL" key="IG-TI02423P7B" title="Referenzierung einer spezifischen Version einer FHIR-Instanz" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass eine FHIR-Instanz eine andere Instanz nicht nur über Ressourcentyp und ID, sondern auch mit einer spezifischen <i>Meta.versionId</i> referenzieren kann.
</requirement>

<requirement conformance="SHALL" key="IG-TI72725KAW" title="Format für versionierte Referenzen" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS das Format für versionierte Referenzen verwenden, das den Ressourcentyp, die <i>Resource.id</i> und die <i>Meta.versionId</i> beinhaltet: <i>[ResourceType]/[id]/_history/[versionId]</i>.
</requirement>

<requirement conformance="SHALL" key="IG-TI45064TNU" title="Auflösen von versionierten Referenzen in Bundles" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS sicherstellen, dass versionierte Referenzen in Bundles entsprechend den Vorgaben in [FHIR Bundle References] auflösbar sind.
</requirement>

Zum Auflösen einer versionerten Referenz, muss zunächst ein Treffer auf Grund der Referenz ohne die Versionsinformation (also ohne <code>/_history/[versionId]</code>) mit der <code>Bundle.entry.fullUrl</code> bestimmt werden muss und anschließend die Version mit <code>Resource.meta.versionId</code> auf Übereinstimmung geprüft werden (siehe [FHIR Bundle References]). Hierbei muss die <code>Bundle.entry.fullUrl</code> nicht eindeutig sein (siehe [FHIR Bundle.entry.fullUrl]) und mehrere Versionen der selben Resourcen-Instanz mit der selben URL innerhalb eines Bundles erlaubt.


### Bereitstellung von Capability Statements

<requirement conformance="SHALL" key="IG-TI38467S3Q" title="Bereitstellung des /metadata-Endpunkts durch FHIR Data Service" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Audit-Service" description="EPA-Audit-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-MHD-Service" description="EPA-MHD-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Ein FHIR Data Service MUSS an dem Endpunkt /metadata gemäß der [Capabilities-Interaktion] ein Capability Statement Typ <i>kind = instance</i> bereitstellen. Dieses Capability Statement muss im Element <i>software</i> den Namen und die Versionsnummer der eingesetzten Software angeben. Dieses Capability Statement muss sämtliche Anforderungen an den FHIR Data Service aus dem Capability Statement vom Typ <i>kind = requirements</i> der zugrundeliegenden Spezifikation erfüllen.
</requirement>

### Verwendung von Codes im Status inactive

<requirement conformance="SHALL" key="IG-TI97619U65" title="Keine Registrierung bei Nutzung inaktiver Codes" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Audit-Service" description="EPA-Audit-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Medication-Service" description="EPA-Medication-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-MHD-Service" description="EPA-MHD-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    <actor name="EPA-Patient-Service" description="EPA-Patient-Service">
        <testProcedure id="Produkttest">funkt. Eignung: Test Produkt/FA</testProcedure>
    </actor>
    Der FHIR Data Service MUSS das Registrieren und Speichern von neuen Daten ablehnen und mit dem Fehler <i>SVC_INACTIVE_CODE</i> quittieren, falls ein Code den Status <i>inactive</i> besitzt. Unter <i>OperationOutcome.issue.diagnostics</i> MUSS der FHIR Data Service angeben, welcher Code nicht mehr unterstützt wird.
</requirement>