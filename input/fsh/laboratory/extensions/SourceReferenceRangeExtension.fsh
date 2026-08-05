Extension: SourceReferenceRangeExtension
Id: source-reference-range
Title: "Quelle der Richtgrenze"
Description: "Diese Extension bildet eine Quelle der Richtgrenze ab."
Context: Observation.referenceRange
* insert Meta
* . ^definition = "Diese Extension bildet eine Quelle der Richtgrenze ab."
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
  * coding
    * system 1..1
    * version 0..1
    * code 1..1
    * display 1..1
    * userSelected ..0
  * text 1..1
