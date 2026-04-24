Profile: TIAuditEventRest
Parent: AuditEvent
Id: audit-event-rest
Title: "TI Audit Event Rest"
Description: "Das AuditEvent-Profil für die Protokollierung des Zugriffs auf einen FHIR Data Service der Telematikinfrastruktur (TI)"
* insert Meta
// preserve the version of this resource
* ^version = "1.0.0"
* ^date = "2026-06-01"
* ^status = #active

* type MS
* type = AuditEventID#rest (exactly)
  * system 1..1
  * code 1..1

* subtype MS
* action MS
* outcome MS

* agent MS
  * type 1..1 MS
  * who.identifier 1..1 MS
  * who.identifier only IdentifierTelematikId or IdentifierKvid10
  * name MS

* source MS
  * site 1..1 MS
  * observer only Reference(Device)
  * observer.reference 1..1

