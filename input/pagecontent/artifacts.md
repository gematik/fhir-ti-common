Auf dieser Seite befindet sich eine Liste der FHIR-Artefakte, welche im Rahmen dieses Implementation Guide definiert werden.

{% comment %}
### Terminologien

#### Value Sets

Die folgenden Value Sets sind für die FHIR-Data-Service-Funktionalitäten festgelegt.

{% include artifacts-table-generator.html resourceType="ValueSet" %}
<div><figcaption><strong>Tabelle:</strong> Value Sets</figcaption></div>


#### Code Systems

{% include artifacts-table-generator.html resourceType="CodeSystem" %}
<div><figcaption><strong>Tabelle:</strong> Code Systems</figcaption></div>

{% endcomment %}



### Ressourcenprofile

{% capture profiles %}
StructureDefinition/ti-organization,
StructureDefinition/ti-patient,
StructureDefinition/ti-practitioner,
StructureDefinition/ti-practitioner-role,
{% endcapture %}
{% include artifacts-table-generator.html render=profiles %}
<div><figcaption><strong>Tabelle:</strong> Ressourcenprofile</figcaption></div>

### Extensions

{% capture extensions %}
StructureDefinition/ncpeh-country-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=extensions %}
<div><figcaption><strong>Tabelle:</strong> Extensions</figcaption></div>

### Datentypen

{% capture datatypes %}
StructureDefinition/e-prescription-id,
StructureDefinition/medication-plan-identifier
{% endcapture %}
{% include artifacts-table-generator.html render=datatypes %}
<div><figcaption><strong>Tabelle:</strong> Datentypen</figcaption></div>


### Verhalten

Dieses Capability Statement Profil dient als TI-weit gültige Referenz für die Definition der RESTful-FHIR-Schnittstellen.

#### Common Capability Statement Profil

{% include artifacts-table-generator.html render="StructureDefinition/ti-capability-statement" %}
<div><figcaption><strong>Tabelle:</strong> Capability Statement</figcaption></div>


#### Common Operation Definition Profil

{% include artifacts-table-generator.html render="StructureDefinition/ti-operationdefinition" %}
<div><figcaption><strong>Tabelle:</strong> Operation Definition</figcaption></div>


#### Common Capability Statement Extensions

{% capture tihttpbasic %}
StructureDefinition/extension-base-url,
StructureDefinition/extension-http-header,
StructureDefinition/extension-http-response-info,
StructureDefinition/extension-http-method
{% endcapture %}
{% include artifacts-table-generator.html render=tihttpbasic %}
<div><figcaption><strong>Tabelle:</strong> Capability Statement Extensions</figcaption></div>


### Operation Outcome

#### Ressourcenprofile

{% capture operationoutcome %}
StructureDefinition/operation-outcome
{% endcapture %}
{% include artifacts-table-generator.html render=operationoutcome %}
<div><figcaption><strong>Tabelle:</strong> Operation Outcome - Ressourcenprofile</figcaption></div>


#### Code Systems

{% capture operationoutcome %}
CodeSystem/operation-outcome-details-codes
{% endcapture %}
{% include artifacts-table-generator.html render=operationoutcome %}
<div><figcaption><strong>Tabelle:</strong> Operation Outcome - Code Systems</figcaption></div>


#### Value Sets

{% capture operationoutcomevs %}
ValueSet/operation-outcome-details-vs
{% endcapture %}
{% include artifacts-table-generator.html render=operationoutcomevs %}
<div><figcaption><strong>Tabelle:</strong> Operation Outcome - Value Sets</figcaption></div>


### Beispielinstanzen

{% include example-list-generator.html %}
