### Ressourcenprofile

{% capture common-profiles %}
StructureDefinition/ti-organization,
StructureDefinition/ti-patient,
StructureDefinition/ti-practitioner,
StructureDefinition/ti-practitioner-role
{% endcapture %}
{% include artifacts-table-generator.html render=common-profiles %}
<div><figcaption><strong>Tabelle:</strong> Common Ressourcenprofile</figcaption></div>

### Extensions

{% capture common-extensions %}
StructureDefinition/ncpeh-country-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=common-extensions %}
<div><figcaption><strong>Tabelle:</strong> Common Extensions</figcaption></div>

### Datentypen

{% capture common-datatypes %}
StructureDefinition/tiflow-access-code,
StructureDefinition/tiflow-secret,
StructureDefinition/ti-birth-name,
StructureDefinition/ti-human-name,
{% endcapture %}
{% include artifacts-table-generator.html render=common-datatypes %}
<div><figcaption><strong>Tabelle:</strong> Common Datentypen</figcaption></div>