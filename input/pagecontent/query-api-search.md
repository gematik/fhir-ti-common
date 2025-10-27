Diese Seite beschreibt Standard-API-Zugriffe für eine clientseitige Suche und Bereitstellung von Daten des FHIR Data Service. Im Detail bedeutet dies das Navigieren in Suchergebnisseiten, die kompakte Suche mit verknüpften FHIR-Ressourcen als auch die Suche unter Nutzung von Vergleichsoperatoren.


### Suche

Die FHIR-Schnittstellen des FHIR Data Service unterstützen standardmäßige [FHIR-Suchoperationen] gemäß den Vorgaben der FHIR-Spezifikation. Bei einer Suche wird ein _Search Set Bundle_ zurückgegeben.


<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service" conformance="SHALL" key="IG-TI43409LRQ" title="Verwendung von entry.search.mode = match" version="0">
    Der FHIR Data Service MUSS sicherstellen, dass für jede Ressource, die direkt den in der Suchanfrage angegebenen Kriterien entspricht, das Attribut <i>entry.search.mode</i> auf <i>match</i> gesetzt wird.
</requirement>


#### fullUrl in FHIR Bundles

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI64797XGV" title="Formatierungsvorgaben für das fullUrl-Feld in FHIR-Bundles" version="0">
    Der FHIR Data Service MUSS sicherstellen, dass das <i>fullUrl</i>-Feld in jedem <i>Entry</i> (<i>Bundle.entry.fullUrl</i>) wie in der Standard HL7 FHIR Spezifikation als absolute URL oder als UUID-basierte URI (urn:uuid) angegeben wird. Relative Pfade sind im <i>fullUrl</i>-Feld nicht zulässig. Für absolute URLs gilt zusätzlich, dass sie das Format <i>[base]/[Ressourcentyp]/[ResourceId]</i> aufweisen müssen.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI29911V07" title="Konsistente Referenzierung innerhalb eines Bundles" version="0">
    Der FHIR Data Service MUSS sicherstellen, dass, wenn im <i>Bundle.entry.fullUrl</i> eine UUID-basierte URI (<i>urn:uuid</i>) verwendet wird, alle Referenzen innerhalb desselben Bundles ebenfalls in der Form <i>urn:uuid:[UUID]</i> angegeben werden. Eine Mischung aus absoluten URLs, UUID-basierten URIs und relativen Referenzen innerhalb eines Bundles darf nicht verwendet werden.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI95143N18" title="Formatierung von Referenzen im fullUrl-Feld" version="2">
    Der FHIR Data Service MUSS sicherstellen, dass relative Referenzen wie <i>literal</i>-Referenzen in der Form [Resourcetyp]/[ResourceId] nicht im Feld <i>Bundle.entry.fullUrl</i> verwendet werden. Alle Verweise auf Ressourcen innerhalb des FHIR Data Service MÜSSEN entweder als absolute URLs oder als UUID-basierte URIs (urn:uuid) angegeben werden.
</requirement>


**Beispiel:**

Eine UUID-basierte URI MUSS das Format `urn:uuid:[UUID]` haben, zum Beispiel

```
urn:uuid:ea01ccbc-aa5d-4c34-8292-d95678d52c98
```

#### Beispiele Standard-Suchparameter

_\_id_: Bezieht sich auf die logische ID der Ressource

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?_id=ea01ccbc-aa5d-4c34-8292-d95678d52c98
```

_\_lastUpdated_: Kann verwendet werden, um Ressourcen basierend auf dem letzten Änderungszeitpunkt auszuwählen

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?_lastUpdated=2025-15-01
```


#### Einbeziehung verknüpfter Ressourcen in das Ergebnis

##### _include:

In FHIR wird der Suchparameter <i>_include</i> verwendet, um zu fordern, dass der Server nicht nur die angeforderten Ressourcen, sondern auch andere Ressourcen, die über eine angegebene Referenz mit ihnen verbunden sind, zurückgibt. Dieser Parameter ist besonders nützlich, um verknüpfte Ressourcen in einer einzigen Abfrage abzurufen, wodurch die Notwendigkeit nachfolgender Anfragen verringert wird. Beispielsweise, wenn eine Abfrage an <i>MedicationRequest</i>-Instanzen mit einem <i>_include</i>-Parameter wie <i>MedicationRequest:medication</i> durchgeführt wird, gibt der FHIR Data Service die angeforderten <i>MedicationRequest</i>-Instanzen zusammen mit verknüpften <i>Medication</i>-Instanzen zurück. Das bedeutet, dass eine Liste von <i>Medication</i>-Instanzen ebenso erhalten ist.

