{% comment %}
### Code Systems

{% capture laboratory-cs %}
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-cs %}
<div><figcaption><strong>Tabelle:</strong> Laborprozess Code Systems</figcaption></div>
{% endcomment %}

{% comment %}
### Value Sets

{% capture laboratory-vs %}
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-vs %}
<div><figcaption><strong>Tabelle:</strong> Laborprozess Value Sets</figcaption></div>
{% endcomment %}

### Ressourcenprofile

{% capture laboratory-profiles %}
StructureDefinition/ti-diagnostic-report-laboratory,
StructureDefinition/ti-device-laboratory-specimen-subject,
StructureDefinition/ti-device-laboratory-analyzer,
StructureDefinition/ti-device-definition-laboratory-analyzer,
StructureDefinition/ti-device-definition-specimen-subject,
StructureDefinition/ti-service-request-laboratory,
StructureDefinition/ti-observation-laboratory-study,
StructureDefinition/ti-observation-laboratory-study-group,
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-profiles %}
<div><figcaption><strong>Tabelle:</strong> Laborprozess Ressourcenprofile</figcaption></div>

### Extensions

{% capture laboratory-extensions %}
StructureDefinition/reason-type-laboratory-extension,
StructureDefinition/alternative-result-laboratory-extension,
StructureDefinition/association-service-laboratory-extension,
StructureDefinition/no-linear-reference-range-laboratory-extension,
StructureDefinition/test-profile-laboratory-extension,
StructureDefinition/zlog-laboratory-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-extensions %}
<div><figcaption><strong>Tabelle:</strong> Laborprozess Extensions</figcaption></div>

{% comment %}
### Datentypen

{% capture laboratory-datatypes %}
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-datatypes %}
<div><figcaption><strong>Tabelle:</strong> Laborprozess Datentypen</figcaption></div>
{% endcomment %}