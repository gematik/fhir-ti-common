

### Grundlegende Akteure

{% capture mainactors %}
ActorDefinition/TIClient,
ActorDefinition/TIService,
{% endcapture %}
{% include artifacts-table-generator.html render=mainactors %}


### Client Akteure

{% capture clientactors %}
ActorDefinition/TIPrimarySystem,
ActorDefinition/TIFdV,
ActorDefinition/TIPayerSystem,
ActorDefinition/TIDiGA,
{% endcapture %}
{% include artifacts-table-generator.html render=clientactors %}


### Primärsystem Akteure

{% capture clientactors %}
ActorDefinition/TIPVS,
ActorDefinition/TIZPVS,
ActorDefinition/TIKIS,
ActorDefinition/TIAVS,
ActorDefinition/TIRIS,
ActorDefinition/TILIS,
ActorDefinition/TIHVS,
ActorDefinition/TIPIS,
{% endcapture %}
{% include artifacts-table-generator.html render=clientactors %}