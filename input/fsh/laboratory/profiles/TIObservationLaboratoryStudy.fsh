Profile: TIObservationLaboratoryStudy
Parent: ObservationResultsLaboratoryEu
Id: ti-observation-laboratory-study
Title: "TI Observation Laboratory Study"
Description: """
Dieses Profil bildet eine Laboruntersuchung ab.\n
Laboruntersuchungen können als Messung oder als Berechnung erfolgen.\n
Eine Laboruntersuchung als Messung beschreibt die quantitative oder qualitative Untersuchung eines spezifischen Laborparameters in einem definierten Probenmaterial; z. B. die Untersuchung des Hämoglobin-(Hb-)Werts als Konzentration im Blut. Der Bezug zur Probe, anhand derer die Messung vorgenommen wurde, muss erkennbar sein.\n
Berechnete Laborergebnisse können auf Messungen basieren, z.B. kann die berechnete GFR (glomeruläre Filtrationsrate) auf einem gemessenen Kreatinin-Wert im Serum basieren.
"""
* . ^definition = """
Dieses Profil bildet eine Laboruntersuchung ab.\n
Laboruntersuchungen können als Messung oder als Berechnung erfolgen.\n
Eine Laboruntersuchung als Messung beschreibt die quantitative oder qualitative Untersuchung eines spezifischen Laborparameters in einem definierten Probenmaterial; z. B. die Untersuchung des Hämoglobin-(Hb-)Werts als Konzentration im Blut. Der Bezug zur Probe, anhand derer die Messung vorgenommen wurde, muss erkennbar sein.\n
Berechnete Laborergebnisse können auf Messungen basieren, z.B. kann die berechnete GFR (glomeruläre Filtrationsrate) auf einem gemessenen Kreatinin-Wert im Serum basieren.
"""
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.5.0"
// * ^date = "2026-09-30"
// * ^status = #active


* obeys obs-alt-result-1
* extension MS
* extension contains
  TestProfileLaboratoryExtension named testProfile 0..1 MS and
  ExternalServiceExtension named externalService 0..1 MS and
  AssociationServiceLaboratoryExtension named associationService 0..1 MS and
  ZlogLaboratoryExtension named zlogValue 0..1 MS and
  AlternativeResultLaboratoryExtension named alternativeResult 0.. MS
* extension[testProfile]
  * ^definition = "Unter Test-Profil werden zusammengehörige Labortests oder eine Gruppe von Einzeluntersuchungen aus einem Verfahren zusammengefasst."
  * ^short = "Bezeichnung für fachlich-medizinischen Bezug, unter dem Laboruntersuchungen gruppiert werden, Inhalt identisch zu TIObservationLaboratoryStudyGroup.extension:testProfile"
  * valueCodeableConcept MS
    * coding MS
      * ^definition = "Benennung eines Test-Profils als Code."
      * insert CodingMS
    * text MS
      * ^definition = "Benennung des Test-Profils als Freitext."
* extension[externalService]
  * ^definition = "Dieses Kennzeichen wird gesetzt, wenn die Laboruntersuchung von einem anderen Labor durchgeführt wird."
  * ^short = "Kennzeichen Fremdleistung"
  * valueBoolean MS
* extension[associationService]
  * ^definition = "Dieses Kennzeichen wird gesetzt, wenn die \"Fremdleistung\" von einem anderen Labor aus dem eigenen Verbund durchgeführt wird und diese Information aus administrativen Gründen zusätzlich benötigt wird."
  * ^short = "Kennzeichen Verbundleistung"
  * valueBoolean MS
* extension[accredited] MS
  * ^definition = "Diese Angabe betrifft akkreditierte Labore. Basierend auf der Akkreditierung ist gefordert, dass nicht akkreditierte Leistungen gekennzeichnet werden, auch im Laborbefund."
  * ^short = "Kennzeichen Akkreditierte Laboruntersuchung"
  * valueBoolean MS
