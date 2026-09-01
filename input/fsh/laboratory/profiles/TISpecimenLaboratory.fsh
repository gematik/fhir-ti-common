Profile: TISpecimenLaboratory
Parent: SpecimenEu
Id: ti-specimen-laboratory
Title: "TI Specimen Laboratory"
Description: """
Dieses Profil bildet eine Probe ab.\n
Identifizierung und Eigenschaften der primären oder sekundären Probe, auf deren Basis die Laboruntersuchung als Messung durchgeführt wird. Ein inhaltliches Beispiel für die Unterscheidung von Primär- und Sekundärprobe:\n
* Primärprobe: Probenart = Vollblut (über LOINC® oder ergänzende Spezifizierung Probenart); Probengewinnung / Methode = Blutabnahme; Probenverarbeitung / Methode = Zentrifugieren\n
* Sekundärprobe: Probenart = Serum (über LOINC® oder ergänzende Spezifizierung Probenart); Probengewinnung / Methode = Zentrifugieren zur Serumgewinnung; Probe / Ausgangsmaterial = Vollblut
"""
* . ^definition = """
Dieses Profil bildet eine Probe ab.\n
Identifizierung und Eigenschaften der primären oder sekundären Probe, auf deren Basis die Laboruntersuchung als Messung durchgeführt wird. Ein inhaltliches Beispiel für die Unterscheidung von Primär- und Sekundärprobe:\n
* Primärprobe: Probenart = Vollblut (über LOINC® oder ergänzende Spezifizierung Probenart); Probengewinnung / Methode = Blutabnahme; Probenverarbeitung / Methode = Zentrifugieren\n
* Sekundärprobe: Probenart = Serum (über LOINC® oder ergänzende Spezifizierung Probenart); Probengewinnung / Methode = Zentrifugieren zur Serumgewinnung; Probe / Ausgangsmaterial = Vollblut
"""
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active

* extension MS
* extension[focus] MS
  * ^definition = "Falls die Probe nicht unmittelbar aus dem menschlichen Körper direkt entnommen wird, sondern beispielsweise aus einem Sammelgefäß oder Katheter gewonnen wird."
  * ^short = "Außerkörperliche Quelle zur Probenentnahme"
  * valueReference 1..1 MS
    // * insert ReferenceMS
  * valueReference only Reference(TIDeviceLaboratorySpecimenSubject)
* identifier MS
  * insert IdentifierMS
  * type from SpecimenIdentifierTypeVS (extensible)
  * type MS
    * ^definition = """
    Für die Probe können unterschiedliche Identifikatoren vergeben werden. Unterschieden werden beispielsweise \"Identifkator, den die auftragerteilende Institution vergibt\" (Order-Placer, Einsender) und \"Identifkator, den die auftragserfüllende Laboreinrichtung vergibt\" (Order-Filler, Auftragnehmer). Der ID-Typ gibt an, um welche Art von Proben-Identifikator es sich handelt.
    """
    * coding MS
      * ^definition = """
      Code für die Typisierung des Proben-Identifikators.\n
      HL7®-Code für die Typisierung des Proben-Identifikators. In diesem Kontext mögliche Codes sind beispielsweise:
      * PLAC (Placer Identifier) - Identifikator, den die Auftragserteilende Institution vergibt
      * ACSN (Accession ID) - Identifikator, den das Labor zum Auftragseingang vergibt
      * FILL (Filler Identifier) - Identifikator, den das Labor zur Auftragserfüllung vergibt
      * SID (Specimen ID)
      """
      * insert CodingMS
    * text MS
      * ^definition = "Text für die Typisierung des Proben-Identifikators."
  * value
    * ^definition = "Identifikator-Wert"
* accessionIdentifier 0..0
* status MS
  * ^definition = """
  Hier wird ein Code für den Probenstatus vor der Messung angegeben:\n
  * Verfügbar: das physische Exemplar ist vorhanden und in gutem Zustand.
  * Nicht verfügbar: es ist kein physisches Exemplar vorhanden, da es entweder verloren, zerstört oder verbraucht wurde.
  * Nicht geeignet: die Probe kann aufgrund eines Qualitätsproblems, z. B. eines zerbrochenen Behälters, einer Verunreinigung oder eines abgelaufenen Verfallsdatums, nicht verwendet werden.
  * Irrtümliche Eingabe: die Probe wurde irrtümlich eingegeben und ist daher ungültig.
  """
