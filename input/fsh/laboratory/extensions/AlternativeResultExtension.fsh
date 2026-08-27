Extension: AlternativeResultExtension
Id: alternative-result-extension
Title: "Messergebnis Alternative Einheit"
Description: "Diese Extension bildet das Resultat einer Laboruntersuchung mit einer Alternativeinheit ab."
Context: Observation
* . ^definition = "Diese Extension bildet das Resultat einer Laboruntersuchung mit einer Alternativeinheit ab."
* insert Meta
* value[x] ..0
* extension contains
  value 1..1 and
  referenceRange 0..1 and
  zlog 0..1
* extension[value]
  * value[x] 1..
  * value[x] only Quantity or Range or Ratio
  * valueQuantity
    * ^patternQuantity.system = $cs-ucum
    * value 1..
    * unit 1..
    * system 1..
    * code 1..
  * valueRange
    * low
      * ^patternQuantity.system = $cs-ucum
      * value 1..
      * unit 1..
      * system 1..
      * code 1..
    * high
      * ^patternQuantity.system = $cs-ucum
      * value 1..
      * unit 1..
      * system 1..
      * code 1..
  * valueRatio
    * numerator 1..
      * ^patternQuantity.system = $cs-ucum
      * value 1..
      * unit 1..
      * system 1..
      * code 1..
    * denominator 1..
      * ^patternQuantity.system = $cs-ucum
      * value 1..
      * unit 1..
      * system 1..
      * code 1..
* extension[referenceRange]
  * value[x] only Range
  * valueRange 1..
    * low
      * ^patternQuantity.system = $cs-ucum
      * value 1..
      * unit 1..
      * system 1..
      * code 1..
    * high
      * ^patternQuantity.system = $cs-ucum
      * value 1..
      * unit 1..
      * system 1..
      * code 1..
* extension[zlog]
  * value[x] only decimal
  * valueDecimal 1..