* extension[zlogValue] ^definition = """
Der zlog-Wert ist ein Relativwert, der auf einer logarithmischen Skala angibt, um wie viele Standardabweichungen ein Messwert vom Mittelwert des Referenzkollektivs abweicht. Er kann ergänzend, orientierend zur Bewertung eines Messergebnisses herangezogen werden.\n
Berechnung zlog-Wert zum Laborergebnis (x):\n
zlog = (log(x) –(log(UG)+log(OG))/2)*3,92/(log(OG)–log(UG))\n
(UG),(OG) sind die Unter- und Obergrenzen des Referenzintervalls\n\n
Interpretation des zlog-Wertes:
* Sein Referenzintervall liegt methodenunabhängig stets zwischen – 1,96 und + 1,96
* Stark erniedrigte oder erhöhte Laborergebnisse führen zu zlog-Werten um – 5 bzw. + 5.
"""
  * valueDecimal MS
* extension[alternativeResult] ^definition = "Hier werden auf eine alternative Einheit umgerechnete Messergebnisse mitgeführt.\n
Dies betrifft das quantitative Messergebnis, sowie die Richtgrenzenwerte und die zlog-Wert-Berechnung. Aus diesem Grund sind deren Strukturen hier (noch einmal) enthalten."
  * extension[code] MS
    * ^definition = "Hier wird die Laboruntersuchung in Bezug auf das Messergebnis mit Alternativeinheit spezifiziert."
    * ^short = "Spezifikation der Laboruntersuchung zum Messergebnis mit Alternativeinheit"
    * valueCodeableConcept MS
      * coding MS
        * ^definition = "In diesem Element wird ein Code für die Laboruntersuchung zum alternativen Messergebnis angegeben"
        * ^short = "Codierte Spezifikation der Laboruntersuchung zum Messergebnis mit Alternativeinheit"
        * insert CodingMS
  * extension[value] MS
    * ^definition = "Hier wird ein Messergebnis mit Alternativeinheit angegeben."
    * ^short = "Messergebnis quantitativ mit Alternativeinheit"
    * value[x] MS
    * valueQuantity MS
      * ^definition = "Hier wird der Ergebniswert als Quantität mit Alternativeinheit angegeben."
      * ^short = "Ergebniswert mit Alternativeinheit"
      * value MS
      * comparator MS
      * unit MS
      * system MS
      * code MS
    * valueRange MS
      * ^definition = "Hier wird das Ergebnis als ein Wertebereich/Werteintervall mit Alternativeinheit angegeben."
      * ^short = "Ergebnisbereich mit Alternativeinheit"
      * low MS
        * value MS
        * unit MS
        * system MS
        * code MS
      * high MS
        * value MS
        * unit MS
        * system MS
        * code MS
    * valueRatio MS
      * ^definition = "Hier wird der Ergebniswert als Ratio mit Alternativeinheiten angegeben."
      * ^short = "Ratio mit Alternativeinheit"
      * numerator MS
        * value MS
        * comparator MS
        * unit MS
        * system MS
        * code MS
      * denominator MS
        * value MS
        * comparator MS
        * unit MS
        * system MS
        * code MS
  * extension[referenceRange] MS
    * ^definition = "Richtgrenzen für das quantitative Ergebnis mit Alternativeinheit."
    * ^short = "Richtgrenzen für Alternativeinheit"
    * valueRange MS
      * low MS
        * value MS
        * unit MS
        * system MS
        * code MS
      * high MS
        * value MS
        * unit MS
        * system MS
        * code MS
  * extension[zlog] MS
    * ^definition = """
    Der zlog-Wert ist ein Relativwert, der auf einer logarithmischen Skala angibt, um wie viele Standardabweichungen ein Messwert vom Mittelwert des Referenzkollektivs abweicht. Er kann ergänzend, orientierend zur Bewertung eines Messergebnisses herangezogen werden.\n
    Berechnung zlog-Wert zum Laborergebnis (x):\n
    zlog = (log(x) –(log(UG)+log(OG))/2)*3,92/(log(OG)–log(UG))\n
    (UG),(OG) sind die Unter- und Obergrenzen des Referenzintervalls\n\n
    Interpretation des zlog-Wertes:
    * Sein Referenzintervall liegt methodenunabhängig stets zwischen – 1,96 und + 1,96
    * Stark erniedrigte oder erhöhte Laborergebnisse führen zu zlog-Werten um – 5 bzw. + 5.
    """
    * valueDecimal MS
