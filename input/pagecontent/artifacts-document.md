
### Value Sets

{% capture document-vs %}
ValueSet/ti-mhd-data-category-vs,
{% endcapture %}
{% include artifacts-table-generator.html render=document-vs %}


### Ressourcenprofile

{% capture document-profiles %}
StructureDefinition/ti-mhd-submission-set,
StructureDefinition/ti-mhd-simplified-publish-document-reference,
StructureDefinition/ti-mhd-folder,
StructureDefinition/ti-mhd-document-reference,
{% endcapture %}
{% include artifacts-table-generator.html render=document-profiles %}
