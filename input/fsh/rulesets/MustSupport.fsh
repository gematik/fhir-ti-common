RuleSet: AttachmentMS
* contentType MS
* data MS
* url MS

RuleSet: AnnotationMS
* time MS
* text MS

RuleSet: CodingMS
* system MS
* version MS
* code MS
* display MS

RuleSet: CodeableConceptMS
* coding MS
  * insert CodingMS

RuleSet: DosageDgMPMS
* text MS
* timing MS
  * insert TimingMS
* doseAndRate MS
  * doseQuantity MS
    * insert QuantityMS

RuleSet: ExtensionMS
* url MS

RuleSet: ExtensionAnnotationMS
* insert ExtensionMS
* valueAnnotation MS

RuleSet: ExtensionBooleanMS
* insert ExtensionMS
* valueBoolean MS

RuleSet: ExtensionCodeMS
* insert ExtensionMS
* valueCode MS

RuleSet: ExtensionCodingMS
* insert ExtensionMS
* valueCoding
  * insert CodingMS

RuleSet: ExtensionDateTimeMS
* insert ExtensionMS
* valueDateTime MS

RuleSet: ExtensionStringMS
* insert ExtensionMS
* valueString MS

RuleSet: ExtensionIdentifierMS
* insert ExtensionMS
* valueIdentifier MS
  * insert IdentifierMS

RuleSet: ExtensionMarkdownMS
* insert ExtensionMS
* valueMarkdown MS

RuleSet: ExtensionPeriodMS
* insert ExtensionMS
* valuePeriod MS
  * insert PeriodMS

RuleSet: ExtensionRatioMS
* insert ExtensionMS
* valueRatio MS
  * insert RatioMS

RuleSet: ExtensionReferenceMS
* insert ExtensionMS
* valueReference MS
  * insert ReferenceMS

RuleSet: HumanNameMS
* use MS
* family MS
* given MS
* prefix MS
* suffix MS

RuleSet: IdentifierMS
* system MS
* value MS

RuleSet: PeriodMS
* start MS
* end MS

RuleSet: RatioMS
* numerator MS
  * insert QuantityMS
* denominator MS
  * insert QuantityMS

RuleSet: ReferenceMS
* reference MS
* identifier MS
  * insert IdentifierMS
* display MS

RuleSet: TimingMS
* repeat MS
  * bounds[x] MS
  * boundsDuration MS
    * code MS
    * system MS
    * unit MS
    * value MS
  * frequency MS
  * period MS
  * periodUnit MS
  * dayOfWeek MS
  * timeOfDay MS
  * when MS

RuleSet: QuantityMS
* value MS
* unit MS
* system MS
* code MS