*Beispiel*

```
GET [base]/epa/medication/api/v1/fhir/MedicationRequest?_include=MedicationRequest:medication
```

In dieser Abfrage bedeutet:

1. _MedicationRequest_ der FHIR-Ressourcentyp, der abgefragt wird

2. <i>_include=MedicationRequest:medication</i> die Anweisung an den FHIR Data Service, die <i>Medication</i>-Instanzen einzubeziehen, auf die in den<i> MedicationRequest</i>-Instanzen referenziert wird

Diese Abfrage gibt ein <i>Search Set Bundle</i> zurück, welches alle im FHIR Data Service verfügbaren <i>MedicationRequest</i>-Instanzen enthält - also auch zugehörige <i>Medication</i>-Instanzen. Hinweis: Dies kann potenziell eine große Ergebnismenge bedeuten und ist davon abhängig, wie viele <i>MedicationRequest</i>-Datensätze gespeichert sind.

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI38183K0G" title="Unterstützung der _include-Suche im FHIR Data Service gemäß FHIR" version="2">
    Der FHIR Data Service MUSS die <i>_include</i>-Suche gemäß der [FHIR Search Include] unterstützen, sodass referenzierte Ressourcen innerhalb der Suchergebnisse automatisch mit einbezogen werden können.
</requirement>


##### _revinclude:

In FHIR ist <i>_revinclude</i> ein Suchparameter, der es ermöglicht, Ressourceninstanzen in die Ergebnismenge einzubeziehen, die jeweils auf die primäre Ressourceninstanz referenziert.

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI44886ZXA" title="Unterstützung der _revinclude-Suche im FHIR Data Service gemäß FHIR" version="2">
    Der FHIR Data Servic MUSS die <i>_revinclude</i>-Suche gemäß der [FHIR Search Revinclude] unterstützen, sodass Ressourcen, die auf die gesuchten Ressourcen verweisen, innerhalb der Suchergebnisse automatisch mit einbezogen werden können.
</requirement>


*Beispiel*

```
GET [base]/epa/medication/api/v1/fhir/MedicationRequest?_revinclude=MedicationDispense:prescription
```

In dieser Abfrage bedeutet:

1. <i>MedicationRequest</i> der FHIR-Ressourcentyp, der abgefragt wird

2. <i>_revinclude=MedicationDispense:prescription</i> die Anweisung an den FHIR Data Service, die <i>MedicationDispense</i>-Instanzen einzuschließen, die eine <i>authorizingPrescription</i>-Referenz haben, welche wiederum auf die <i>MedicationRequest</i>-Instanzen verweist

Diese Abfrage gibt ein <i>Search Set Bundle</i> zurück, welche <i>MedicationRequest</i>-Instanzen zusammen mit den <i>MedicationDispense</i>-Instanzen enthält.

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI08134XQ4" title="Verarbeitung von referenzierten Ressourcen in Include-Suchen" version="0">
    Der FHIR Data Service MUSS für jede zurückgegebene Ressource die zugehörigen Ressourcen gemäß den Verknüpfungskriterien ermitteln und mit <i>entry.search.mode = "include"</i> in die Antwort aufnehmen. Falls eine referenzierte Ressource nicht existiert, nicht gefunden wird oder nicht abrufbar ist, darf kein Fehler zurückgegeben werden.
</requirement>

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI92941JBA" title="Einbeziehung verknüpfter Ressourcen auf derselben Ergebnisseite" version="0">
    Der FHIR Data Service MUSS sicherstellen, dass Ressourcen, die durch <i>_include</i> oder <i>_revinclude</i> in das Suchergebnis aufgenommen werden, stets auf derselben Ergebnisseite wie die zugehörigen Suchtreffer (<i>entry.search.mode = "match"</i>) enthalten sind.
</requirement>


#### Unterstützung des :iterate-Modifikators

Der <i>:iterate</i>-Modifikator ermöglicht es, bei der Verwendung von <i>_include</i> und <i>_revinclude</i> die Einschlusslogik rekursiv anzuwenden. Dadurch werden nicht nur direkt referenzierte Ressourcen in das Suchergebnis aufgenommen, sondern auch alle Ressourcen, die durch die eingeschlossenen Ressourcen weiter referenziert werden. Dies ist besonders nützlich für mehrstufige Abhängigkeiten und zirkuläre Beziehungen.

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI97020UTC" title="Unterstützung des :iterate-Modifikators" version="0">
    Der FHIR Data Service MUSS den <i>:iterate</i>-Modifikator für <i>_include</i> und <i>_revinclude</i> unterstützen, um rekursive Einschlussabfragen gemäß der FHIR-Spezifikation zu ermöglichen.
