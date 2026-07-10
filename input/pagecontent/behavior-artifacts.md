Dieses Capability Statement Profil dient als TI-weit gültige Referenz für die Definition der RESTful-FHIR-Schnittstellen.

### Capability Statement Profil

{% include artifacts-table-generator.html render="StructureDefinition/ti-capability-statement" %}
<div><figcaption><strong>Tabelle:</strong> Capability Statement</figcaption></div>


### Operation Definition Profil

{% include artifacts-table-generator.html render="StructureDefinition/ti-operationdefinition" %}
<div><figcaption><strong>Tabelle:</strong> Operation Definition</figcaption></div>


### Code Systems

{% capture technical-cs %}
CodeSystem/ti-environment-codes,
CodeSystem/ti-fhir-configuration-cs
{% endcapture %}
{% include artifacts-table-generator.html render=technical-cs %}
<div><figcaption><strong>Tabelle:</strong> Code Systems</figcaption></div>


### Value Sets

{% capture technical-vs %}
ValueSet/ti-environment-vs,
ValueSet/ti-fhir-configuration-vs
{% endcapture %}
{% include artifacts-table-generator.html render=technical-vs %}
<div><figcaption><strong>Tabelle:</strong> Value Sets</figcaption></div>


### Capability Statement Extensions

{% capture tihttpbasic %}
StructureDefinition/extension-base-url,
StructureDefinition/extension-http-header,
StructureDefinition/extension-http-response-info,
StructureDefinition/extension-http-method,
StructureDefinition/ti-environment,
StructureDefinition/ti-feature,
StructureDefinition/ti-fhir-configuration
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
ValueSet/operation-outcome-details-vs,
ValueSet/tiflow-order-task-status-vs
{% endcapture %}
{% include artifacts-table-generator.html render=operationoutcomevs %}
<div><figcaption><strong>Tabelle:</strong> Operation Outcome - Value Sets</figcaption></div>
