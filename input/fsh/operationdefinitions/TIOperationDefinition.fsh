Profile: TIOperationDefinition
Parent: OperationDefinition
Id: ti-operationdefinition
Title: "OperationDefinition Profil für TI FHIR Data Service"
Description: """
Dieses Profil beschreibt FHIR Operationen des FHIR Data Service innerhalb der Telematikinfrastruktur (TI).
Es stellt sicher, dass zustandsverändernde Operationen ('affectsState = true') nicht über HTTP GET ausgeführt werden dürfen.
"""
* insert Meta
// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* obeys op-affectsState-vs-method
* extension contains HttpMethod named method 0..2 MS
* kind MS
* code MS
* affectsState MS
* system MS
* type MS
* instance MS
* inputProfile MS
* outputProfile MS
