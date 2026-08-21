Profile: TIDeviceLaboratoryAnalyzer
Parent: DeviceMeasuringLabReportEu
Id: ti-device-laboratory-analyzer
Title: "TI Device Laboratory Analyzer"
Description: "In diesem Profil werden Informationen zum Analysegerät angegeben, mit dem die Messung durchgeführt wird."
* . ^definition = "In diesem Profil werden Informationen zum Analysegerät angegeben, mit dem die Messung durchgeführt wird."
* insert Meta-With-Versioning
* identifier MS
  * ^definition = "Hier werden eineindeutige Produktnummern angegeben. Diese stellen einen eineindeutigen (Bijektiven) Identifier dar.\n"
  * ^short = "Produktidentifikator des Laboranalysegerätes"
  * insert IdentifierMS
  * type MS
* definition MS
  * ^definition = "In diesem Element wird die DeviceDefinition für die Kategorisierung als Laboranalysegerät referenziert."
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
  * ^definition = "Herstellungsdatum des Geräts"
* expirationDate MS
  * ^definition = "Verfallsdatum  des Geräts"
* lotNumber MS
  * ^definition = "Chargennummer des Geräts"
* serialNumber MS
  * ^definition = "Seriennummer des Geräts"
* deviceName MS
  * ^definition = "Hier wird der konkrete Name (z. B. der Modellname) des betreffenden Gerätes angegeben."
  * name MS
    * ^definition = "Hier wird der konkrete Name des Gerätes angegeben."
  * type MS
    * ^definition = "Hier wird angegeben, um welche Art von Namen für das Gerät es sich handelt."
* deviceName[manDeviceName] MS
* deviceName[modelName] MS
* modelNumber MS
  * ^definition = "Modellnummer des Geräts"
* type MS
  * ^definition = "Spezifischer Typ des Laboranalysegerätes als Code oder als Freitexteintrag."
  * coding MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains snomed 0..1 MS
  * coding[snomed] from LaboratoryAnalyzerVS (example)
  * coding[snomed] ^patternCoding.system = $cs-sct
  * coding[snomed]
    * insert CodingMS
  * text MS
* version MS
  * ^definition = "Version des Gerätes"
  * value MS
* note MS
  * ^definition = "Feld für ergänzende Freitext-Angaben zum Laboranalysegerät, die in der vorgegebenen Datenstruktur nicht erfasst werden können."
  * text MS
