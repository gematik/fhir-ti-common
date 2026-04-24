Extension: TIFeature
Id: ti-feature
Title: "TI Feature"
Description: """
Deklariert ein einzelnes Feature eines Fachdienst-Deployments. 
Das Teilfeld `definition` verweist per Canonical auf den Feature-Bezeichner 
(analog zum HL7 Application Feature Framework, `hl7.fhir.uv.application-feature`);
`value` beschreibt den aktuellen Zustand des Features am betrachteten Endpoint.

Kompatibilitätshinweis: Diese Extension spiegelt bewusst die Sub-Extension-Namen
`definition` und `value` des HL7-Frameworks wider, um eine spätere Migration oder
Profilierung ohne Breaking Change zu ermöglichen.
"""
Context: CapabilityStatement, CapabilityStatement.rest, CapabilityStatement.rest.resource
* insert Meta

* . ^short = "Deklaration eines aktivierbaren CapabilityStatement-Features"
* . ^definition = "Compound-Extension mit den Teilslices coding und value zur Beschreibung eines einzelnen Features inklusive Aktivierungszustand."
* . ^comment = "Diese Extension kann auf CapabilityStatement-Ebene mehrfach wiederholt werden (0..*), um die komplette Feature-Menge eines konkreten Systems zu beschreiben."

* extension
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #closed
  * ^short = "Container für die Child-Slices coding und value"
  * ^definition = "Enthält die verpflichtenden Child-Slices für Feature-Code und Feature-Status."
  * ^comment = "Nur die Slices coding und value sind zulässig."

* extension contains
    definition 1..1 MS and
    value 1..1 MS

* extension[definition]
  * ^short = "Kanonischer Feature-Bezeichner"
  * ^definition = """
    Canonical-URL, die das Feature eindeutig identifiziert.
    Für gematik-eigene Features: `https://gematik.de/fhir/erp/FeatureDefinition/<Name>`.
    Die zulässigen Werte sind im ValueSet GEM_ERP_VS_CapabilityStatement_Feature
    als Konzept-URIs definiert.
    """
  * ^comment = "Entspricht `extension[definition].valueCanonical` im HL7 Application Feature Framework."
  * value[x] 1..1
  * value[x] only canonical

* extension[value]
  * ^short = "Aktivierungszustand des Features"
  * ^definition = "Beschreibt, ob das in definition referenzierte Feature in dieser Umgebung aktiv ist."
  * ^comment = "true = aktiv; false = deklariert, aber derzeit nicht aktiv."
  * value[x] only boolean
  * valueBoolean 1..1
    * ^short = "Feature aktiv (true/false)"
    * ^definition = "Boolean-Wert zur Laufzeitaktivierung des referenzierten Features."
    * ^comment = "Soll den effektiven Betriebszustand der referenzierten Funktionalität wiedergeben."
