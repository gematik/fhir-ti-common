RuleSet: renderedDosageInstructionDefinition
* extension[renderedDosageInstruction] MS
  * ^short = "Vollständige Darstellung der Dosierungsanweisungen (generiert aus den Dosage-Elementen)."
  * ^definition = "Ein menschenlesbarer, vollständiger Text der Dosierungsanweisungen. Der Text wird aus den strukturierten Dosage-Elementen generiert und dient der patientensicheren Darstellung der Dosierung. Er soll die maschinenlesbaren Angaben konsistent wiedergeben und in einer für Patient:innen verständlichen Form bereitstellen."
  * insert ExtensionMarkdownMS
* extension[generatedDosageInstructionsMeta] MS
  * ^short = "Metadaten zu den generierten Dosierungsanweisungen"
  * ^definition = "Diese Extension enthält zusätzliche Metadaten zu den automatisch generierten Dosierungsanweisungen, wie z.B. Informationen zur Generierung oder zum Ursprung der Daten."
  * insert ExtensionMS
  * extension[language] MS
    * insert ExtensionCodeMS
  * extension[algorithmVersion] MS
    * insert ExtensionStringMS
