Extension: BaseUrl
Id: extension-base-url
Title: "Base URL der FHIR-API"
Description: "Gibt die Basis-URL des FHIR-Servers als Zeichenkette an. Beispiel: http://epa4all/epa/medication/api/v1/fhir"
* insert Meta

// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

// Wo darf die Extension verwendet werden?
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement"
* ^context[+].type = #element
* ^context[=].expression = "Endpoint"
* ^context[+].type = #element
* ^context[=].expression = "ImplementationGuide"

// Nur ein Wert vom Typ string erlaubt
* value[x] only string
* valueString ^short = "Die Base-URL, z.B. http://epa4all/epa/medication/api/v1/fhir"


Extension: HTTPHeader
Id: extension-http-header
Title: "HTTP Header"
Description: "Ermöglicht die Angabe global oder spezifisch geforderter HTTP Header in einem CapabilityStatement oder einer Resource-Interaktion."
* insert Meta

// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement"
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.resource.interaction"
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.operation"
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.resource.operation"

* extension contains
  name 1..1 and
  type 1..1 and
  description 0..1 and
  pattern 0..1 and
  format 0..1 and
  required 1..1

* extension[name].value[x] only string
* extension[name] ^short = "Name des HTTP-Headers, z.B. X-Request-ID"

* extension[type].value[x] only string
* extension[type] ^short = "Datentyp des Header-Werts, z.B. string, boolean"

* extension[description].value[x] only string
* extension[description] ^short = "Beschreibung und Zweck des Headers"

* extension[pattern].value[x] only string
* extension[pattern] ^short = "Erwartetes Format als regulärer Ausdruck (Regex)"

* extension[format].value[x] only string
* extension[format] ^short = "Formatbeschreibung für Anzeige oder Validierung, z.B. uuid"

* extension[required].value[x] only boolean
* extension[required] ^short = "Gibt an, ob der Header verpflichtend ist (true/false)"



Extension: HttpResponseInfo
Id: extension-http-response-info
Title: "HTTP-Antwortinformationen"
Description: "Definiert Informationen zu HTTP-Antworten für FHIR-Interaktionen, inklusive Statuscode, Beschreibung, Beispiel und Response-Schema."
* insert Meta
// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement"
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.resource.interaction"
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.operation"
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.resource.operation"

* extension contains
    statusCode 1..1 and
    description 1..1 and
    example 0..1 and
    format 0..1 and
    retryable 0..1 and
    responseType 0..1 and
    errorCode 0..1

* extension[statusCode].value[x] only string
* extension[statusCode] ^short = "Der HTTP-Statuscode (z.B. 200, 201, 404, 500)"

* extension[description].value[x] only string
* extension[description] ^short = "Kurze Beschreibung des Antwortfalls"

* extension[example].value[x] only string
* extension[example] ^short = "Optionales Beispiel für eine Antwortmeldung"

* extension[format].value[x] only string
* extension[format] ^short = "Format oder Struktur der Antwort, z.B. RFC7807"

* extension[retryable].value[x] only boolean
* extension[retryable] ^short = "Gibt an, ob die Antwort auf einen temporären Fehler hinweist und ein erneuter Versuch möglich ist"

* extension[responseType].value[x] only string
* extension[responseType] ^short = "Der erwartete Response-Typ oder Medientyp, z.B. OperationOutcome, application/json"

* extension[errorCode].value[x] only string
* extension[errorCode] ^short = "Ein technischer oder semantischer Fehlercode, z.B. internalError"


Extension: HttpMethod
Id: extension-http-method
Title: "HTTP Method for FHIR Operation"
Description: "Gibt an, ob eine FHIR Operation mit GET, POST oder beidem verwendet werden darf."
* insert Meta

// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "OperationDefinition"
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.operation"
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement.rest.resource.operation"
* valueCode 1..1
* valueCode from HTTPVerb (required)
