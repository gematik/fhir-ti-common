Profile: TIObservationLaboratoryStudyGroup
Parent: ObservationResultsLaboratoryEu
Id: ti-observation-laboratory-study-group
Title: "TI Observation Laboratory Study Group"
Description: "Dieses Profil bildet eine Untersuchungsgruppe ab.\n
Untersuchungsgruppen sind ein technisches Mittel, um fachlich zusammengehörige Laborergebnisse innerhalb des Laborgesamtbefundes gruppiert und sortiert anzuordnen. Die Struktur \"Laborgesamtbefund/Ergebnisse\" enthält mindestens eine Struktur \"Untersuchungsgruppe\" im Abschnitt Ergebnisse.\n
Für die gruppierte Darstellung von Laboruntersuchungen können (optional) aus den fachlichen Gruppierungsmerkmalen fachliche Bezeichner als Gruppenüberschrift abgeleitet werden.\n
Untersuchungsgruppen, deren Sortierreihenfolge und die Sortierreihenfolge der einzelnen Untersuchungen innerhalb einer Gruppe werden Labor-intern definiert. Das empfangende System muss diese Gruppierungen und Sortierungen interpretieren können. Diese Strukturierung dient dem Erhalt des fachlichen Kontextes von digital kommunizierten Laboruntersuchungen."
* insert Meta-With-Versioning
* . ^definition = "Dieses Profil bildet eine Untersuchungsgruppe ab.\n
Untersuchungsgruppen sind ein technisches Mittel, um fachlich zusammengehörige Laborergebnisse innerhalb des Laborgesamtbefundes gruppiert und sortiert anzuordnen. Die Struktur \"Laborgesamtbefund/Ergebnisse\" enthält mindestens eine Struktur \"Untersuchungsgruppe\" im Abschnitt Ergebnisse.\n
Für die gruppierte Darstellung von Laboruntersuchungen können (optional) aus den fachlichen Gruppierungsmerkmalen fachliche Bezeichner als Gruppenüberschrift abgeleitet werden.\n
Untersuchungsgruppen, deren Sortierreihenfolge und die Sortierreihenfolge der einzelnen Untersuchungen innerhalb einer Gruppe werden Labor-intern definiert. Das empfangende System muss diese Gruppierungen und Sortierungen interpretieren können. Diese Strukturierung dient dem Erhalt des fachlichen Kontextes von digital kommunizierten Laboruntersuchungen."
* obeys obs-alt-result-1
* extension MS
* extension contains TestProfileLaboratoryExtension named testProfile 0..1 MS
* extension[testProfile]
  * ^definition = "Unter Test-Profil werden zusammengehörige Labortests oder eine Gruppe von Einzeluntersuchungen aus einem Verfahren zusammengefasst."
  * ^short = "Bezeichnung für fachlich-medizinischen Bezug, unter dem Laboruntersuchungen gruppiert werden."
  * valueCodeableConcept
    * insert CodeableConceptMS
    * coding MS
      * ^definition = "Benennung eines Test-Profils als Code."
    * text MS
      * ^definition = "Benennung des Test-Profils als Freitext."
* insert Coding(extension[testProfile].valueCodeableConcept.coding)
* status MS
* category MS
  * ^definition = "Zur jeweiligen Gruppe kann es (optional) gruppenbezogene fachliche Bezeichner geben, abgebildet in der vorliegenden Struktur \"Fachliches Gruppierungsmerkmal\". Für die gruppierte Darstellung von Laborergebnissen im Laborgesamtbefund können solche fachlichen Gruppierungsmerkmale als Gruppenüberschrift dienen. Mögliche Gruppenüberschriften sind:\n
  * \"Laborbereich\" (z.B. Klinische Chemie)
  * \"Laborbereich\" mit \"Test-Profil\" kombiniert"
  * ^short = "Fachliche Bezeichnung für eine Untersuchungsgruppe"
* category[laboratory] MS
  * insert CodeableConceptMS
