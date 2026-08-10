
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
StructureDefinition/ti-document-source-extension,
{% endcapture %}
{% include artifacts-table-generator.html render=document-extensions %}


### Value Sets

{% capture document-vs %}
ValueSet/ti-document-source-vs,
{% endcapture %}
{% include artifacts-table-generator.html render=document-vs %}

### Code System

{% capture document-cs %}
CodeSystem/ti-document-source-cs,
{% endcapture %}
{% include artifacts-table-generator.html render=document-cs %}