* identifier MS
* status MS
  * ^definition = "Bearbeitungsstatus der einzelnen Laboruntersuchung."
* category MS
  * ^definition = "Zur einzelnen Laboruntersuchung wird das \"fachliche Gruppierungsmerkmal\" REDUNDANT abgebildet, der Inhalt entspricht exakt dem fachlichen Gruppierungsmerkmal der zugehörigen Untersuchungsgruppe. Dies ermöglicht bei datenbankbasierten Abfragen von Einzeluntersuchungen (z.B. in der ePA) eine direkte Zuordnung zur fachlichen Gruppierung. Das fachliche Gruppierungsmerkmal der Untersuchungsgruppe ist grundsätzlich führend!"
  * ^short = "Fachliche Bezeichnung für die zugehörige Untersuchungsgruppe, Inhalt identisch zu TIObservationLaboratoryStudyGroup.category"
* category[laboratory] MS
  * coding MS
    * insert CodingMS
  * text MS
* category[studyType] MS
  * ^definition = "Hier kann die fachspezifische Eingrenzung innerhalb der Laboratoriumsmedizin anhand entsprechender Kategorie-Codes angegeben werden. Beispiele für eine fachspezifische Eingrenzung sind: \"Klinische Chemie\", \"Hämatologie\", \"Toxikologie\". Es besteht auch die Option, eine allgemeine Kategorie für \"Labor\" zu vergeben."
  * ^short = "Bezeichnung für Fachbereich, unter dem Laboruntersuchungen gruppiert werden, Inhalt identisch zu TIObservationLaboratoryStudyGroup.category:studyType"
  * coding MS
    * ^definition = "Benennung des labormedizinischen Bereiches als Code."
    * insert CodingMS
  * text MS
    * ^definition = "Benennung des labormedizinischen Bereiches als Freitext."
* code MS
  * ^definition = "Hier wird die konkrete einzelne Laboruntersuchung spezifiziert."
  * extension contains $data-absent-reason named data-absent-reason 0..1 MS
  * extension[data-absent-reason]
    * ^definition = "Begründung für die Nicht-Vergabe eines Codes zur Laboruntersuchung"
    * ^short = "Grund für das Nichtvorhandensein eines Codes"
    * valueCode MS
    * valueCode from DataAbsentReasonLaboratoryVS (required)
  * coding MS
    * ^definition = "In diesem Element wird ein Code für die Laboruntersuchung angegeben."
    * insert CodingMS
  * text MS
    * ^definition = "Die Freitext-Bezeichnung erlaubt es, in den verwendenden/verarbeitenden Systemen den Einrichtungs-spezifischen bzw. Verwender-spezifischen Bezeichner für eine Laboruntersuchung weiterhin zu verwenden."
    * ^short = "Verwender-spezifische Bezeichnung für die Laboruntersuchung"
* insert SubjectEu(subject)
* effective[x] MS
* effectiveDateTime MS
  * ^definition = """
  Der Klinische Bezugszeitpunkt ist wichtig, um die Laboruntersuchung im Zeitverlauf einordnen zu können.\n
  Die Redundanz ist beabsichtigt. Es geht darum, einen Zeitpunkt ermitteln zu können, der für Studien-Statistiken als vergleichsrelevant eingestuft wird. Da im klinischen Alltag nicht sicher gestellt ist, dass grundsätzlich und immer der Zeitpunkt der Materialentnahme auch dokumentiert wird, wurde dieser Algorithmus festgelegt, um die Dokumentation eines statistischen relevanten Zeitpunktes zu garantieren:\n
  * WENN der Entnahmezeitpunkt des Probenmaterials angeben ist, so gilt der Entnahmezeitpunkt;
  * WENN der Sammelzeitraum-bis angegeben ist, so gilt der bis-Zeitpunkt;
  * SONST gilt (hilfsweise) der Laboreingangszeitpunkt: Zeitpunkt des Eingangs der Probe im Labor.
  """
  * ^short = "Klinischer Bezugszeitpunkt"