* category[studyType] MS
  * ^definition = "Hier kann die fachspezifische Eingrenzung innerhalb der Laboratoriumsmedizin anhand entsprechender Kategorie-Codes angegeben werden. Beispiele für eine fachspezifische Eingrenzung sind: \"Klinische Chemie\", \"Hämatologie\", \"Toxikologie\". Es besteht auch die Option, eine allgemeine Kategorie für \"Labor\" zu vergeben."
  * ^short = "Bezeichnung für Fachbereich, unter dem Laboruntersuchungen gruppiert werden"
  * insert CodeableConceptMS
  * coding
    * ^definition = "Benennung des labormedizinischen Bereiches als Code."
  * text MS
    * ^definition = "Benennung des labormedizinischen Bereiches als Freitext."
* code MS
  * insert CodeableConceptMS
* insert SubjectEu(subject)
* insert PerformerEu
* performer
  * ^short = "Durchführendes Labor"
  * ^definition = "Hier wird das durchführende Labor in Bezug auf die Untersuchungsgruppe benannt.\n
Zum Erhalt der europäischen Interoperabilität, orientiert an der Veröffentlichung \"HL7 Europe Laboratory Report\" wird die durchführende Person (\"performer\" im FHIR®-Profil \"Observation\") im Informationsmodell bei der Untersuchungsgruppe mitgeführt. Bisher liegt im Rahmen der Spezifizierungsarbeit zum strukturierten Laborbefund keine medizinisch-fachliche Begründung vor, dass diese Struktur befüllt werden muss."
* valueQuantity ..0
* valueString ..0
* valueRange ..0
* valueRatio ..0
* valueTime ..0
* valueDateTime ..0
* valuePeriod ..0
* valueCodeableConcept ..0
* valueBoolean ..0
* valueInteger ..0
* value[x] ..0
* dataAbsentReason ..0
* interpretation MS
  * ^definition = "Medizinisch relevante Bewertung zur Untersuchungsgruppe. Die Interpretation kann als Code und/oder Text vorliegen. Die Angabe einer Interpretation ist optional, bei nicht vorhandener Klassifikation wird hier nichts übermittelt. Empfehlung: eine dokumentierte Interpretation sollte mindestens einen Interpretationscode enthalten."
  * ^short = "Medizinische Interpretation der Untersuchungsgruppe"
  * coding MS
    * ^definition = "Hier kann die Interpretation als codierte Information angegeben werden."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains hl7Interpretation 0..1 MS and snomed 0..1 MS
  * coding[hl7Interpretation] from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
  * coding[hl7Interpretation]
    * ^definition = "Für die codierte Interpretation wird eine Auswahl von Interpretationscodes als Option angeboten. Die Nutzung der hinterlegten Codes ist abhängig vom Kontext."
    * ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
    * insert CodingMS
  * coding[snomed]
    * ^patternCoding.system = $cs-sct
    * insert CodingMS
  * text MS
* note MS
  * ^definition = "Die ergänzenden Angaben beziehen sich genau auf diese Untersuchungsgruppe. Neben dem Element \"Interpretation\" ist dieses Feld für weitere, über die rein medizinische Interpretation hinausgehende Kommentierungen gedacht."
  * text MS
* hasMember only Reference(TIObservationLaboratoryStudy)
* hasMember 1.. MS
  *  ^definition = "Laboruntersuchungen, die in der Untersuchungsgruppe enthalten sind, werden hier referenziert."
  * extension MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "url"
    * ^slicing.rules = #open
  * extension contains SortingNumberExtension named sortingNumberResult 0..1 MS
  * extension[sortingNumberResult]
    * ^definition = "Laboruntersuchungen werden innerhalb einer Gruppe grundsätzlich sortiert. Die mit dem Datenstrom mitgegebenen Sortiernummern sind als Standardsortierung gedacht. Die Standardsortierung legt das Befund-erstellende Labor fest. Verwender können in Primärsystemen zusätzlich interaktiv auch anders sortieren, wenn das Primärsystem solche Funktionen anbietet."
    * ^short = "Sortiernummer Laboruntersuchung innerhalb der Untersuchungsgruppe"
    * value[x] MS
    * valuePositiveInt MS
  * insert ReferenceMS