</requirement>

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI00242W49" title="Unterstützung von _include:iterate" version="0">
    Der FHIR Data Service MUSS alle weiter referenzierten Ressourcen gemäß der angegebenen Referenzpfade iterativ in die Antwort aufnehmen, wenn <i>_include:iterate</i> verwendet wird.
</requirement>

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI17755AMW" title="Unterstützung von _revinclude:iterate" version="0">
    Der FHIR Data Service MUSS alle iterativ verknüpften rückreferenzierenden Ressourcen zurückgeben, wenn <i>_revinclude:iterate</i> verwendet wird.
</requirement>

##### Beispiel: Einbeziehung von _MedicationDispense_ und der zugehörigen abgebenden Leistungserbringerinstitution (LEI) in die Medikamentensuche

Die folgende FHIR-Suchanfrage kombiniert <i>_revinclude</i> und <i>_include:iterate</i>, um sowohl rückverknüpfte als auch iterativ eingeschlossene Ressourcen in die Antwort aufzunehmen:

```
GET [base]/Medication?_revinclude=MedicationDispense:medication&_include:iterate=MedicationDispense:performer
```

In dieser Abfrage bedeutet:
1. _revinclude=MedicationDispense:medication
  - Sucht alle _Medication_-Instanzen und schließt zusätzlich alle _MedicationDispense_-Instanzen ein, die diese _Medikamente_ referenzieren.
2. _include:iterate=MedicationDispense:performer
  - Nachdem die _MedicationDispense_-Instanzen über <i>_revinclude</i> einbezogen wurden, bewirkt der _:iterate_-Modifikator, dass die in _MedicationDispense.performer_ referenzierten Organisationen ebenfalls in die Antwort aufgenommen werden.

##### Beispiel: Abruf aller Verschreibungen mit zugehörigem verschreibenden Leistungserbringer (LE) und verschreibender Leistungserbringerinstitution (LEI)

Die folgende FHIR-Suchanfrage kombiniert <i>_include</i> und <i>_include:iterate</i>, um eine vollständige Abfrage aller _MedicationRequest_-Instanzen mit den relevanten Informationen zum verschreibenden LE und zur verschreibenden LEI durchzuführen. Diese Abfrage ermöglicht es, alle Verschreibungen (_MedicationRequest_) mit dem zugehörigen verschreibenden LE (_Practitioner_) und der verschreibenden LEI (_Organization_) abzurufen.

```
GET [base]/MedicationRequest?_include=MedicationRequest:medication
    &_include=MedicationRequest:requester
    &_include:iterate=PractitionerRole:organization
    &_include:iterate=PractitionerRole:practitioner

```

In dieser Abfrage bedeutet:
1. _include=MedicationRequest:medication
  - Bezieht die in _MedicationRequest.medication_ referenzierte _Medication_-Instanz in die Antwort ein.
2. _include=MedicationRequest:requester
  - Bezieht die in _MedicationRequest.requester_ referenzierte _PractitionerRole_-Instanz mit ein.
3. _include:iterate=PractitionerRole:organization
  - Falls die _PractitionerRole_-Instanz eine Referenz zu einer _Organization_ enthält, wird diese in die Antwort aufgenommen.
  - So kann die verschreibende LEI (z. B. eine Praxis oder Klinik) ermittelt werden.
4. _include:iterate=PractitionerRole:practitioner
  - Falls die _PractitionerRole_-Instanz eine Referenz zu einer _Practitioner_-Instanz enthält, wird diese in die Antwort aufgenommen.
  - So kann der verschreibenden LE ermittelt werden.

### Vergleiche und Präzision für Zahlen, Daten und Mengen

Bei einer Suche, die numerische oder Datumsparameter umfasst, hängen die verwendeten Werte von der Präzision des bereitgestellten Parameters ab. Zum Beispiel erstreckt sich für das Datum 2025-02-11 der Bereich von 2025-02-11, um 00:00:00 Uhr (inklusive) bis 2025-02-12, um 00:00:00 Uhr (exklusive).

#### Präfix

