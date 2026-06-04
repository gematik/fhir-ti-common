RuleSet: CodingMS
* system MS
* version MS
* code MS
* display MS

RuleSet: CodeableConceptMS
* coding MS
  * insert CodingMS

RuleSet: IdentifierMS
* system MS
* value MS

RuleSet: ExtensionMS
* url MS

RuleSet: ExtensionValueMS
* insert ExtensionMS
* value[x] MS

RuleSet: ExtensionBooleanMS
* insert ExtensionValueMS
* valueBoolean MS

RuleSet: ExtensionCodeMS
* insert ExtensionValueMS
* valueCode MS

RuleSet: ExtensionCodingMS
* insert ExtensionValueMS
* valueCoding
  * insert CodingMS

RuleSet: ExtensionStringMS
* insert ExtensionValueMS
* valueString MS


RuleSet: ReferenceMS
* reference MS
* identifier MS
  * insert IdentifierMS
* display MS

RuleSet: HumanNameMS
* use MS
* family MS
* given MS
* prefix MS
* suffix MS

RuleSet: AttachmentMS
* contentType MS
* data MS
* url MS

RuleSet: RatioMS
* numerator MS
  * insert QuantityMS
* denominator MS
  * insert QuantityMS

RuleSet: QuantityMS
* value MS
* unit MS
* system MS
* code MS
