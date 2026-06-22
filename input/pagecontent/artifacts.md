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


### Common

#### Ressourcenprofile

{% capture common-profiles %}
StructureDefinition/ti-organization,
StructureDefinition/ti-patient,
StructureDefinition/ti-practitioner,
StructureDefinition/ti-practitioner-role
{% endcapture %}
{% include artifacts-table-generator.html render=common-profiles %}
<div><figcaption><strong>Tabelle:</strong> Common Ressourcenprofile</figcaption></div>

#### Extensions

{% capture common-extensions %}
StructureDefinition/ncpeh-country-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=common-extensions %}
<div><figcaption><strong>Tabelle:</strong> Common Extensions</figcaption></div>

#### Datentypen

{% capture common-datatypes %}
StructureDefinition/tiflow-access-code,
StructureDefinition/tiflow-secret
{% endcapture %}
{% include artifacts-table-generator.html render=common-datatypes %}
<div><figcaption><strong>Tabelle:</strong> Common Datentypen</figcaption></div>


### Medikationsprozess (dgMP)

#### Ressourcenprofile

{% capture dgmp-profiles %}
StructureDefinition/ti-medication-dgmp,
StructureDefinition/ti-medication-dispense-dgmp,
StructureDefinition/ti-medication-request-dgmp,
{% endcapture %}
{% include artifacts-table-generator.html render=dgmp-profiles %}
<div><figcaption><strong>Tabelle:</strong> Medikationsprozess Ressourcenprofile</figcaption></div>

#### Extensions

{% capture dgmp-extensions %}
StructureDefinition/drug-category-extension,
StructureDefinition/epa-medication-type-extension,
StructureDefinition/indicator-bvg-extension,
StructureDefinition/indicator-ser-extension,
StructureDefinition/medication-formulation-packaging-extension,
StructureDefinition/medication-ingredient-amount-extension,
StructureDefinition/teratogenic-extension,
StructureDefinition/rx-prescription-process-identifier-extension,
StructureDefinition/prescriber-id-extension,
StructureDefinition/patient-id-extension,
StructureDefinition/narcotics-extension,
StructureDefinition/multiple-prescription-extension,
StructureDefinition/medication-total-quantity-formulation-extension,
StructureDefinition/medication-packaging-size-extension,
StructureDefinition/medication-manufacturing-instructions-extension,
StructureDefinition/medication-is-vaccine-extension,
StructureDefinition/medication-ingredient-darreichungsform-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=dgmp-extensions %}
<div><figcaption><strong>Tabelle:</strong> Medikationsprozess Extensions</figcaption></div>

#### Datentypen

{% capture dgmp-datatypes %}
StructureDefinition/e-prescription-id,
StructureDefinition/medication-plan-identifier,
StructureDefinition/epa-medication-unique-identifier,
StructureDefinition/rx-prescription-process-identifier,
StructureDefinition/rx-originator-process-identifier,
StructureDefinition/rx-originator-process-identifier,
{% endcapture %}
{% include artifacts-table-generator.html render=dgmp-datatypes %}
<div><figcaption><strong>Tabelle:</strong> Medikationsprozess Datentypen</figcaption></div>


### Verhalten

Dieses Capability Statement Profil dient als TI-weit gültige Referenz für die Definition der RESTful-FHIR-Schnittstellen.

#### Capability Statement Profil

{% include artifacts-table-generator.html render="StructureDefinition/ti-capability-statement" %}
<div><figcaption><strong>Tabelle:</strong> Capability Statement</figcaption></div>


#### Operation Definition Profil

{% include artifacts-table-generator.html render="StructureDefinition/ti-operationdefinition" %}
<div><figcaption><strong>Tabelle:</strong> Operation Definition</figcaption></div>


#### Capability Statement Extensions

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


### Beispielinstanzen

{% include example-list-generator.html %}