* type MS
  * ^definition = """
  Probenart, ergänzende Spezifizierung Code/Bezeichnung\n
  Der LOINC®-Code impliziert über die LOINC®-Achse SYSTEM bereits eine Probenart. Falls der Wert für die LOINC®-Achse SYSTEM nicht ausreichend spezifisch ist, kann in Bezug auf den LOINC®-Code der Laboruntersuchung, die \"Probenart, ergänzende Spezifizierung\" (Specimen.type) ergänzt werden. Ein Beispiel: Wenn mit dem LOINC®-Code das Untersuchungsmaterial \"Blut\" definiert ist, könnte als ergänzende Spezifikation der SNOMED CT®-Code für \"arterielles Blut\" dokumentiert werden.
  """
  * ^short = "Probenart, ergänzende Spezifizierung (z.B. postkoordinierend)"
  * coding MS
    * ^definition = "Hier wird die Probenart als codierte Information angegeben."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains snomed 0..1 MS
  * coding[snomed] from SpecimenTypeVS (extensible)
  * coding[snomed]
    * ^definition = "Hier kann ein Code aus SNOMED CT® angegeben werden."
    * ^patternCoding.system = $cs-sct
    * insert CodingMS
  * text MS
    * ^definition = """
    Freitext Bezeichnung für die ergänzende Spezifizierung der Probenart. Mögliche Verwendung:\n
    * als Freitextergänzung, wenn die Probenart durch die Spezifikation Laboruntersuchung (LOINC® Code: SYSTEM) nicht ausreichend spezifisch codiert werden kann
    * als Freitextergänzung, wenn die die Probenart durch Probenart, ergänzende Spezifizierung/SNOMED CT®-Code nicht ausreichend spezifisch bezeichnet werden kann
    * ersatzweise, wenn gar keine passende Codierung zugeordnet werden kann
    * wenn zusätzlich eine Freitext-Bezeichnung aus der LDT-Kommunikation übernommen werden soll.
    """
* insert SubjectEu(subject)
* receivedTime MS
  * ^definition = "Zeitpunkt des Eingangs der Probe im Labor. Dieser Zeitpunkt sollte nach Möglichkeit minutengenau angegeben werden. Im klinischen Alltag ist die minutengenaue Erfassung nicht immer realistisch."
* parent MS
  * ^definition = "Ausgangsmaterial für eine Sekundärprobe. Die Sekundärprobe existiert nur auf Basis einer Primärprobe. Wenn eine Sekundärprobe angegeben wird, dann ist das Ausgangsmaterial verpflichtend anzugeben, damit der Bezug hergestellt werden kann."
  * insert ReferenceMS
* parent only Reference(TISpecimenLaboratory)
* collection MS
  * ^definition = "Optionale Angaben zur Probengewinnung, dazu gehören: Zeitangabe, Methode der Probengewinnung, Entnahmeort, Angabe zum Nüchternstatus."
  * extension MS
  * extension[bodySite] MS
    * ^definition = """
    Es kann eine Körperstruktur mit Seitenangabe, weiterer Lokalisierung und Aussage zur Morphologie angegeben werden.\n
    Es wäre auch möglich, dass eine Probenentnahme aus mehr als einer Körperstelle gewonnen wird.
    """
    * ^short = "Körperstelle der Probenentnahme"
    * valueReference MS
      * insert ReferenceMS
    // * valueReference only Reference(TIBodyStructure)
  * collector MS
    * ^definition = "Person, welche die Probe entnimmt."
    * insert ReferenceMS
  * collector only Reference(TIPractitioner or TIPractitionerRole)
  * collected[x] MS
    * ^definition = "Hier wird eine Zeitangabe zur Probengewinnung vorgenommen."
  * collected[x] only dateTime or Period
  * collectedDateTime MS
    * ^definition = "Punktueller Zeitpunkt der Entnahme/Abnahme/Gewinnung der Probe. Dieser Zeitpunkt sollte nach Möglichkeit minutengenau angegeben werden. Im klinischen Alltag ist die minutengenaue Erfassung zur Probenentnahme nicht immer realistisch."
  * collectedPeriod MS
    * ^definition = "Zeitraum mit Start- und Endzeitpunkt, hier geht es um den konkreten Zeitraum der Probenentnahme."
    * start MS
      * ^definition = "Beginn eines Zeitraumes."
    * end MS
      * ^definition = "Ende eines Zeitraumes."
  * duration MS
    * ^definition = "Dauer steht für eine Zeitspanne, sie ist mindestens durch einen quantitativen Wert und eine zeitbezogene UCUM-Einheit definiert. Hier geht es um die zur Probengewinnung benötigte Zeitspanne, z. B. Sammelurin über einige Stunden."
    * insert QuantityMS
    * value
      * ^definition = "Hier wird der numerische Wert der Zeitdauer angegeben. Hierbei handelt es sich um eine Zahl mit optionalen Dezimalstellen."
    * comparator MS
      * ^definition = """
      Der Komparator kann sein:\n
      * < (kleiner)
      * <= (kleiner oder gleich)
      * >= (größer oder gleich)
      * > (größer)\n
      Der häufigste Option ist, dass eine Dauer = (gleich) eines Wertes ist. In diesem Fall wird kein Komparator gesetzt.
      """
    * unit
      * ^definition = "Hier wird die Einheit der Zeitdauer angegeben."
    * code
      * ^definition = "Hier wird der Code für Einheit der Zeitdauer angegeben."
  * method MS
    * ^definition = """
    Methode, mit welcher das Probenmaterial gewonnen wurde. Diese Angabe kommt infrage für\n
    * die primäre Entnahme des Probenmaterials (Primär-Probe) oder
    * die sekundäre Probengewinnung (Sekundär-Probe), z.B. Zentrifugat im Labor
    """
    * coding MS
      * ^definition = "Hier kann die Methode der Probengewinnung als codierte Information angegeben werden."
      * ^slicing.discriminator.type = #value
      * ^slicing.discriminator.path = "$this"
      * ^slicing.rules = #open
    * coding contains snomed 0..1 MS
    * coding[snomed] from SpecimenCollectionMethodVS (example)
    * coding[snomed]
      * ^patternCoding.system = $cs-sct
      * insert CodingMS
    * text MS
      * ^definition = "Freitext Bezeichnung der Probenentnahme-Methode"
  * fastingStatus[x] MS
    * ^definition = "Aussage zur Abstinenz von Nahrungsmitteln und Getränken für einen bestimmten Zeitraum vor der Probengewinnung."
  * fastingStatus[x] only CodeableConcept or Duration
  * fastingStatusCodeableConcept MS
    * ^definition = "Angabe zum Nüchternstatus."
    * coding MS
      * ^definition = "Angabe zum Nüchternstatus in codierter Form."
      * insert CodingMS
    * text MS
      * ^definition = "Freitextangabe zum Nüchternstatus."
  * fastingStatusDuration MS
    * ^definition = "Dauer des Nüchternzustandes. Dauer steht für eine Zeitspanne, sie ist mindestens durch einen quantitativen Wert und eine zeitbezogene Einheit definiert."
    * insert QuantityMS
    * value
      * ^definition = "Hier wird der numerische Wert der Zeitdauer angegeben. Hierbei handelt es sich um eine Zahl mit optionalen Dezimalstellen."
    * comparator MS
      * ^definition = """
      Der Komparator kann sein:\n
      * < (kleiner)
      * <= (kleiner oder gleich)
      * >= (größer oder gleich)
      * > (größer)\n
      Der häufigste Option ist, dass eine Dauer = (gleich) eines Wertes ist. In diesem Fall wird kein Komparator gesetzt.
      """
    * unit
      * ^definition = "Hier wird die Einheit der Zeitdauer angegeben."
    * code
      * ^definition = "Hier wird der Code für Einheit der Zeitdauer angegeben."
