
### Ressourcenprofile

{% capture document-profiles %}
StructureDefinition/ti-mhd-submission-set,
StructureDefinition/ti-mhd-simplified-publish-document-reference,
StructureDefinition/ti-mhd-folder,
StructureDefinition/ti-mhd-document-reference,
{% endcapture %}
{% include artifacts-table-generator.html render=document-profiles %}


### Extensions

{% capture document-extensions %}
StructureDefinition/ti-document-location-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=document-extensions %}


### Value Sets

{% capture document-vs %}
ValueSet/ti-document-location-vs,
{% endcapture %}
{% include artifacts-table-generator.html render=document-vs %}

### Code System

{% capture document-cs %}
CodeSystem/ti-document-location-cs,
{% endcapture %}
{% include artifacts-table-generator.html render=document-cs %}