* issued MS
  * ^definition = "Zeitstempel oder Zeitangabe zur Dokumentation der einzelnen Laboruntersuchung."
  * ^short = "Dokumentationszeitpunkt"
* insert PerformerEu
* performer
  * ^definition = """
  Hier wird das durchführende Labor in Bezug auf die einzelne Laboruntersuchung benannt.\n
  Zur Beachtung: im Laborgesamtbefund wird das durchführende Labor (als DiagnosticReport.performer) dokumentiert. Für selbst erbrachte Laborleistungen muss aus Gründen der EU-Kompatibilität auch immer zur Einzeluntersuchung das durchführende Labor (Observation.performer) dokumentiert werden, dieses kann aus dem Laborgesamtbefund abgeleitet werden.\n
  Wenn das auftragnehmende Labor die einzelne Laboruntersuchung nicht in Eigenleistung erbringt sondern an ein Speziallabor weiterleitet, sogenannte Fremdleistung, muss hier das durchführende sekundäre Labor als durchführendes Labor dokumentiert werden.
  """
* value[x] MS
  * ^definition = "Messergebnisse können quantitativ oder qualitativ sein."
* valueQuantity MS
  * ^definition = "Hier wird der Ergebniswert als Quantität angegeben."
  * value MS
  * comparator MS
  * unit MS
  * system MS
  * code MS
* valueCodeableConcept MS
  * ^definition = """
  Qualitative Messergebnisse sind - je nach Messgröße oder Skalierung:\n
  Ordinal, d.h. numerische, in der Regel ganzzahlige Ordnungswerte, die den Vergleich (z. B. kleiner als, größer als) ermöglichen oder zur Vergabe einer Punktebewertung (\"Benotung\") herangezogen werden, beispielsweise eine Schmerzskala (z.B. von 1 bis 10)\n
  Nominal, d.h. Festwerte ohne Rangordnung, beispielsweise in der Mikrobiologie: Krankheitserreger (z.B. Escherichia Coli; Staphylococcus aureus als Bezeichner oder als Code.) oder Angabe zum Nachweis (z.B. vorhanden / nicht vorhanden).
  """
  * ^short = "Qualitatives Messergebnis (z.B. nominal oder ordinal)"
  * coding MS
    * ^definition = "Qualitatives Messergebnis in codierter Form."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains snomed 0..1 MS
  * coding[snomed] from LaboratoryStudyValueVS (example)
  * coding[snomed]
    * ^definition = "Darstellung des qualitativen Messergebnisses als SNOMED CT®-Code."
    * ^patternCoding.system = $cs-sct
    * insert CodingMS
  * text MS
    * ^definition = "Qualitatives Messergebnis als Freitext."
* valueRatio MS
  * ^definition = "Eine bisher gebräuchliche Ergebnisdarstellung von Antikörper-Bestimmungen ist der Verdünnungstiter, bei welchem die Antikörper noch nachweisbar sind. Umgangssprachlich häufig nur als \"Titer\" bezeichnet. Die Titerangabe setzt sich aus zwei ins Verhältnis gesetzten Quantitäten (Zähler, Nenner) zusammen. Wenn zur Ergebnisdarstellung ein Komparator benötigt wird, dann gelten die mathematischen Regeln, beispielsweise ist 1:32 ein kleinerer Wert als 1:16."
  * numerator MS
    * ^definition = "Hier wird der Zähler zum Ergebniswert Ratio angegeben."
    * value MS
    * comparator MS
    * unit MS
    * system MS
    * code MS
  * denominator MS
    * ^definition = "Hier wird der Nenner zum Ergebniswert Ratio angegeben."
    * value MS
    * comparator MS
    * unit MS
    * system MS
    * code MS
