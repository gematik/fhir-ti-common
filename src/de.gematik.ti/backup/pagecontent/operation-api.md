
Einstellende Primärsysteme müssten beim Einstellen von FHIR-Daten in verschiedenen Geschäftslogiken (zugehörig zu FHIR Data Services) diese konsistent verknüpfen. Da übergreifend dies nicht überall sichergestellt und nachträglich von einem ePA-Aktensystem erkannt werden kann, wird anstelle der Nutzung der FHIR RESTful API zum Schreiben auf FHIR Operations gesetzt. Diese übernehmen das konsistente Verknüpfen während des Speicherns der FHIR-Daten. 


### Rahmenbedingungen für FHIR Operations der FHIR Data Services

#### Zentrale Geschäftslogik vor dezentraler Geschäftslogik

In der Architektur des ePA-Systems sollte so wenig Geschäftslogik wie möglich im Primärsystem verankert sein. Stattdessen sollte die zentrale Verarbeitung im Aktensystem erfolgen. Dies ermöglicht eine konsistente, standardisierte und interoperable Verarbeitung der Daten und reduziert die Komplexität der Primärsysteme.

#### Schreibvorgänge per Operation API

Schreibvorgänge sollten bevorzugt über die Operation API erfolgen. Dabei gilt:

- Dedizierte Geschäftslogik für Schreiben wenn möglich auf Instance API mit anwendungsspezifischen Constraints
- Profilierung von FHIR R4 Parameter für Prüfung der Profilkonformität im Datenraum

#### Exklusives Erzeugen von Referenzen durch den FHIR Data Service

Der FHIR Data Service übernimmt die Kontrolle über die Referenzierung von Ressourcen und stellt sicher, dass Client-Systeme keine direkten Referenzen setzen:

- Alle von Client-Systemen übergebenen Ressourcen werden als Data Transfer Objects betrachtet; intern werden neue Ressourcen erstellt und serverseitig verknüpft
- Verwerfen von Literal References aus Client-Anfragen

<!-- This is a ePA 3.1.x behavior

### Transaktionssicherheit

In einem FHIR Data Service können Operationen von verschiedenen Client-Systemen gleichzeitig ausgelöst werden. Dies kann zu Problemen führen, wenn Client-Systeme gleichzeitig lesend und insbesondere schreibend auf dieselben Informationen im FHIR Data Service zugreifen. Daher werden in den Definitionen der Operationen, bei denen konkurrierende Lese- und Schreibzugriffe voneinander isoliert werden müssen, Bereiche mit sogenannten "Transaktionen" definiert. Derart gekennzeichnete Bereiche müssen dem aus dem Datenbankprinzip bekannten ACID-Prinzip ("atomicity, consistency, isolation and durability") genügen, d.h. die in diesem Bereich ausgeführten Zugriffe müssen zusammen genommen
- atomar
- konsistent
- isoliert
- und dauerhaft sein. 

Von besonderer Bedeutung ist hierbei das Prinzip der "isolierten" Ausführung, nach dem Lese- oder Schreibzugriffe innerhalb eines Transaktionsblocks nicht durch Zugriffe einer zweiten, gleichzeitig ablaufenden Transaktion beeinflusst werden dürfen. Im Medication Service müssen transaktional gekennzeichnete Bereiche isoliert im Sinne von "serialisierbar" ("serialized") behandelt werden. Das bedeutet, dass gleichzeitig ablaufende Operationen das Ergebnis der jeweils anderen Operation nicht beeinflussen dürfen, sondern beide so ausgeführt werden müssen, dass das Ergebnis identisch ist mit dem Ergebnis einer getrennten, nacheinander ablaufenden Ausführung. Auf diese Weise können typische Probleme wie "Dirty Reads" vermieden werden.


Auch bei der Verwendung von Transaktionen kann es vorkommen, dass zwei Client-Systeme dieselbe Ressourceninstanz lesen (z.B. über die reguläre FHIR Query API), um anschließend die Werte darin über eine Operation zu aktualisieren. Auch wenn beide Aktualisierungsoperationen nacheinander ausgeführt werden, ist nur das Ergebnis der als zweites ausgeführten Transaktion dauerhaft im ePA-Datenraum sichtbar. Das Client-System, dessen Transaktion zuerst ausgeführt wurde, erfährt nicht, dass die von ihm gewünschte Aktualisierung nicht im ePA-Datenraum persistiert wurde. Aus diesem Grund verlangen einige Operationen des Medication Service, die FHIR-Ressourceninstanzen schreiben, dass immer die *aktuelle* Versionsnummer der zu aktualisierenden Ressourceninstanz übergeben wird.
Wenn nun zwei Transaktionen die gleiche Version einer Ressourceninstanz aktualisieren wollen, wird die als erstes ausgeführte Transaktion erfolgreich sein (da die aktuelle Versionsnummer im Medication Service mit der zu aktualisierenden Versionsnummer aus der Transaktion identisch ist), aber die als zweites ausgeführte Transaktion zurückgewiesen, da sich die Versionsnummer im Medication Service in der Zwischenzeit erhöht hat. Letztere Transaktion würde vom Medication Service abgelehnt und mit einem Fehler beantwortet. Das entsprechende Client-System kann dann versuchen, die aktuelle Version der Ressourceninstanz erneut zu ermitteln, um die Transaktion mit der aktualisierten Versionsnummer erneut zu starten.

Daraus ergeben sich die folgenden Anforderungen:

<requirement actor="Medication Service" title="Transaktionale Verarbeitung nach dem ACID-Prinzip im FHIR Data Service" conformance="SHALL">
    Der FHIR Data Service MUSS die transaktional ("transaction") gekennzeichneten Bereiche nach dem ACID-Prinzip ausführen.
</requirement>

<requirement actor="Medication Service" title="Serielle Ausführung transaktionaler Bereiche im FHIR Data Service" conformance="SHALL">
    Der FHIR Data Service MUSS transaktional ("transaction") gekennzeichnete Bereiche "serialisiert" ausführen, d.h. das Ergebnis muss einer isolierten sequentiellen Ausführung beider Operationen entsprechen.
</requirement>

<requirement actor="Medication Service" title="Versionsprüfung bei Schreiboperationen im FHIR Data Service" conformance="SHALL">
    Der FHIR Data Service MUSS Schreiboperationen ablehnen, wenn die Versionsnummer der zu aktualisierenden Ressourceninstanz von der Versionsnummer abweicht, mit der die Ressourceninstanz im Operationsaufruf adressiert wird.
</requirement>


-->
