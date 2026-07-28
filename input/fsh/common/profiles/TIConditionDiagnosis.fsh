Profile: TIConditionDiagnosis
Parent: ConditionEuCore
Id: ti-condition-diagnosis
Title: "TI Condition Diagnosis"
Description: "Dieses Profil bildet eine Diagnose ab."
* . ^definition = "Dieses Profil bildet eine Diagnose ab."
* insert Meta-With-Versioning
* code 1.. MS
  * ^definition = "In diesem Element werden Angaben zur Diagnose in Form einer Codierung gemacht. Diese werden als codierte Information und/oder als Freitext angegeben."
  * coding MS
    * ^definition = "Hier wird ein Code aus einem geeigneten Codesystem angegeben."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "system"
    * ^slicing.rules = #open
  * coding contains
      ICD-10-GM 0..1 and
      alphaId 0..1 and
      snomed 0..1 and
      orphanet 0..1
  * coding[ICD-10-GM] only CodingICD10GM
  * insert Coding(coding[ICD-10-GM])
  * coding[ICD-10-GM] MS
    * ^definition = "In diesem Element wird der Code für die Diagnose als ICD-10-Code angegeben, inklusive Anzeigename (Display Name) sowie Name und Version des Codesystems.\n
Der ICD-Code ist in Deutschland das abrechnungsrelevante Codesystem im ambulanten und stationären Bereich. So wird z. B. bei der Abrechnung nach § 301 und § 295 SGB V die Codierung von Diagnosen mittels ICD-10 GM gesetzlich vorgeschrieben. Im ICD-System ist im Gegensatz zu anderen Codesystem eine detaillierte Spezifikation von Diagnosen ohne Umwege möglich: die Einordnung der diagnostizierten Erkrankung als Ätiologie oder Manifestation, die Diagnosesicherheit und die Beschreibung des Schweregrades wie auch der Seitenlokalisation."
    * code 1..1 MS
      * ^definition = "In diesem Element wird der Code für die Diagnose angegeben, allerdings ohne ein Mehrfachcodierungskennzeichen (z. B. '*', '†' oder '!'). Diese sind in anderen entsprechenden Elementen abzubilden."   
    * extension[Seitenlokalisation] MS
      * ^definition = "Zur Spezifizierung von Diagnoseangaben (ICD-10) dürfen die Zusatzkennzeichen für die Seitigkeit (R, L oder B) angegeben werden, d. h. die Angabe ist freiwillig; dies gilt für die stationäre und die ambulante Versorgung."
    * insert Coding(extension[Seitenlokalisation].valueCoding)
    * extension[Diagnosesicherheit] MS
      * ^definition = "Die Diagnosesicherheit, d.h. wie sicher die Diagnose im Einzelfall zu werten ist, wird durch ein Zusatzkennzeichen zum ICD-Code angegeben. Für Abrechnungszwecke in der ambulanten Versorgung muss obligatorisch ein Zusatzkennzeichen für die Diagnosesicherheit (A, G, V oder Z) angegeben werden, d. h. die Angabe ist obligatorisch. In der stationären Versorgung sind diese Zusatzkennzeichen für die Angabe der Diagnosesicherheit für Abrechnungszwecke dagegen nicht zulässig."
    * insert Coding(extension[Diagnosesicherheit].valueCoding)
    * extension[Mehrfachcodierungs-Kennzeichen] MS
      * ^definition = "In diesem Element wird ein Codierungskennzeichen (z. B. '*', '†' oder '!') zum Diagnosecode hinzugefügt."
    * insert Coding(extension[Mehrfachcodierungs-Kennzeichen].valueCoding)
  * coding[alphaId] only CodingAlphaID
  * insert Coding(coding[alphaId])
  * coding[alphaId] MS
    * ^definition = "In diesem Element wird der Code für die Diagnose als Alpha-ID-Code angegeben, inklusive Anzeigename (Display Name) sowie Name und Version des Codesystems.\n
Basierend auf dem alphabetischen Verzeichnis der deutschen Modifikation der International Classification of Diseases (ICD-GM) wird jeder Erkrankung eine fortlaufende Alpha-ID zugewiesen. Im Gegensatz zum ICD-Code erlaubt die Alpha-ID eine ein-eindeutige, individuelle und nicht-klassifizierende Identifikation einer Erkrankung. Die Alpha-ID ist kumulativ und stabil, während ICD-Codes Überarbeitungen erfahren."
    * ^comment = "Bei Alpha-ID-Codes, die zu postkoordinierten ICD-10-Codes gemappt werden, sollten diese nur einmal bei der Primärdiagnose und nicht mehr bei den Sekundärdiagnosen angeben werden (Stichpunkt: related Conditions in FHIR). In Fällen bei denen eine abweichende Diagnosesicherheit zwischen Primär- und Sekundärdiagnose vorhanden ist muss sichergestellt werden, dass die Diagnosesicherheit der Primärdiagnose zu dem assozierten Alpha-ID-Code passt. Siehe der Implementierungsguide (IG) der deutschen Basisprofile von HL7"
    * version 1..1 
  * coding[snomed] from DiagnosisSNOMEDCTVS (required)
  * insert Coding(coding[snomed])
  * coding[snomed] MS
    * ^definition = "In diesem Element wird der Code für die Diagnose als SNOMED CT®-Code angegeben, inklusive Anzeigename (Display Name) sowie Name und Version des Codesystems.\n
SNOMED CT® bietet eine umfassende Codiermöglichkeit zu medizinischen Diagnosen, Befunden und Ereignissen. Dazu gehören beispielsweise alle Children der \"(Finding)\"-Konzepte, darunter auch die \"(Disorder)\"-Konzepte."
    * system = $cs-sct
    * version 1..1
  * insert Coding(coding[orphanet])  
  * coding[orphanet] MS
    * ^definition = "In diesem Element wird der Code für die Diagnose als ORPHANET-Code angegeben, inklusive Anzeigename (Display Name) sowie Name und Version des Codesystems.\n
ORPHANET ist eine Initiative der Europäischen Union mit französischen Wurzeln zur Erfassung von seltenen Erkrankungen. Relevant für die Eingrenzung von seltenen Krankheiten ist ihre Definition anhand der Prävalenz. Die ORPHANET-Datenbank umfasst mehrere tausend seltene Krankheiten. Es gibt Mappings zwischen der ORPHAnumber und anderen Diagnosecodiersystemen."
    * system = $cs-orphanet
  * text MS
    * ^definition = "Hier wird eine Diagnose als Freitext eingetragen."
* insert Subject(subject)
