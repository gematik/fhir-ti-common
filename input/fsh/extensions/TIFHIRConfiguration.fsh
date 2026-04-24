Extension: TIFHIRConfiguration
Id: ti-fhir-configuration
Title: "TI FHIR Configuration"
Description: "Diese Extension deklariert eine konkrete Konfigurationsausprägung eines FHIR-Data Service in der TI auf CapabilityStatement-Ebene. Die Konfiguration wird als Code transportiert. Die Bedeutung und Konstellation einer FHIR-Konfiguration ist aus externen Quellen der Releaseplanung zu entnehmen."
Context: CapabilityStatement
* insert Meta

// preserve the version of this resource
* ^version = "1.0.0"
* ^date = "2026-06-01"
* ^status = #active

* . ^short = "FHIR-Konfigurationskennzeichen für den FHIR-Data Service"
* . ^definition = "Beschreibt eine konkrete FD-Konfiguration als Code im Kontext eines CapabilityStatements."
* . ^comment = "Die Codebedeutung wird über externe gematik-Releaseartefakte gepflegt."

* value[x] only code
* valueCode 1..1
  * ^short = "FDS-Konfigurationscode"
  * ^definition = "Code für eine FHIR-Konfiguration aus dem im FDS gepflegten CodeSystem."
  * ^comment = "Hinweis an Spezifikateure: Wenn diese Extension genutzt wird, muss ein ValueSet hinterlegt oder die Quelle der Werte referenziert werden."