In FHIR werden Gleitkommazahlen durch Datentypen wie [FHIR decimal) und [FHIR Quantity] dargestellt, die die Präzision des gespeicherten Werts erfassen. Dies schließt jedoch einige Felder aus, die einfache Ganzzahlen verwenden. Suchoperationen in diesen Feldern führen zu exakten numerischen Übereinstimmungen. Bei numerischen Vergleichen ([FHIR Search number], [FHIR Search quantity]) mit einem einzelnen Wert sind nachfolgende spezifische Präfixe anwendbar. Wenn kein Präfix angegeben wird, wird standardmäßig _eq_ verwendet. Weitere Details finden sich hier: [FHIR Search Prefixes]

<figure>
  <table style="width: 100%">
    <thead>
      <tr>
        <th>Präfix</th>
        <th>Beschreibung</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>eq</code></td>
        <td>Der Wert des Parameters in der Ressource ist gleich dem bereitgestellten Wert.</td>
      </tr>
      <tr>
        <td><code>ne</code></td>
        <td>Der Wert des Parameters in der Ressource ist nicht gleich dem bereitgestellten Wert.</td>
      </tr>
      <tr>
        <td><code>gt</code></td>
        <td>Der Wert des Parameters in der Ressource ist größer als der bereitgestellte Wert.</td>
      </tr>
      <tr>
        <td><code>lt</code></td>
        <td>Der Wert des Parameters in der Ressource ist kleiner als der bereitgestellte Wert.</td>
      </tr>
      <tr>
        <td><code>ge</code></td>
        <td>Der Wert des Parameters in der Ressource ist größer oder gleich dem bereitgestellten Wert.</td>
      </tr>
      <tr>
        <td><code>le</code></td>
        <td>Der Wert des Parameters in der Ressource ist kleiner oder gleich dem bereitgestellten Wert.</td>
      </tr>
    </tbody>
  </table>
  <figcaption><strong>Tabelle:</strong> Präfixe für numerische Vergleiche</figcaption>
</figure>

<br/>

Datumsangaben haben einen Bereich, der auf ihrer Präzision (Jahr, Monat, Tag) basiert. Für Typen wie [FHIR Range] oder [FHIR Period] sind eindeutige obere und untere Grenzen definiert. Es gibt spezifische Präfixe für derartige Vergleiche. Wird kein Präfix angegeben, ist _eq_ die Standardwahl.

<figure>
  <table style="width: 100%">
    <thead>
      <tr>
        <th>Präfix</th>
        <th>Beschreibung</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>eq</code></td>
        <td>Der Bereich des Suchwerts enthält den Bereich des Zielwerts vollständig.</td>
      </tr>
      <tr>
        <td><code>ne</code></td>
        <td>Der Bereich des Suchwerts enthält den Bereich des Zielwerts nicht vollständig.</td>
      </tr>
      <tr>
        <td><code>gt</code></td>
        <td>Der Bereich oberhalb des Suchwerts überlappt mit dem Bereich des Zielwerts.</td>
      </tr>
      <tr>
        <td><code>lt</code></td>
        <td>Der Bereich unterhalb des Suchwerts überlappt mit dem Bereich des Zielwerts.</td>
      </tr>
      <tr>
        <td><code>ge</code></td>
        <td>Der Bereich oberhalb des Suchwerts überlappt mit oder schließt den Bereich des Zielwerts vollständig ein.</td>
      </tr>
      <tr>
        <td><code>le</code></td>
        <td>Der Bereich unterhalb des Suchwerts überlappt mit oder schließt den Bereich des Zielwerts vollständig ein.</td>
      </tr>
      <tr>
        <td><code>sa</code></td>
        <td>Der Bereich des Parameterwerts beginnt nach dem Zielbereich.</td>
      </tr>
      <tr>
        <td><code>eb</code></td>
        <td>Der Bereich des Parameterwerts endet vor dem Zielbereich.</td>
      </tr>
    </tbody>
  </table>
  <figcaption><strong>Tabelle:</strong> Präfixe für datumsbasierte Vergleiche</figcaption>
</figure>