* processing MS
  * ^definition = "Optionale Angaben zur Probenverarbeitung, dazu gehören: Zeitangabe, Additiva und ggf. beschreibender Text."
  * description MS
    * ^definition = "Freitext Beschreibung zur Probenverarbeitung."
  * procedure MS
    * ^definition = "Methode / Verfahren zur Weiterverarbeitung des Probenmaterials, angegeben in codierter Form oder als Text"
    * coding MS
      * ^definition = "Methode / Verfahren zur Weiterverarbeitung des Probenmaterials als codierte Information"
      * insert CodingMS
    * text MS
      * ^definition = "Hier kann die Methode / das Verfahren zur Weiterverarbeitung des Probenmaterials als Freitext angegeben werden."
  * additive MS
    * ^definition = "Referenzierung auf Additiva, die bei der Probenweiterverarbeitung hinzugefügt werden."
    * ^short = "Probenzusätze in der Probenverarbeitung"
    * insert ReferenceMS
  * additive only Reference(TISpecimenAdditiveSubstanceLaboratory)
  * time[x] MS
    * ^definition = "Hier wird eine Zeitangabe vorgenommen."
  * time[x] only dateTime or Period
  * timeDateTime MS
    * ^definition = "Im Laborkontext sollte der Zeitpunkt nach Möglichkeit minutengenau angegeben werden."
  * timePeriod MS
    * ^definition = "Zeitraum mit Start und Ende"
    * start MS
      * ^definition = "Beginn eines Zeitraum"
    * end MS
      * ^definition = "Ende eines Zeitraum"
* container MS
  * ^definition = "Optionale Angaben zum Behältnis, in dem sich die Probe befindet. Hierzu kann angegeben werden, um welche Art Behältnis es sich handelt und welche Menge an Probenmaterial es enthält."
  * extension MS
  * extension[device] 1..1 MS
    * ^definition = "Referenz auf den Probenbehälter."
    * valueReference 1..1 MS
      // * insert ReferenceMS
    * valueReference only Reference(TIDeviceSpecimenContainer)
  * type MS
    * coding MS
      * insert CodingMS
  * specimenQuantity MS
    * ^definition = "Menge der Probe im Behälter."
    * insert QuantityMS
    * value MS
      * ^definition = "Numerischer Wert für eine gemessene Größe, eine Zahl mit optionalen Dezimalstellen."
* condition from SpecimenConditionVS (extensible)
* condition MS
  * ^definition = "Hier wird eine Angabe zum Zustand der Probe gemacht."
  * coding MS
    * ^definition = "Hier wird der Zustand der Probe als codierte Information angegeben."
    * insert CodingMS
  * text MS
    * ^definition = "Freitext Angabe zum Zustand der Probe."
* note MS
  * ^definition = """
  Feld für ergänzende Freitext-Angaben zum Probenmaterial, die in der vorgegebenen Datenstruktur nicht erfasst werden können. Ein Beispiel dafür wäre die Angabe, dass die Probe bei 37 Grad (Körpertemperatur) aufbewahrt wurde.
  """
  * text MS
