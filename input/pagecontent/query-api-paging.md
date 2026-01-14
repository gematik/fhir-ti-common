
Bei einer Suche im FHIR Data Service über die FHIR Query API stellt der Service dem Client-System in seiner Antwort ggf. Links zu weiteren Ergebnissen zur Verfügung, die es dem Client erlauben, bequem durch die Ergebnismenge zu navigieren.

<requirement conformance="SHALL" key="IG-TI07252NTV" title="Unterstützung URL-Parameter für Paginierungsfunktion" version="0">
    <meta lockversion="false"/>
    <actor name="EPA-Audit-Service">
        <testProcedure id="Produkttest"/>
    </actor>
    <actor name="EPA-Medication-Service">
        <testProcedure id="Produkttest"/>
    </actor>
    <actor name="EPA-MHD-Service">
        <testProcedure id="Produkttest"/>
    </actor>
  Der FHIR Data Service MUSS eine Paginierungsfunktion implementieren und in seiner Antwort Navigationsinformationen in Ergebnisseiten zur Verfügung stellen. Um die Paginierungsfunktion zu implementieren, werden die URL-Parameter <code>_count</code> und <code>_offset</code> verwendet. Der Parameter <code>_count</code> bestimmt die Anzahl der Einträge pro <i>Seite</i> (page), während <code>_offset</code> das Startelement der Seite angibt. Zusätzlich entscheidet der <code>_total</code>-Parameter, ob die Gesamtanzahl der Einträge in der Antwort enthalten sein soll.
  <br/><br/>
  <figure>
    <table style="width: 100%">
      <thead>
        <tr>
          <th>URL-Parameter</th>
          <th>Beschreibung</th>
          <th>Standardwert</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><code>_count</code></td>
          <td>Das Client-System KANN die maximale Anzahl von Elementen festlegen, die auf einer <i>Seite</i> (page) der Antwort enthalten sein soll. Das bedeutet, dass der Audit Event Service die Ergebnismenge auf diese maximal angegebene Anzahl beschränkt.</td>
          <td>25</td>
        </tr>
        <tr>
          <td><code>_offset</code></td>
          <td>Dieser Parameter gibt den (zero-based) Offset des ersten zurückgegebenen Elements in der Sammlung an.</td>
          <td>0</td>
        </tr>
        <tr>
          <td><code>_total</code></td>
          <td>Dieser Parameter steuert, ob und wie der Audit Event Service die Gesamtanzahl der Suchergebnisse zurückgibt. Folgende Werte können eingestellt werden: <code>none</code>, <code>estimate</code>, <code>accurate</code>.</td>
          <td>-</td>
        </tr>
      </tbody>
    </table>
    <figcaption><strong>Tabelle:</strong> URL-Parameter für Paginierungsfunktion</figcaption>
  </figure>
  <br/>
  Werte für <code>_total</code>:
  <br/><br/>
  <ul>
    <li><code>none</code> (Standardwert): Die Gesamtanzahl der Suchtreffer wird nicht angezeigt.</li>
    <li><code>estimate</code>: Die ungefähre Gesamtanzahl der Suchtreffer wird angezeigt.</li>
    <li><code>accurate</code>: Die genaue Gesamtanzahl der Suchtreffer wird angezeigt.</li>
  </ul>
</requirement>

**Beispiele**

API-Anfrage von zehn Elementen des Ressourcentyps _AuditEvent_, beginnend mit Element 20 der Liste:

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?_count=10&_offset=20
```

<br/>

API-Anfrage der ersten fünf Elemente:

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?_count=5
```

<br/>