<br/>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI31988JEY" title="Unterstützung der Präzision bei numerischen und Datums-Suchparametern" version="0">
    Der FHIR Data Service MUSS numerische und Datums-Suchparameter so verarbeiten, dass die Suchwerte entsprechend ihrer Präzision interpretiert werden. Beispielsweise muss eine Suche nach 2025-02-11 den Bereich von 2025-02-11T00:00:00 (inklusive) bis 2025-02-12T00:00:00 (exklusive) abdecken.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI28968WCS" title="Unterstützung von Präfixen für numerische und Datumsvergleiche" version="0">
  Der FHIR Data Service MUSS die in der [FHIR Search Prefixes] definierten Vergleichspräfixe für numerische (<i>number</i>, <i>quantity</i>) und Datumsparameter (<i>date</i>, <i>Range</i>, <i>Period</i>) unterstützen.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI40876FQM" title="Standardpräfix für Vergleiche" version="0">
  Falls kein Vergleichspräfix angegeben wird, MUSS der FHIR Data Service standardmäßig das Präfix <i>eq</i> verwenden.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI36297YXJ" title="Vergleichspräfixe für numerische Werte" version="0">
  Der FHIR Data Service MUSS die folgenden Vergleichspräfixe für numerische Werte (number, quantity) unterstützen: <i>eq</i>, <i>ne</i>, <i>gt</i>, <i>lt</i>, <i>ge</i>, <i>le</i>
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI85276Y4V" title="Vergleichspräfixe für Datumswerte" version="0">
  Der FHIR Data Service MUSS die folgenden Vergleichspräfixe für Datumswerte (date, Range, Period) unterstützen: <i>eq</i>, <i>ne</i>, <i>gt</i>, <i>lt</i>, <i>ge</i>, <i>le</i>, <i>sa</i>, <i>eb</i>
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI14253RWM" title="Exakte Übereinstimmungen bei Ganzzahlen" version="0">
  Der FHIR Data Service MUSS sicherstellen, dass Suchoperationen für Felder mit Ganzzahlen (<i>integer</i>) nur exakte numerische Übereinstimmungen liefern und keine Präzisionsanpassungen wie bei Gleitkommazahlen (<i>decimal</i>, <i>quantity</i>) vornehmen.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI61163GRT" title="Bereichsprüfung für Range- und Period-Typen" version="0">
  Der FHIR Data Service MUSS für Suchanfragen, die Range- oder Period-Werte betreffen, sicherstellen, dass obere und untere Grenzen des Bereichs korrekt berücksichtigt werden und mit den definierten Vergleichspräfixen korrekt verarbeitet werden.
</requirement>

**Beispiele**

Alle <i>AuditEvent</i>s, die vor dem 15. Januar 2025 aktualisiert oder erstellt wurden:

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?_lastUpdated=lt2025-15-01T00:00:00Z
```

<br/>

Alle <i>AuditEvent</i>s nach dem 15. Januar 2025:

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?date=gt2025-15-01T00:00:00Z
```

<br/>

Alle <i>AuditEvent</i>s seit dem 15. Januar 2025 und von der Allgemeinarztpraxis "Praxis Dr. John Doe":

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?date=ge2025-15-01T11:00:00Z&altid=1-883110000092404
```

<br/>

Alle <i>AuditEvent</i>s ab dem 15. Januar 2025 und alle <i>AuditEvent</i>s, die eine Erstellung protokollieren:

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?date=2025-15-01T11:00:00Z&action=C
```

<br/>

