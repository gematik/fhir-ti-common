
// OperationDefinition

Invariant: op-affectsState-vs-method
Description: "Wenn affectsState = true, darf keine http-method Extension GET enthalten."
Severity: #error
Expression: "affectsState != true or extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-method').all(value != 'GET')"


// Period start and end
Invariant: -limitationDateStart
Description: "Limitation of the date format to 10 characters YYYY-MM-DD"
* severity = #error
* expression = "start.toString().length()=10"


Invariant: -limitationDateEnd
Description: "Limitation of the date format to 10 characters YYYY-MM-DD"
* severity = #error
* expression = "end.exists().not() or end.toString().length()=10"


// CapabilityStatement

Invariant: capstmt-resp-info-context
Description: "Die Subextension interaction der HTTP-Antwortinformationen darf nur auf CapabilityStatement.rest.resource verwendet werden."
Severity: #error
Expression: "rest.resource.interaction.extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-response-info').extension.where(url = 'interaction').empty() and rest.operation.extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-response-info').extension.where(url = 'interaction').empty() and rest.resource.operation.extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-response-info').extension.where(url = 'interaction').empty()"


Invariant: capstmt-header-context
Description: "Die Subextension interaction des HTTP-Headers darf nur bei Verwendung auf CapabilityStatement.rest.resource angegeben werden."
Severity: #error
Expression: "rest.resource.interaction.extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-header').extension.where(url = 'interaction').empty() and rest.operation.extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-header').extension.where(url = 'interaction').empty() and rest.resource.operation.extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-header').extension.where(url = 'interaction').empty()"


Invariant: capstmt-resp-info-resource
Description: "HTTP-Antwortinformationen auf CapabilityStatement.rest.resource müssen die Subextension interaction enthalten."
Severity: #error
Expression: "rest.resource.extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-response-info').all(extension.where(url = 'interaction').exists())"


Invariant: capstmt-header-resource
Description: "HTTP-Header auf CapabilityStatement.rest.resource müssen die Subextension interaction enthalten."
Severity: #error
Expression: "rest.resource.extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/extension-http-header').all(extension.where(url = 'interaction').exists())"