API-Anfrage nur für die Gesamtanzahl der Einträge:

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?_count=0_total=accurate
```

<br/>

<requirement conformance="SHALL" key="IG-TI37232GDE" title="Unterstützung Seitennavigationslinks für Paginierungsfunktion" version="2">
    <meta lockversion="false"/>
    <actor name="EPA-Audit-Service">
        <testProcedure id="Produkttest"/>
    </actor>
    <actor name="EPA-Medication-Service">
        <testProcedure id="Produkttest"/>
    </actor>
    <actor name="EPA-MHD-Service">
        <testProcedure id="Produkttest"/>
    </actor>
  Der FHIR Data Service MUSS in einem FHIR Search Set Bundle das FHIR-Element <code>link</code> belegen, welches eine Liste von Link-Elementen beinhaltet, welche jeweils einem spezifischen Navigationszweck innerhalb des FHIR Bundles dienen.<br/><br/>Die folgenden Beziehungen werden gemäß den [Link Relation Types] bereitgestellt.
  <br/><br/>
  <figure>
    <table style="width: 100%">
      <thead>
        <tr>
          <th>Link Relation</th>
          <th>Beschreibung</th>
          <th>Anforderung</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><code>self</code></td>
          <td>Ein Link zur aktuellen Seite der Ergebnisse, der die Abfrage repräsentiert, die diese Ergebnisse generiert hat</td>
          <td>MUSS</td>
        </tr>
        <tr>
          <td><code>next</code></td>
          <td>Wird verwendet, um zur nächsten Seite der Ergebnisse zu navigieren, entsprechend der festgelegten Paginierung</td>
          <td>MUSS</td>
        </tr>
        <tr>
          <td><code>previous</code></td>
          <td>Ermöglicht die Rückkehr zur vorherigen Ergebnismenge und erleichtert die rückwärtige Navigation durch die Seiten</td>
          <td>MUSS</td>
        </tr>
        <tr>
          <td><code>first</code></td>
          <td>Navigiert zur ersten Seite der Suchergebnisse und ermöglicht eine schnelle Navigation zum Anfang der Ergebnisliste</td>
          <td>KANN</td>
        </tr>
        <tr>
          <td><code>last</code></td>
          <td>Navigiert zur letzten Seite der Suchergebnisse, um ans Ende der Ergebnisliste zu gelangen</td>
          <td>KANN</td>
        </tr>
      </tbody>
    </table>
    <figcaption><strong>Tabelle:</strong> Seitennavigationslinks für Paginierungsfunktion</figcaption>
  </figure>
  <br/>
  Jeder Link MUSS eine URL enthalten, um das entsprechende Ergebnis-Set abzurufen, das dynamisch basierend auf der Suchanfrage und den Paginierungsparametern wie <i>_count</i> und <i>_offset</i> generiert wird. Diese Links vereinfachen die Navigation eines Client-Systems durch große Suchergebnisse, indem sie die Notwendigkeit manueller Anpassungen der Abfrageparameter ausräumt.
</requirement>

<requirement conformance="MAY" key="IG-TI78112H2T" title="Verwendung relativer URLs bei der Paginierung von FHIR Bundles" version="3">
    <meta lockversion="false"/>
    <actor name="EPA-Audit-Service">
        <testProcedure id="Produkttest"/>
    </actor>
    <actor name="EPA-Medication-Service">
        <testProcedure id="Produkttest"/>
    </actor>
    <actor name="EPA-MHD-Service">
        <testProcedure id="Produkttest"/>
    </actor>
    Der FHIR Data Service KANN beim Paginieren von FHIR Bundles das Feld <i>Bundle.link.url</i> mit relativen URLs befüllen, sofern diese sich auf die Basis-URL beziehen.
</requirement>

Zu jedem Link können zusätzlich zu den Standardpaginierungsparametern wie <i>_count</i> und <i>_offset</i> auch andere Parameter enthalten sein, die die Paginierung innerhalb des FHIR Data Service erleichtern. Ein Beispiel hierfür ist der Parameter <i>stateid</i>, der den aktuellen Zustand der Ergebnisliste repräsentiert. Dies ermöglicht es dem FHIR Data Service, die Navigation durch die Ergebnisse effizient zu verwalten, indem der Kontext oder Zustand der Suche erhalten bleibt. Dies ist besonders nützlich, wenn Clients durch umfangreiche oder komplex strukturierte Ergebnismengen navigieren.

**Beispiel (Audit Event Service)**

```json
{
    "resourceType": "Bundle",
    "id": "86604fc1-b356-57e3-8738-8ef36c8d608c",
    "type": "searchset",
    "total": 100,
    "link": [
    {
        "relation": "self",
        "url": "/epa/audit/api/v1/fhir/AuditEvent?_count=10&_offset=20"
    },
    {
        "relation": "first",
        "url": "/epa/audit/api/v1/fhir/AuditEvent?_count=10&_offset=0"
    },
    {
        "relation": "previous",
        "url": "/epa/audit/api/v1/fhir/AuditEvent?_count=10&_offset=10"
    },
    {
        "relation": "next",
        "url": "/epa/audit/api/v1/fhir/AuditEvent?_count=10&_offset=30"
    },
    {
        "relation": "last",
        "url": "/epa/audit/api/v1/fhir/AuditEvent?_count=10&_offset=90"
    }
    ],
    "entry": [
    {
        "fullUrl": "http://epa4all/epa/audit/api/v1/fhir/AuditEvent/5abff610-a1ad-450d-aa63-a60622b1052e",
        "resource": {
        "resourceType": "AuditEvent",
        "id": "5abff610-a1ad-450d-aa63-a60622b1052e",
        // Details of the AuditEvent resource
        }
    },
    // More AuditEvent entries
    ]
}
```
