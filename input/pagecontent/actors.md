In der TI greifen unterschiedliche Systeme auf FHIR-Schnittstellen zu oder stellen diese bereit. Viele Anforderungen gelten dabei für mehrere Systemtypen. Anforderungen an einen TI Client können beispielsweise sowohl für ein Primärsystem als auch für ein Frontend des Versicherten oder eine DiGA gelten.

TI Common definiert dafür gemeinsame Akteure als `ActorDefinition`-Instanzen. Obligations können diesen Akteuren zugeordnet und dadurch für verschiedene Systemtypen wiederverwendet werden.

Ein Akteur beschreibt die Rolle eines Systems innerhalb einer Interaktion. Er beschreibt weder ein konkretes Produkt noch eine Organisation oder eine Softwarearchitektur. Ein System kann mehrere Akteure implementieren. Ein System, das in einer Interaktion einen TI Service aufruft und in einer anderen Interaktion selbst eine Schnittstelle bereitstellt, kann beispielsweise sowohl _TI Client_ als auch _TI Service_ sein.


### Grundlegende Akteure

TI Common unterscheidet zunächst zwischen den folgenden grundlegenden Akteuren:

{% capture mainactors %}
ActorDefinition/TIClient,
ActorDefinition/TIService,
{% endcapture %}
{% include artifacts-table-generator.html render=mainactors %}

Die Rollen TI Client und TI Service schließen sich nicht gegenseitig aus. Sie werden jeweils im Kontext der betrachteten Interaktion angewendet.

### Spezialisierung von Akteuren

Ein spezialisierter Akteur verweist mit `ActorDefinition.derivedFrom` auf den allgemeineren Akteur, von dem er abgeleitet ist. Auf diese Weise entsteht eine Hierarchie wiederverwendbarer Akteure.

Die aktuell in TI Common definierte Hierarchie umfasst:

- **[TI Client](ActorDefinition-TIClient.html)**
  - **[Primärsystem](ActorDefinition-TIPrimarySystem.html)**
    - [Praxisverwaltungssystem (PVS)](ActorDefinition-TIPVS.html)
    - [Zahnarztpraxisverwaltungssystem (ZPVS)](ActorDefinition-TIZPVS.html)
    - [Krankenhausinformationssystem (KIS)](ActorDefinition-TIKIS.html)
    - [Apothekenverwaltungssystem (AVS)](ActorDefinition-TIAVS.html)
    - [Radiologieinformationssystem (RIS)](ActorDefinition-TIRIS.html)
    - [Laborinformationssystem (LIS)](ActorDefinition-TILIS.html)
    - [Heilmittelverwaltungssystem (HVS)](ActorDefinition-TIHVS.html)
    - [Pflegeinformationssystem (PIS)](ActorDefinition-TIPIS.html)
  - **[Kostenträgersystem](ActorDefinition-TIPayerSystem.html)**
  - **[Frontend des Versicherten (FdV)](ActorDefinition-TIFdV.html)**
  - **[Digitale Gesundheitsanwendung (DiGA)](ActorDefinition-TIDiGA.html)**
- **[TI Service](ActorDefinition-TIService.html)**

