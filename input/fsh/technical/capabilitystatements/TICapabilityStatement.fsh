Profile: TICapabilityStatement
Parent: CapabilityStatement
Id: ti-capability-statement
Title: "Capability Statement Profil für TI FHIR Data Service"
Description: "Dieses Profil beschreibt die Fähigkeiten eines FHIR Data Service innerhalb der Telematikinfrastruktur (TI) spezifiziert ist."
* insert Meta

// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* contact 1..1
* version 1..1
* version ^short = "Die Version der API"

* format ^short = "Die von der API unterstützten Medientypen, z.B. application/json oder application/fhir+json"

* extension contains 
  BaseUrl named baseUrl 0..1 and
  HTTPHeader named header 0.. and
  HttpResponseInfo named responseInfo 0.. and
  TIEnvironment named environment 0..1 and
  TIFHIRConfiguration named fhirConfiguration 0..1 and
  TIFeature named feature 0..*

* rest.resource.interaction.extension contains
  HTTPHeader named header 0.. and
  HttpResponseInfo named responseInfo 0.. and
  $cs-expectation named expectation 0..1

* rest.resource.operation.extension contains
  HTTPHeader named header 0.. and
  HttpResponseInfo named responseInfo 0.. and
  HttpMethod named method 0..2 and
  $cs-expectation named expectation 0..1

* rest.operation.extension contains
  HTTPHeader named header 0.. and
  HttpResponseInfo named responseInfo 0.. and
  HttpMethod named method 0..2 and
  $cs-expectation named expectation 0..1