Alle <i>AuditEvent</i>s für das XDS-Dokument mit dem Titel <i>Arztbrief4711</i>:

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?entity-name=Arztbrief4711
```

<br/>

### Verkettete Parameter (Chained parameters)

Das Client-System KANN in dem FHIR Data Service einen Referenzparameter mithilfe sogenannter "Chained parameters" verwenden. Dabei wird ein Referenzparameter durch einen Punkt (``.``) mit dem Namen eines Suchparameters der Zielressource verknüpft. Diese Verkettung kann mehrstufig durchgeführt werden, indem ein logischer Pfad über mehrere verknüpfte Ressourcen definiert wird.

Die Syntax für eine verkettete Parametersuche sieht folgendermaßen aus:

```
[Referenzparameter]:[Ressourcentyp].[innerer Suchparameter]=[innerer Wert]
```

Wenn der Referenzparameter nur auf einen einzelnen Ressourcentyp verweist, kann <i>:[Ressourcentyp]</i> weggelassen werden. Die Syntax lautet dann:

```
[Referenzparameter].[innerer Suchparameter]=[innerer Wert]
```

<br/>

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI06315TQ1" title="Unterstützung verketteter Suchparameter" version="0">
    Der FHIR Data Service MUSS die Suche von verketteten Parametern gemäß der Spezifikation unter [FHIR Chained parameters] implementieren und unterstützen.
</requirement>

**Beispiel**

In diesem Beispiel gibt der FHIR Data Service nur <i>MedicationRequest</i>-Instanzen zurück, die sich auf das Medikament Ibuprofen beziehen:

```
GET [base]/MedicationRequest?medication.code=http://fhir.de/CodeSystem/bfarm/atc|M01AE01
```

### Reverse Chaining (_has)

Das Client-System KANN in dem FHIR Data Service den <i>_has</i>-Parameter verwenden, um eine umgekehrte verkettete Parametersuche durchzuführen. Bei einer umgekehrten verketteten Parametersuche werden Ressourceninstanzen basierend auf den Kriterien von anderen Ressourceninstanzen abgeglichen, die auf sie verweisen. Dies ist das Gegenteil der verketteten Parametersuche, bei der Instanzen basierend auf den Eigenschaften von Ressourcen ausgewählt werden, auf die sie verweisen.

Die Syntax für eine umgekehrte verkettete Parametersuche sieht folgendermaßen aus:

```
_has:[Ressourcentyp]:[Referenzparameter]:[Suchparameter]=[Wert]
```

<br/>

<requirement actor="EPA-Medication-Service" conformance="SHALL" key="IG-TI87465NYV" title="Unterstützung der umgekehrten verketteten Parametersuche" version="0">
    Der FHIR Data Service MUSS die umgekehrte verkettete Parametersuche gemäß der Spezifikation unter [FHIR Reverse Chaining] implementieren und unterstützen.
</requirement>

**Beispiele**

In diesem Beispiel wird nach <i>Medication</i>-Ressourceninstanzen gesucht, die von <i>MedicationStatement</i>-Instanzen referenziert werden und der Status der <i>MedicationStatement</i>-Instanzen auf "active" steht.

```
GET [base]/Medication?_has:MedicationStatement:medication:status=active
```

In diesem Beispiel wird nach <i>Medication</i>-Ressourceninstanzen gesucht, die von <i>MedicationStatement</i>-Instanzen referenziert werden und das <i>effective</i>-Datum zwischen dem 22. Juli 2025 und dem 23. Juli 2025 liegt.

```
GET [base]/Medication?_has:MedicationStatement:medication:effective=ge2025-07-22&_has:MedicationStatement:medication:effective=le2025-07-23
```

In diesem Beispiel wird nach <i>Medication</i>-Ressourceninstanzen gesucht, die von <i>MedicationStatement</i>-Instanzen referenziert werden und der Status der <i>MedicationStatement</i>-Instanzen auf "stopped" steht. Mit dem <i>_revinclude</i>-Parameter werden zusätzlich alle zugehörigen <i>MedicationStatement</i>-Instanzen, die auf die jeweilige <i>Medication</i>-Ressource verweisen, in den Ergebnissen zurückgegeben.

```
GET [base]/Medication?_has:MedicationStatement:medication:status=stopped&_revinclude=MedicationStatement:medication
```


### Sortierung

<requirement actor="EPA-PS, EPA-FdV, EPA-CS-Ombudsstelle" conformance="MAY" key="IG-TI27170FRR" title="Sortierung der Suchergebnisse durch _sort" version="3">
    Das Client-System KANN die Reihenfolge der zurückgegebenen Ergebnisse durch den Parameter <i>_sort</i> angeben, der eine durch Kommas getrennte Liste von Sortierregeln in Prioritätsreihenfolge enthalten kann.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI81327UVF" title="Umsetzung der Sortierfunktion gemäß FHIR" version="0">
    Der FHIR Data Service MUSS die Sortierfunktion nach [FHIR Sorting] implementieren.
</requirement>

**Beispiel**

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?_sort=action,-date
```

<requirement conformance="SHALL" key="IG-TI00141ZJ2" title="Sortierung des Datentyps Period" version="0">
    <actor name="EPA-Audit-Service"></actor>
    <actor name="EPA-Medication-Service"></actor>
    <actor name="EPA-MHD-Service"></actor>
    Der FHIR Data Service MUSS bei der Sortierung von Instanzen anhand des Datentyps <i>Period</i> nach dem Element <i>Period.start</i> sortieren. Sofern zwei Instanzen den gleichen <i>start</i>-Wert besitzen muss sofern vorhanden weitergehend nach <i>Period.end</i> sortiert werden. Falls zwei Instanzen nach diesen Regeln den gleichen Sortierrang besitzen oder sowohl für <i>Period.start</i> als auch <i>Period.end</i> kein Wert gesetzt ist, muss sofern nicht anders angegeben nach <i>Resource.meta.lastUpdated</i> der Instanz sortiert werden.
</requirement>