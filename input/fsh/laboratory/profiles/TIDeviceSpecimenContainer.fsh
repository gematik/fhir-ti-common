Profile: TIDeviceSpecimenContainer
Parent: Device
Id: ti-device-specimen-container
Title: "TI Device Specimen Container"
Description: "In diesem Profil werden Informationen zum Probenbehälter angegeben, z. B. Blutröhrchen, steriler Urinprobenbehälter."
* . ^definition = "In diesem Profil werden Informationen zum Probenbehälter angegeben, z. B. Blutröhrchen, steriler Urinprobenbehälter."
* insert Meta-With-Versioning
* identifier MS
  * ^definition = "Hier werden eineindeutige Produktnummern angegeben. Diese stellen einen eineindeutigen (Bijektiven) Identifier dar.\n"
  * ^short = "Identifikator des Probenbehälters"
  * value MS
  * type MS
* definition MS
  * ^definition = "In diesem Element wird die DeviceDefinition für die Kategorisierung als Probenbehälters referenziert."  
  * insert ReferenceMS
* udiCarrier MS
  * ^definition = "Das Akronym UDI steht für Unique Device Identification und beschreibt ein Identifikationssystem mit eigenen Kennzahlen für jedes Medizinprodukt, was die Rückverfolgbarkeit des Produkts weltweit gewährleistet. Mit der Medical Device Regulation (MDR) zum 26. Mai 2020 wurde das System für alle Medizinprodukte inkl. In-vitro-Diagnostika verpflichtend (Ausnahmen Sonderanfertigungen). Für die letztendliche Anbringung am Produkt (UDI-Träger) selbst gibt es, gestuft nach Produktklassen, Fristen ab 2021. Voraussetzung für die Umsetzung und Erstellung der UDI ist die Registrierung bei einer der Zuteilungsstellen (aktuell: GS1, IFA, HIBCC, ICCBBA). Die UDI-Identifikation beinhaltet zwei Teile:\n
* UDI-DI: Device Identifier (DI) - statischer Teil der Kennung
* UDI-PI: Production Identifier (PI) - dynamischer Teil der Kennung, enthält Angaben zu Verfallsdatum, Lotnummer und -größe (LOT), Seriennummer (SN), Herstellungsdatum"
  * deviceIdentifier MS
  * ^definition  = "UDI-DI ist der \"Device Identifier\". Es ist der statische Teil der UDI. Er enthält die Kennung der gewählten Zuteilungsstelle, die Kennung des Herstellers / Etikettierers, den Referenzcode des Produkts und kann auch eine Kennzeichnung für eine bestimmte Verpackungsebene enthalten."
* distinctIdentifier MS
  * ^definition = "Teil der UDI-PI"
* manufactureDate MS
  * ^definition = "Herstellungsdatum des Produktes"
* expirationDate MS
  * ^definition = "Verfallsdatum  des Produktes"
* lotNumber MS
  * ^definition = "Chargennummer des Produktes"
* serialNumber MS
  * ^definition = "Seriennummer des Produktes"
* modelNumber MS
  * ^definition = "Modellnummer des Produktes"
* type MS
  * ^definition = "Spezifischer Typ des Probenbehälters als Code oder als Freitexteintrag."
  * coding MS
    * ^definition = "Hier kann der spezifische Probenbehälter-Typ in Form eines Codes angegeben werden."
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains snomed 0..1 MS
  * coding[snomed] from $specimen-container-type (example)
    * ^definition = "Hier wird ein Code aus SNOMED CT® angegeben."
  * coding[snomed] ^patternCoding.system = $cs-sct
  * coding[snomed]
    * insert CodingMS
  * text MS
    * ^definition = "Freitextbezeichnung für den spezifischen Typ des Probenbehälters."   
* note MS
  * ^definition = "Feld für ergänzende Freitext-Angaben zum Probenbehälter, die in der vorgegebenen Datenstruktur nicht erfasst werden können."
  * text MS
