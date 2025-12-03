Alias: $version = 1.2.0

RuleSet: MetaDate(field)
* {field} = "2025-12-15"


RuleSet: MetaStatus(field)
* {field} = #active


RuleSet: MetaVersion(field)
* {field} = $version


RuleSet: Gematik(field)
* {field} = "gematik GmbH"


RuleSet: MetaContact
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.gematik.de"


RuleSet: Meta
* insert MetaVersion(^version)
* insert MetaStatus(^status)
* insert MetaDate(^date)
* insert Gematik(^publisher)
* insert Gematik(^copyright)
* ^experimental = false


RuleSet: Meta-VS
* insert Meta
* insert MetaContact
* ^experimental = false
* ^immutable = false


RuleSet: Meta-CS
* insert Meta
* insert MetaContact
* ^caseSensitive = true
* ^content = #complete


RuleSet: Meta-Instance
* insert MetaVersion
* insert MetaStatus(status)
* insert Gematik(publisher)
* insert MetaDate(date)


RuleSet: Meta-With-Versioning
* insert Meta
* meta MS
  * versionId MS
  * lastUpdated MS