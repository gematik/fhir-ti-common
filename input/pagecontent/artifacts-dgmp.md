### Code Systems

{% capture dgmp-cs %}
CodeSystem/context-code,
{% endcapture %}
{% include artifacts-table-generator.html render=dgmp-cs %}
<div><figcaption><strong>Tabelle:</strong> Medikationsprozess Code Systems</figcaption></div>


### Value Sets

{% capture dgmp-vs %}
ValueSet/context-code,
{% endcapture %}
{% include artifacts-table-generator.html render=dgmp-vs %}
<div><figcaption><strong>Tabelle:</strong> Medikationsprozess Value Sets</figcaption></div>


### Ressourcenprofile

{% capture dgmp-profiles %}
StructureDefinition/ti-medication-dgmp,
StructureDefinition/ti-medication-dispense-dgmp,
StructureDefinition/ti-medication-request-dgmp,
StructureDefinition/ti-medication-statement-dgmp,
{% endcapture %}
{% include artifacts-table-generator.html render=dgmp-profiles %}
<div><figcaption><strong>Tabelle:</strong> Medikationsprozess Ressourcenprofile</figcaption></div>

### Extensions

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
StructureDefinition/context-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=dgmp-extensions %}
<div><figcaption><strong>Tabelle:</strong> Medikationsprozess Extensions</figcaption></div>

### Datentypen

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