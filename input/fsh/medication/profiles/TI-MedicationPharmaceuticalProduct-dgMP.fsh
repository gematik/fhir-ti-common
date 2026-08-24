Profile: TIMedicationPharmaceuticalProductDgMP
Parent: Medication
Id: ti-medication-pharmaceutical-product-dgmp
Title: "TI Pharmaceutical Product Medication dgMP"
Description: "Definiert die Medication-Ressource für eine Komponente einer 'Kombipackung' für den digitale Medikationsprozess (dgMP). Diese Profile sollen von TIMedicationDgMP abgeleitet werden. Aufgrund von Tooling-Problemen kann diese Vererbung derzeit jedoch nicht umgesetzt werden."
//TODO: as soon as the snapshotgenerator can deal with contained child-profiles remove the following insert statement and inherit from EPAMedication

* insert TIMedicationElements
// preserve the version
* ^version = "1.4.0"
// * ^date = "2026-06-30"
* ^status = #active

* contained ..0
* extension[type]
  * insert ExtensionCodingMS
  * valueCoding from $ti-medication-type-pharmaceutical-product-vs


* code
  * coding[pzn] 0..0
* ingredient
  * itemReference 0..0
    * ^short = "Eine Medication für ein pharmazeutisches Produkt innerhalb einer Kombipackung darf keine weiteren untergeordneten Medications enthalten.“"