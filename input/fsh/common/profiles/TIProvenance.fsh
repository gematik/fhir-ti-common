Profile: TIProvenance
Parent: Provenance
Id: ti-provenance
Title: "TI Provenance"
Description: "Hier können Details dazu angegeben werden, wie eine Information entstanden ist, z.B. die Quelle der Information."
* . ^definition = "Hier können Details dazu angegeben werden, wie eine Information entstanden ist, z.B. die Quelle der Information."
* insert Meta-With-Versioning
* target
  * ^definition = "Hier wird die Information bzw. Informationsgruppe referenziert, auf die sich die Herkunftsinformation bezieht."
  * insert ReferenceMS
* occurred[x] MS
  * ^definition = "Hier wird der Zeitpunkt oder der Zeitraum angegeben, an dem die jeweilige Aktivität durchgeführt wurde."
* recorded MS
* activity MS
  * ^definition = "Typisierung der Aktivität."
* insert Coding(activity.coding)
* agent MS
  * ^definition = "Hier wird eine Person/Entität angegeben, die an der Integration der Dokumentation in das Zielsystem beteiligt ist.\n
Dies kann z.B. das explizite Hinzufügen der im Element target referenzierte Information sein (im Sinne eines Audittrails) oder auch eine inhaltliche Überprüfung oder Verifikation der Information."
  * type MS
  * who MS
    * ^definition = "Hier wird die datenintegrierende Person referenziert."
  * who only Reference(TIOrganization or
  TIRelatedPerson or
  TIPatient or
  TIPractitioner or
  TIPractitioner or
  Device)
    * insert ReferenceMS
  * onBehalfOf MS
    * insert ReferenceMS
  * onBehalfOf only Reference(TIPractitioner or TIPractitionerRole or TIRelatedPerson or TIPatient or Device or TIOrganization)
* insert Coding(agent.type.coding)
* entity
  * role MS
  * what MS
    * insert ReferenceMS
