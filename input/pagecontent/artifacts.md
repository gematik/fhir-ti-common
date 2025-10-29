Auf dieser Seite befindet sich eine Liste der FHIR-Artefakte, welche im Rahmen dieses Implementation Guide definiert werden.

{% comment %}
### Terminologien

#### Value Sets

Die folgenden Value Sets sind für die FHIR-Data-Service-Funktionalitäten festgelegt.

{% include artifacts-table-generator.html resourceType="ValueSet" %}


#### Code Systems

{% include artifacts-table-generator.html resourceType="CodeSystem" %}

{% endcomment %}



### Ressourcenprofile

{% capture profiles %}
StructureDefinition/ti-organization,
StructureDefinition/ti-patient,
StructureDefinition/ti-practitioner,
StructureDefinition/ti-practitioner-role,
{% endcapture %}
{% include artifacts-table-generator.html render=profiles %}

### Datentypen

{% capture datatypes %}
StructureDefinition/e-prescription-id,
StructureDefinition/medication-plan-identifier
{% endcapture %}
{% include artifacts-table-generator.html render=datatypes %}


### Verhalten

Dieses Capability Statement Profil dient als TI-weit gültige Referenz für die Definition der RESTful-FHIR-Schnittstellen.

#### Common Capability Statement Profil

{% include artifacts-table-generator.html render="StructureDefinition/ti-capability-statement" %}

#### Common Operation Definition Profil

{% include artifacts-table-generator.html render="StructureDefinition/ti-operationdefinition" %}

#### Common Capability Statements Extensions

{% capture tihttpbasic %}
StructureDefinition/extension-base-url,
StructureDefinition/extension-http-header,
StructureDefinition/extension-http-response-info,
StructureDefinition/extension-http-method
{% endcapture %}
{% include artifacts-table-generator.html render=tihttpbasic %}

### Operation Outcome

#### Ressourcenprofile

{% capture operationoutcome %}
StructureDefinition/operation-outcome
{% endcapture %}
{% include artifacts-table-generator.html render=operationoutcome %}

#### Code System

{% capture operationoutcome %}
CodeSystem/operation-outcome-details-codes
{% endcapture %}
{% include artifacts-table-generator.html render=operationoutcome %}

#### Value Set

{% capture operationoutcomevs %}
ValueSet/operation-outcome-details-vs
{% endcapture %}
{% include artifacts-table-generator.html render=operationoutcomevs %}

### Beispielinstanzen

{% include example-list-generator.html %}
