Extension: MultiplePrescriptionExtension
Id: multiple-prescription-extension
Title: "TI Extension: Mehrfachverordnung"
Description: "Enthält Angaben zu wiederholten Arzneimittelverordnungen, etwa zur Anzahl der Wiederholungen und zu den Zeitabständen."
* insert Meta
* ^url = "https://gematik.de/fhir/epa-medication/StructureDefinition/multiple-prescription-extension"
* ^version = "1.5.0"
* ^date = "2026-12-08"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* extension ^slicing.rules = #closed
* extension contains
    indicator 0..1 MS and
    counter 0..1 MS and
    period 0..1 MS and
    id 0..1
* extension[indicator]
  * value[x] 1.. MS
  * value[x] only boolean
  * valueBoolean 1.. MS
  * valueBoolean ^short = "Kennzeichen für eine Mehrfachverordnung"
  * valueBoolean ^definition = "Gibt an, ob die aktuelle Verordnung Teil einer Mehrfachverordnung ist.\r\n\r\ntrue - Die Verordnung ist Teil einer Mehrfachverordnung.\r\nfalse - Die Verordnung ist kein Teil einer Mehrfachverordnung."

* extension[counter]
  * value[x] 1.. MS
  * value[x] only Ratio
  * valueRatio 1.. MS
  * valueRatio.numerator 1..
  * valueRatio.numerator.value 1..
  * valueRatio.numerator.value ^short = "Laufende Nummer der Teilverordnung"
  * valueRatio.numerator.value ^definition = "Position der Teilverordnung innerhalb der Mehrfachverordnung, beispielsweise \"2\" bei \"2 von 4\"."
  * valueRatio.numerator.comparator ..0
  * valueRatio.numerator.unit ..0
  * valueRatio.numerator.system ..0
  * valueRatio.numerator.code ..0
  * valueRatio.denominator 1..
  * valueRatio.denominator.value 1..
  * valueRatio.denominator.value ^short = "Gesamtzahl der Teilverordnungen"
  * valueRatio.denominator.value ^definition = "Anzahl der Teilverordnungen innerhalb der Mehrfachverordnung, beispielsweise \"4\" bei \"2 von 4\"."
  * valueRatio.denominator.comparator ..0
  * valueRatio.denominator.unit ..0
  * valueRatio.denominator.system ..0
  * valueRatio.denominator.code ..0

* extension[period]
  * ^short = "Zeitraum der Einlösefrist"
  * value[x] 1.. MS
  * value[x] only Period
  * valuePeriod 1.. MS
  * valuePeriod only Period
  * valuePeriod obeys -limitationDateStart and -limitationDateEnd
  * valuePeriod.start 1..
  * valuePeriod.start ^short = "Beginn der Einlösefrist"
  * valuePeriod.start ^definition = "Datum, ab dem die Teilverordnung eingelöst werden kann."
  * valuePeriod.end ^short = "Ende der Einlösefrist"
  * valuePeriod.end ^definition = "Letzter Tag, an dem die Teilverordnung eingelöst werden kann.\nDie verschreibende Person kann eine von der Arzneimittelverschreibungsverordnung (AMVV) abweichende Einlösefrist festlegen."

* extension[id]
  * value[x] 1.. MS
  * value[x] only Identifier
  * valueIdentifier 1.. MS
  * valueIdentifier.use ..0
  * valueIdentifier.type ..0
  * valueIdentifier.system = "urn:ietf:rfc:3986" (exactly)
  * valueIdentifier.system ^short = "Angabe als UUID"
  * valueIdentifier.value ^short = "Kennung der Mehrfachverordnung"
  * valueIdentifier.value ^definition = "Eindeutige Kennung, die für alle Teilverordnungen derselben Mehrfachverordnung identisch ist."
  * valueIdentifier.period ..0
  * valueIdentifier.assigner ..0