* valueRange MS
  * ^definition = "Für Messergebnisse, die nicht als genau ein Wert, sondern als ein Wertebereich/Werteintervall angegeben werden."
  * low MS
    * ^definition = "Untere Grenze eines Ergebnisbereiches, Ergebnisintervalls."
    * value MS
    * unit MS
    * system MS
    * code MS
  * high MS
    * ^definition = "Obere Grenze eines Ergebnisbereiches, Ergebnisintervalls."
    * value MS
    * unit MS
    * system MS
    * code MS
* valueString MS
  * ^definition = "Textergebnis als Freitext. Dieses Feld ist für Beobachtungen vorgesehen, bei denen für das Resultat keine numerischen oder codierten Werte benötigt werden. Beispiele sind qualitative Beschreibungen oder freitextliche Kommentare."
  * ^short = "Ergebnis uncodiert in Textform"
* dataAbsentReason MS
  * ^definition = "Begründung für die Nicht-Verfügbarkeit eines Messergebnisses. Die Angabe eines Messergebnisses ist gefordert (\"required\"). Wenn kein Messergebnis zur Verfügung steht, wird in der FHIR®-Struktur ein \"dataAbsentReason\" angegeben. Der Inhalt dieser Begründung soll der System-anwendenden Person angezeigt werden"
  * coding MS
    * insert CodingMS
* interpretation MS
  * ^definition = "Medizinisch relevante Bewertung zur einzelnen Laboruntersuchung. Die Interpretation kann als Code und/oder Text vorliegen. Die Angabe einer Interpretation ist optional, bei nicht vorhandener Klassifikation wird hier nichts übermittelt. Empfehlung: eine dokumentierte Interpretation sollte mindestens einen Interpretationscode enthalten."
  * ^short = "Medizinische Interpretation des einzelnen Laborergebnisses"
  * coding MS
    * ^definition = "Hier kann die Interpretation als codierte Information angegeben werden."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
    hl7Interpretation 0..1 MS and
    snomed 0..1 MS
  * coding[hl7Interpretation] from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
  * coding[hl7Interpretation]
    * ^definition = "Für die codierte Interpretation wird eine Auswahl von Interpretationscodes als Option angeboten. Die Nutzung der hinterlegten Codes ist abhängig vom Kontext."
    * ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
    * insert CodingMS
  * coding[snomed]
    * ^definition = "Hier kann ein Code aus SNOMED-CT® angegeben werden."
    * ^patternCoding.system = $cs-sct
    * insert CodingMS
  * text MS
    * ^definition = "Hier kann eine medizinisch relevante Bewertung als Freitext eingegeben werden. Unter Eigenschaften sind mögliche Werte gelistet, die in dieses Feld hineinpassen könnten, beispielsweise ein Textfeld  aus dem LDT zur Interpretation des Ergebnisses."
* note MS
  * ^definition = "Die ergänzenden Angaben beziehen sich genau auf diese Einzeluntersuchung. Neben dem Element (Interpretation) ist dieses Feld für weitere, über die rein medizinische Interpretation hinausgehende Kommentierungen gedacht."
  * text MS
* method MS
  * ^definition = """
  Der LOINC®-Code impliziert über die LOINC®-Achse METHOD bereits eine Untersuchungsmethode, unter der Voraussetzung, dass der Part METHOD einen Wert beinhaltet. Die \"Untersuchungsmethode, ergänzende Spezifizierung\" kann in Bezug auf die LOINC®-spezifizierte Laboruntersuchung ergänzt werden, falls der Wert für die LOINC®-Achse METHOD nicht ausreichend spezifisch ist oder gar nicht vorhanden ist.\n
  Ein Beispiel: die Laboruntersuchung (TIObservationLaboratoryStudy.code) ist mit dem LOINC®-Code 26453-1 \"Erythrocytes [#/volume] in Blood\" ohne Angabe zur Methode codiert. Als ergänzende Spezifizieruung wird für die Untersuchungsmethode (TIObservationLaboratoryStudy.method) der SNOMED CT®-Code 702659008 |Automated count| zugeordnet.
  """
  * ^short = "Untersuchungsmethode, ergänzende Spezifizierung (z.B. postkoordinierend)"
  * coding MS
    * ^definition = "Hier kann die Untersuchungsmethode als codierte Information angegeben werden."
    * insert CodingMS
  * coding from ObservationMethodVS (example)
  * text MS
    * ^definition = """
    Hier kann eine Freitext-Bezeichnung der Untersuchungsmethode notiert werden. Mögliche Verwendung:\n
    * als Freitextergänzung, wenn die Methode durch die Spezifikation Laboruntersuchung (LOINC® Code: METHOD) nicht ausreichend spezifisch codiert werden kann
    * ersatzweise, wenn zur Untersuchungsmethode auch kein passender SNOMED CT®-Code zugeordnet werden kann
    * als ergänzender, dem SNOMED CT®-Code entsprechender Freitext
    """
