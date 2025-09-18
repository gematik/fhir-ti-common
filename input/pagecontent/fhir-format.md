
Die Serialisierung von FHIR-Format-Repräsentationen in einem FHIR Data Service legt fest, in welchen Formaten der Dienst Anfragen verarbeitet und Antworten zurückgibt. Der FHIR Data Service kann sowohl JSON als auch XML unterstützen und ermöglicht es Client-Systeme, das gewünschte Format über den <i>Accept</i> Header oder den <i>_format</i>-Parameter festzulegen. Falls keine Formatangabe angezeigt wird, bestimmt der FHIR Data Service das Antwortformat. Die Anforderungen regeln zudem, wie der <i>Content Type Header</i> in POST-Nachrichten behandelt wird sowie welche Fehlerreaktion erfolgt, wenn ein nicht unterstütztes Format angefordert wird. Abhängig vom Einsatzzweck des FHIR Data Service kann es sein, dass nicht alle Anforderungen in jeder Implementierung relevant oder erforderlich sind.

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI59271UPX" title="FHIR-Formatunterstützung JSON" version="1">
    Der FHIR Data Service MUSS das FHIR-Format in [FHIR JSON] verarbeiten können.
</requirement>
<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI22824X01" title="Unterstützung von JSON Content Type für FHIR-Data-Schnittstellen" version="2">
    Der FHIR Data Service MUSS für Anfragenachrichten und Antwortnachrichten an den Schnittstellen den Content Type <code>application/fhir+json</code> unterstützen.
</requirement>
<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI62717R2P" title="FHIR-Formatunterstützung XML" version="1">
    Der FHIR Data Service MUSS das FHIR-Format in [FHIR XML] verarbeiten können.
</requirement>
<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI57083QMG" title="Unterstützung von XML Content Type für FHIR-Data-Schnittstellen" version="1">
    Der FHIR Data Service MUSS für Anfragenachrichten und Antwortnachrichten an den Schnittstellen den Content Type <code>application/fhir+xml</code> unterstützen.
</requirement>
<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI96963Y60" title="Unterstützung des Accept Header für Formatwahl im FHIR Data Service" version="1">
    Der FHIR Data Service MUSS den <i>Accept</i>-Header in eingehenden HTTP-Anfragen auswerten, um das gewünschte Antwortformat zu bestimmen. Der FHIR Data Service MUSS die Formate <i>application/fhir+json</i> und <i>application/fhir+xml</i> im <i>Accept</i>Header unterstützen und die jeweilige HTTP-Antwortnachricht in dem angegebenen Format verarbeiten.
    <br/><br/>
    <ul>
        <li>Wenn der Accept Header auf <i>application/fhir+json</i> gesetzt ist, MUSS die Antwort in diesem Format erfolgen.</li>
        <li>Wenn der Accept Header auf <i>application/fhir+xml</i> gesetzt ist, MUSS die Antwort in diesem Format erfolgen.</li>
    </ul>
</requirement>

**Beispiel für JSON (_application/fhir+json_)**

```
GET /AuditEvent/93f68f8b-0985-41c7-930a-44dfa6bba510 HTTP/1.1
Host: fhir.example.com
Accept: application/fhir+json
```

Der FHIR Data Service MUSS als Antwort FHIR JSON zurückgeben:

```
HTTP/1.1 200 OK
Content-Type: application/fhir+json

{
  "resourceType": "AuditEvent",
  "id": "93f68f8b-0985-41c7-930a-44dfa6bba510",
  ...
}

```

**Beispiel für XML (_application/fhir+xml_)**:

```
GET /AuditEvent/93f68f8b-0985-41c7-930a-44dfa6bba510 HTTP/1.1
Host: fhir.example.com
Accept: application/fhir+xml
```

Der FHIR Data Service MUSS als Antwort FHIR XML zurückgeben:

```
HTTP/1.1 200 OK
Content-Type: application/fhir+xml

<auditevent xmlns="http://hl7.org/fhir">
<id value="93f68f8b-0985-41c7-930a-44dfa6bba510"></id>
  ...
</auditevent>

```
<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI18063SU7" title="Unterstützung des _format-Parameters im FHIR Data Service" version="1">
    Der FHIR Data Service MUSS gemäß der [FHIR General parameters] den <i>_format</i>-Parameter in Anfragenachricht auswerten, um das gewünschte Antwortformat zu bestimmen.
    <br/>
    Der FHIR Data Service MUSS folgende Werte für den <i>_format</i>-Parameter unterstützen:
    <br/><br/>
    <ul>
        <li>XML-Formate: <i>xml</i>, <i>application/xml</i>, <i>application/fhir+xml</i></li>
        <li>JSON-Formate: <i>json</i>, <i>application/json</i>, <i>application/fhir+json</i></li>
    </ul>
</requirement>

**Beispiel für JSON (_application/fhir+json_)**

```
GET [base]/epa/audit/api/v1/fhir/AuditEvent?_count=10&_offset=20&_format=json
```

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI62490PR0" title="Standardformat für den FHIR Data Service" version="1">
    Der FHIR Data Service MUSS das Format <i>application/fhir+json</i> verwenden, wenn in der Anfragenachricht kein <i>Accept</i> Header oder <i>_format</i>-Parameter angegeben ist.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI19904KM0" title=" Keine Überschreibung des Content Type Header durch den _format-Parameter bei POST-Nachrichten" version="1">
    Der FHIR Data Service MUSS sicherstellen, dass der <i>_format</i>-Parameter den Content Type Header für den Formattyp des Bodys einer POST-Nachricht nicht überschreibt.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI94558MGC" title="Vorrang des _format-Parameters gegenüber dem Accept Header" version="1">
    Falls sowohl der <i>Accept</i>-Header als auch der <i>_format</i>-Parameter in einer Anfragenachricht angegeben sind, MUSS der FHIR Data Service den <i>_format</i>-Parameter priorisieren und das Antwortformat entsprechend diesem verarbeiten. Der <i>Accept</i> Header MUSS in diesem Fall ignoriert werden.
</requirement>

<requirement actor="EPA-Audit-Service, EPA-Medication-Service, EPA-Patient-Service, EPA-MHD-Service" conformance="SHALL" key="IG-TI44797PGD" title="Verhalten bei nicht unterstützten Formaten" version="1">
    Der FHIR Data Service MUSS das Standardformat verwenden, wenn ein nicht unterstütztes Format über den <i>Accept</i> Header oder den <i>_format</i>-Parameter angefordert wird.
</requirement>