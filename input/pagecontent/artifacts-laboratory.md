{% comment %}
### Code Systems

{% capture laboratory-cs %}
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-cs %}
<div><figcaption><strong>Tabelle:</strong> LaborLaborprozess Code Systems</figcaption></div>
{% endcomment %}

{% comment %}
### Value Sets

{% capture laboratory-vs %}
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-vs %}
<div><figcaption><strong>Tabelle:</strong> LaborLaborprozess Value Sets</figcaption></div>
{% endcomment %}

### Ressourcenprofile

{% capture laboratory-profiles %}
StructureDefinition/ti-diagnostic-report-laboratory,
StructureDefinition/ti-device-laboratory-specimen-subject,
StructureDefinition/ti-device-laboratory-analyzer,
StructureDefinition/ti-device-definition-laboratory-analyzer,
StructureDefinition/ti-device-definition-specimen-subject,
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-profiles %}
<div><figcaption><strong>Tabelle:</strong> LaborLaborprozess Ressourcenprofile</figcaption></div>

{% comment %}
### Extensions

{% capture laboratory-extensions %}
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-extensions %}
<div><figcaption><strong>Tabelle:</strong> LaborLaborprozess Extensions</figcaption></div>
{% endcomment %}

{% comment %}
### Datentypen

{% capture laboratory-datatypes %}
{% endcapture %}
{% include artifacts-table-generator.html render=laboratory-datatypes %}
<div><figcaption><strong>Tabelle:</strong> LaborLaborprozess Datentypen</figcaption></div>
{% endcomment %}