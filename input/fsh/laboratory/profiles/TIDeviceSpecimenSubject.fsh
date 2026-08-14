Profile: TIDeviceSpecimenSubject
Parent: DeviceSpecimenLabReportEu
Id: ti-device-specimen-subject
Title: "TI Device Specimen Subject"
Description: "Dieses Profil bildet eine außerkörperliche Quelle ab.\n
Falls die Probe nicht unmittelbar aus dem menschlichen Körper direkt entnommen wird, sondern beispielsweise aus einem Sammelgefäß oder Katheter gewonnen wird, kann das einen Einfluss auf das Messergebnis haben. Für diesen Fall kann die (außerkörperliche) Quelle für die Probenentnahme benannt werden.\n
Es wäre auch möglich, dass eine Probenentnahme aus mehreren außerkörperlichen Quellen gewonnen wird."
* . ^definition = "Dieses Profil bildet eine außerkörperliche Quelle ab.\n
Falls die Probe nicht unmittelbar aus dem menschlichen Körper direkt entnommen wird, sondern beispielsweise aus einem Sammelgefäß oder Katheter gewonnen wird, kann das einen Einfluss auf das Messergebnis haben. Für diesen Fall kann die (außerkörperliche) Quelle für die Probenentnahme benannt werden.\n
Es wäre auch möglich, dass eine Probenentnahme aus mehreren außerkörperlichen Quellen gewonnen wird."
* insert Meta-With-Versioning
* identifier MS
  * ^definition = "Hier werden eineindeutige Produktnummern angegeben. Diese stellen einen eineindeutigen (Bijektiven) Identifier dar."
  * ^definition = "Identifikator der außerkörperlichen Quelle"
  * value MS
  * type MS
* definition MS
  * ^definition = "In diesem Element wird die DeviceDefinition für die Kategorisierung als außerkörperliche Quelle referenziert." 
  * insert ReferenceMS
* udiCarrier MS
  * ^definition = "Das Akronym UDI steht für Unique Device Identification und beschreibt ein Identifikationssystem mit eigenen Kennzahlen für jedes Medizinprodukt, was die Rückverfolgbarkeit des Produkts weltweit gewährleistet. Mit der Medical Device Regulation (MDR) zum 26. Mai 2020 wurde das System für alle Medizinprodukte inkl. In-vitro-Diagnostika verpflichtend (Ausnahmen Sonderanfertigungen). Für die letztendliche Anbringung am Produkt (UDI-Träger) selbst gibt es, gestuft nach Produktklassen, Fristen ab 2021. Voraussetzung für die Umsetzung und Erstellung der UDI ist die Registrierung bei einer der Zuteilungsstellen (aktuell: GS1, IFA, HIBCC, ICCBBA). Die UDI-Identifikation beinhaltet zwei Teile:\n
* UDI-DI: Device Identifier (DI) - statischer Teil der Kennung\n
* UDI-PI: Production Identifier (PI) - dynamischer Teil der Kennung, enthält Angaben zu Verfallsdatum, Lotnummer und -größe (LOT), Seriennummer (SN), Herstellungsdatum"
  * deviceIdentifier MS
    * ^definition  = "UDI-DI ist der \"Device Identifier\". Es ist der statische Teil der UDI. Er enthält die Kennung der gewählten Zuteilungsstelle, die Kennung des Herstellers / Etikettierers, den Referenzcode des Produkts und kann auch eine Kennzeichnung für eine bestimmte Verpackungsebene enthalten."
* distinctIdentifier MS
  * ^definition = "Teil der UDI-PI"
* manufactureDate MS
  * ^definition = "Herstellungsdatum"
* expirationDate MS
  * ^definition = "Verfallsdatum"
* lotNumber MS
  * ^definition = "Chargennummer"
* serialNumber MS
  * ^definition = "Seriennummer"
* modelNumber MS
  * ^definition = "Modellnummer"
* type MS
  * ^definition = "Spezifischer Typ der außerkörperlichen Quelle als Code oder als Freitexteintrag."
  * coding MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains snomed 0..1 MS
  * coding[snomed] from ExtracorporalDeviceVS (example)
  * coding[snomed] ^patternCoding.system = $cs-sct
  * coding[snomed]
    * insert CodingMS
  * text MS  
* version MS
  * ^definition = "Version des Gerätes"
  * value MS  
* insert SubjectEu(patient)
* note MS
  * ^definition = "Feld für ergänzende Freitext-Angaben zur außerkörperlichen Quelle, die in der vorgegebenen Datenstruktur nicht erfasst werden können."
  * text 1.. MS
