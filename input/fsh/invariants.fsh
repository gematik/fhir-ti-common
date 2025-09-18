// Patient

Invariant: pat-de-1
Description: "Die amtliche Differenzierung der Geschlechtsangabe 'other' darf nur gefüllt sein, wenn das Geschlecht 'other' angegeben ist"
* severity = #error
* expression = "gender.exists() and gender='other' implies gender.extension('http://fhir.de/StructureDefinition/gender-amtlich-de').exists()"


// OperationDefinition

Invariant: op-affectsState-vs-method
Description: "Wenn affectsState = true, darf keine http-method Extension GET enthalten."
Severity: #error
Expression: "affectsState != true or extension.where(url = 'https://gematik.de/fhir/ti/StructureDefinition/http-method').all(value != 'GET')"