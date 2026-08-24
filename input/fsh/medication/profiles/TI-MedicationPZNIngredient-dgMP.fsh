Profile: TIMedicationPZNIngredientDgMP
Parent: Medication
Id: ti-medication-pzn-ingredient-dgmp
Title: "TI Medication PZN Ingredient dgMP"
Description: "Definiert die Medication-Ressource für einen PZN-Bestandteil einer Rezeptur zur Verwendung in der TI."
//TODO: as soon as the snapshotgenerator can deal with contained child-profiles remove the following insert statement and inherit from EPAMedication
* insert TIMedicationElements
// preserve the version
* ^version = "1.4.0"
// * ^date = "2026-06-30"
* ^status = #active

* contained ..0
* extension[type]
  * insert ExtensionCodingMS
  * valueCoding from $ti-medication-type-product-vs

* code
  * coding[pzn] 1..
* ingredient
  * itemReference ..0
    * ^short = "Ein Bestandteil einer Rezeptur darf keine weiteren untergeordneten Medications enthalten."
* batch MS
  * lotNumber MS