Ein abgeleiteter Akteur wird in JSON beispielsweise wie folgt definiert:

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "TIPrimarySystem",
  "url" : "https://gematik.de/fhir/ti/ActorDefinition/TIPrimarySystem",
  "name" : "TIPS",
  "title" : "TI Primärsystem",
  "status" : "active",
  "type" : "system",
  "derivedFrom" : [
        "https://gematik.de/fhir/ti/ActorDefinition/TIClient"
  ]
}
```


Die Ableitung beschreibt eine fachliche Spezialisierung. Sie bedeutet nicht, dass der abgeleitete Akteur eine konkrete technische Komponente oder ein bestimmtes Produkt darstellt.

### Akteure und Obligations

Obligations beschreiben, welche Verpflichtungen ein Akteur für ein FHIR-Profil oder für einzelne Elemente dieses Profils erfüllen muss. Sie können festlegen, dass im Zusammenhang mit dem Zugriff auf ein Element eine weitere Aktion auszuführen ist. Eine Obligation kann auch negativ formuliert sein und eine bestimmte Aktion ausdrücklich verbieten. So kann eine Obligation beispielsweise vorgeben, dass ein TI Client ein Element verarbeiten oder anzeigen muss, es beim Erzeugen einer Ressourceninstanz befüllen muss oder eine bestimmte Verarbeitung nicht durchführen darf.

Für die Anwendung von Obligations auf abgeleitete Akteure gilt:

> Eine Obligation, die einem Akteur zugeordnet ist, gilt auch für alle
> Akteure, die direkt oder transitiv von diesem Akteur abgeleitet sind.

Eine Obligation für den TI Client gilt damit unter anderem auch für ein Primärsystem, ein FdV und eine DiGA. Eine Obligation für das TI Primärsystem gilt zusätzlich für alle davon abgeleiteten Primärsystemtypen wie PVS, ZPVS, KIS oder PIS. Ein abgeleiteter Akteur kann zusätzliche oder konkretere Obligations erhalten. Diese ergänzen die Obligations der übergeordneten Akteure. Eine Spezialisierung darf die Verpflichtungen eines übergeordneten Akteurs nicht abschwächen. Wenn mehrere anwendbare Obligations unterschiedlich streng sind, ist die strengere Verpflichtung zu erfüllen. Die technische Durchsetzung einer Obligation und der Umgang mit einer Verletzung sind nicht in TI Common festgelegt. Sie liegen in der Verantwortung des verarbeitenden Systems und richten sich nach der dort geltenden Security Policy sowie gegebenenfalls nach weiteren anwendungsspezifischen Festlegungen.

Die folgende Abbildung zeigt beispielhaft, wie unterschiedliche Obligations für ein Profilelement verschiedenen Akteuren zugeordnet werden können. Im Beispiel muss der TI Service `Procedure.code` befüllen, sofern der Wert bekannt ist, ein PVS muss das Element verarbeiten können und ein FdV darf den enthaltenen Wert anzeigen. 

<figure>
    <div class="gem-ig-img-container" style="--box-width: 100%;">
        <img src="./obligations-example.png" alt="Beispiel: Obligations" style="width: 100%;">
    </div>
    <figcaption><strong>Abbildung:</strong> Beispielhafte Zuordnung von Obligations zu Akteuren an einem Profilelement</figcaption>
</figure>

### Paketübergreifende Verwendung von Akteuren

Akteure aus TI Common können in anderen FHIR Packages verwendet werden, wenn das TI-Common-Package als Abhängigkeit eingebunden ist.

Jeder Akteur wird durch eine `ActorDefinition` beschrieben und über die in `ActorDefinition.url` angegebene Canonical URL eindeutig identifiziert. Ein abgeleiteter Akteur verweist in `ActorDefinition.derivedFrom` auf die Canonical URL des übergeordneten Akteurs. Andere FHIR IGs können auf dieser Grundlage weitere, fachlich konkretere Akteure definieren.

#### Beispiel: MHD Document Consumer

Ein FHIR IG für den dokumentenbasierten Informationsaustausch kann beispielsweise den Akteur `MHDDocumentConsumer` definieren. Dieser beschreibt ein System, das auf
Grundlage von IHE MHD nach Dokumenten sucht und Dokumente abruft.

Da der `MHDDocumentConsumer` dafür Schnittstellen eines TI Service aufruft, wird er über `ActorDefinition.derivedFrom` vom Akteur `TIClient` abgeleitet. Damit gelten für den `MHDDocumentConsumer` auch alle allgemeinen Obligations des `TIClient`.

Ein Praxisverwaltungssystem, das als MHD Document Consumer agiert, besitzt damit zwei unterschiedliche Rollen:

| Dimension | Akteur |
| --- | --- |
| Systemrolle | `TIPVS` |
| Fachliche Rolle | `MHDDocumentConsumer` |

Um beide Rollen zusammenzuführen, kann beispielsweise ein Akteur `MHDPVSDocumentConsumer` definiert werden. Dessen `ActorDefinition.derivedFrom` verweist auf beide übergeordneten Akteure:

```json
{
  "resourceType": "ActorDefinition",
  "id": "ExpActor",
  "url": "https://gematik.de/fhir/example/ActorDefinition/ExpActor",
  "name": "ExpActor",
  "title": "Beispiel-Akteur",
  "status": "active",
  "type": "system",
  "derivedFrom": [
    "https://gematik.de/fhir/ti/ActorDefinition/TIPVS",
    "https://gematik.de/fhir/mhd/ActorDefinition/MHDDocumentConsumer"
  ]
}
```

Für den `MHDPVSDocumentConsumer` gelten dadurch sowohl die allgemeinen Obligations von `TIClient`, `TIPrimarySystem` und `TIPVS` als auch die fachlichen Obligations des `MHDDocumentConsumer`.


#### Spezialisierung von TI Services

Der Akteur `TIService` beschreibt allgemein ein System, das Schnittstellen oder Dienste in der TI bereitstellt. Konkrete fachliche Services können direkt von diesem Akteur abgeleitet werden.

Beispiele für solche Ableitungen sind:

- **TI Service**
  - **ePA Medication Service**
  - **Workflow Service**

Der `EPAMedicationService` ist ein spezialisierter Service für den digital gestützten Medikationsprozess (dgMP) in der ePA. Der `WorkflowService` ist ein weiteres Beispiel für einen spezialisierten TI Service.


### Auswahl eines Akteurs

Für eine Obligation sollte der allgemeinste Akteur gewählt werden, für den die Anforderung vollständig gilt:

- Gilt eine Anforderung für alle aufrufenden Systeme, wird sie dem TI Client
  zugeordnet.
- Gilt sie nur für Primärsysteme von Leistungserbringern, wird sie dem
  TI Primärsystem zugeordnet.
- Gilt sie nur für einen bestimmten Primärsystemtyp, wird sie beispielsweise
  dem PVS, AVS oder PIS zugeordnet.
- Gilt sie für Systeme, die eine Schnittstelle bereitstellen, wird sie dem
  TI Service zugeordnet.

Eine Zuordnung zu einem unnötig konkreten Akteur sollte vermieden werden, da andernfalls fachlich gleichartige Anforderungen mehrfach definiert werden müssten.