* specimen MS
  * ^definition = """
  Eine Laboruntersuchung kann auf einer Primärprobe oder einer weiter verarbeiteten Probe (Sekundärprobe) basieren. Die Zuordnung einer Sekundärprobe zu einer Laboruntersuchung ist dann empfehlenswert, wenn durch die Probenvorbereitung im Labor eine relevante Veränderung des Untersuchungsmaterials erfolgt (z.B. Abtrennung Plasma).\n
  Ein Beispiel für die Unterscheidung zwischen Primärprobe und Sekundärprobe: als Primärprobe erreicht eine Probenart = Vollblut das Labor. Durch Zentrifugieren im Labor entsteht eine Sekundärprobe mit Probenart = Serum. Die zu analysierende Substanz wird im Serum gemessen.
  """
  * insert ReferenceMS
// * specimen only Reference(TISpecimenLaboratory)
* device MS
  * ^definition = "Hier wird das Gerät bzw. Medizinprodukt referenziert, mit dem die Laboruntersuchung durchgeführt wird."
  * ^short = "Laboranalysegerät"
  * insert ReferenceMS
* device only Reference(TIDeviceLaboratoryAnalyzer)
* referenceRange MS
  * ^definition = """
  Richtgrenzen oder Bewertungsgrenzen zu einer Laboruntersuchung\n
  * werden herangezogen für die Beurteilung und Einordnung von Messergebnissen
  * sind laborärztliche Entscheidungsgrenzen (mit ggf. juristischer Relevanz)
  * sind ärztliche Entscheidungshilfen im klinischen Allta\n\n
  Disclaimer: FHIR® definiert aktuell nur inklusive Richtgrenzen. Für die Praxistauglichkeit besteht aber die Anforderung, auch exklusive Richtgrenzen abbilden zu können. Diese Thematik wurde schon bei HL7® FHIR® platziert, es gibt aber noch keine abschließende Festlegung dazu. Im Informationsmodell sind beide Optionen bereits dargestellt, um diese Anforderung sichtbar zu machen.
  """
  * extension MS
  * extension contains
    SourceReferenceRangeExtension named sourceReferenceRange 0..1 MS and
    NoLinearReferenceRangeLaboratoryExtension named noLinearReferenceRange 0..1 MS
  * extension[noLinearReferenceRange] MS
    * ^definition = "Kennzeichnung, dass das numerische Ergebnis aus einem NICHT-LINEAREN Wertebereich stammt. Beispiele hierfür sind ganzzahlige Scores oder Titer-Reihen. Umgangssprachlich wird auch von sog. \"semiquantitativen\" Ergebnissen gesprochen. Seit LOINC® Version 2.76 ist das anhand des LOINC®-Codes offiziell definiert und ablesbar mit Scale = \"SemiQn\". Das Kennzeichen ist optional und wird vom messenden Labor gesetzt."
    * ^short = "Kennzeichen Nicht-linearer Referenzbereich"
    * value[x] MS
    * valueBoolean MS
  * extension[sourceReferenceRange] MS
    * ^definition = """
    Mögliche Angaben als Quelle für Richtgrenzen können sein:\n
    * Internationaler Standard
    * Nationaler Standard
    * Literatur
    * Gerätehersteller
    * Beipackzettel
    * Labor-intern
    * nicht angegeben\n
    Zusätzlich zur Freitextangabe einer LDT-Information ist in FHIR® auch die Codierung möglich (optional).
    """
    * ^short = "Quelle der Richtgrenzen"
    * value[x] MS
    * valueCodeableConcept MS
      * coding MS
        * system MS
        * version MS
        * code MS
        * display MS
      * text MS
  * low MS
    * ^definition = """
    Die untere Richtgrenze ist eine quantitative Grenze. Datentyp und Einheit entsprechen denen beim quantitativen Messergebnis. Unter Eigenschaften sind mögliche Werte gelistet, die in dieses Feld hineinpassen könnten, beispielsweise ein Grenzwert aus dem LDT. Bei diesen Beispielen aus dem LDT gilt es zu beachten, dass die Grenzwerte nur für eine Richtgrenze vom Typ \"normal\" gelten.\n
    Disclaimer: FHIR® definiert aktuell nur inklusive Richtgrenzen. Für die Praxistauglichkeit besteht aber die Anforderung, auch exklusive Richtgrenzen abbilden zu können. Diese Thematik wurde schon bei HL7® FHIR® platziert, es gibt aber noch keine abschließende Festlegung dazu. Im Informationsmodell sind beide Optionen bereits dargestellt, um diese Anforderung sichtbar zu machen.
    """
    * value MS
      * ^definition = "Numerischer Wert für eine gemessene Größe, eine Zahl mit optionalen Dezimalstellen."
    * unit MS
      * ^definition = """"
      Die Einheit leitet sich aus der Messgröße (gemessene Eigenschaft und Mengenmaß) ab. Ein Beispiel: Wenn die Messgröße \"Massekonzentration pro Volumen\" ist, kommen als Einheiten mg/dl oder g/dl in Frage.\n
      Nicht immer werden Richtgrenzen mit Einheiten angegeben. Ein typisches Bespiel hierfür: zum Immunitätsnachweis aus einer Probe werden Verdünnungsreihen von 1:2, 1:4, 1:8, 1:16, 1:32 usw. hergestellt. Die Verdünnungen gibt man auf Zellkulturen, die dann mit einem Virus infiziert werden. Die höchste Verdünnungsstufe, bei der noch eine Infektion der Zellen vollständig verhindert wird, also noch ausreichend Antikörper vorhanden sind, wird als Titer angegeben. Dieser Titer wird ohne Einheiten angeben.
      """
    * system MS
    * code MS
  * high MS
    * ^definition = """
    Die obere Richtgrenze ist eine quantitative Grenze. Datentyp und Einheit entsprechen denen beim quantitativen Messergebnis. Unter Eigenschaften sind mögliche Werte gelistet, die in dieses Feld hineinpassen könnten, beispielsweise ein Grenzwert aus dem LDT. Bei diesen Beispielen aus dem LDT gilt es zu beachten, dass die Grenzwerte nur für eine Richtgrenze vom Typ \"normal\" gelten.\n
    Disclaimer: FHIR® definiert aktuell nur inklusive Richtgrenzen. Für die Praxistauglichkeit besteht aber die Anforderung, auch exklusive Richtgrenzen abbilden zu können. Diese Thematik wurde schon bei HL7® FHIR® platziert, es gibt aber noch keine abschließende Festlegung dazu. Im Informationsmodell sind beide Optionen bereits dargestellt, um diese Anforderung sichtbar zu machen.
    """
    * value MS
      * ^definition = "Numerischer Wert für eine gemessene Größe, eine Zahl mit optionalen Dezimalstellen."
    * unit MS
      * ^definition = """"
      Die Einheit leitet sich aus der Messgröße (gemessene Eigenschaft und Mengenmaß) ab. Ein Beispiel: Wenn die Messgröße \"Massekonzentration pro Volumen\" ist, kommen als Einheiten mg/dl oder g/dl in Frage.\n
      Nicht immer werden Richtgrenzen mit Einheiten angegeben. Ein typisches Bespiel hierfür: zum Immunitätsnachweis aus einer Probe werden Verdünnungsreihen von 1:2, 1:4, 1:8, 1:16, 1:32 usw. hergestellt. Die Verdünnungen gibt man auf Zellkulturen, die dann mit einem Virus infiziert werden. Die höchste Verdünnungsstufe, bei der noch eine Infektion der Zellen vollständig verhindert wird, also noch ausreichend Antikörper vorhanden sind, wird als Titer angegeben. Dieser Titer wird ohne Einheiten angeben.
      """
    * system MS
    * code MS
  * type MS
    * ^definition = """
    Die Typisierung von Richtgrenzen bezieht sich auf die Indikation einer Laboruntersuchung. Beispiele sind:\n
    * Referenzbereich, zur Feststellung oder Ausschluss von Erkrankungen
    * Therapeutischer Bereich, zur Einstellung einer medikamentösen Therapie
    * Zielbereich, zur Kontrolle medizinischer Maßnahmen
    * Perzentilen (z. B. circannuale 2,5-97,5, als 95% eines gesunden Kollektivs)
    * Erwartungsbereiche aufgrund endokrinologischer Konstitution
    """
    * coding MS
      * ^definition = """
      Hier wird der Richtgrenzen-Typ in codierter Form angegeben.\n
      Für die codierte Richtgrenzen-Typisierung wird eine Auswahl von HL7®-Codes als (bevorzugte) Option angeboten. Die Nutzung der hinterlegten Codes ist abhängig vom Kontext.
      """
      * insert CodingMS
    * text MS
      * ^definition = "Hier wird der Richtgrenzen-Typ als Freitext eingegeben."
  * appliesTo MS
    * ^definition = """
    Die Ermittlung von \"Normwerten\" basiert üblicherweise auf 95% eines gesunden Erwachsenen-Kollektivs. Normwerte sind Grenzwerte, die sich auf ein „Normalkollektiv“ beziehen. Als Normalkollektiv wird definiert: „gesunde“ PatientInnen ohne erhöhtes Risiko. Es kann spezifische Richtgrenzen für andere Kollektive geben. Mögliche Unterscheidungen sind:\n
    * nach Alter
    * nach klinisch-relevantem Geschlecht (divers, männlich, weiblich)
    * nach Konstitution/Merkmal
    * nach körperlichem Zustand

    Beispielsweise:\n
    * Biologisch weiblich (female-typical)
    * Biologisch männlich (male-typical)
    * Weiblich, postmenopausal
    * Erwachsene, männlich, 30-50 Jahre
    * Raucher
    * Kind (Beginn des 4. bis zum vollendeten 12. Lebensjahr)\n
    Bei den Angaben zum Kollektiv können mehrere Angaben kombiniert aufgeführt werden. Zusätzlich zur Freitextangabe einer LDT-Information ist in FHIR® auch die Codierung möglich.
    """
    * coding from ReferenceRangeAppliesToVS (example)
    * coding MS
      * ^definition = """
      Hier kann der \"Kollektiv-Bezug\" als codierte Information angegeben werden.\n
      Dieses ValueSet mit HL7®-Codes für den Kollektivbezug enthält (eHDSI-konform) bislang nur geschlechtsspezifische Bezüge. Viele weitere, mögliche Kollektivbezüge sind noch nicht standardisiert terminologisch abgebildet.
      """
      * insert CodingMS
    * text MS
      * ^definition = "Freitextangabe zum Kollektiv-Bezug der Richtgrenzen"
  * text MS
    * ^definition = "Textbasierter Referenzbereich, der verwendet werden kann, wenn ein quantitativer Bereich nicht geeignet ist."
* hasMember ..0
* derivedFrom MS
  * ^definition = "Laboruntersuchungen, die als Berechnung erstellt werden, können auf Laboruntersuchungen beruhen, die hier referenziert werden. Hierbei ist zu beachten, dass die Angabe solch referenzierter Messunge(en) nicht zwingend vollständig ist."
  * insert ReferenceMS
* derivedFrom only Reference(TIObservationLaboratoryStudy)
