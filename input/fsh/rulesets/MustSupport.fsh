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
* value[x] MS

RuleSet: ExtensionStringMS
* insert ExtensionMS
* valueString MS

RuleSet: ExtensionCodingMS
* insert ExtensionMS
* valueCoding
  * insert CodingMS

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
