// RuleSet: Expansion(system, code, display)
// * ^expansion.contains[+].system = {system}
// * ^expansion.contains[=].code = #{code}
// * ^expansion.contains[=].display = """{display}"""


// RuleSet: ExpansionNoDisplay(system, code)
// * ^expansion.contains[+].system = {system}
// * ^expansion.contains[=].code = #{code}


// RuleSet: ExpansionCanonical(system, code, display)
// * ^expansion.contains[+].system = Canonical({system})
// * ^expansion.contains[=].code = #{code}
// * ^expansion.contains[=].display = """{display}"""


// RuleSet: ExpansionCanonicalNoDisplay(system, code)
// * ^expansion.contains[+].system = Canonical({system})
// * ^expansion.contains[=].code = #{code}


// RuleSet: ExpansionCodeDeprecated
// * ^expansion.contains[=].extension.url = Canonical(ValueSetExpansionDeprecatedExt)
// * ^expansion.contains[=].extension.valueBoolean = true


// RuleSet: ExpansionCodeInactive
// * ^expansion.contains[=].inactive = true


// RuleSet: ExpansionDesignation(lang, value)
// * ^expansion.contains[=].designation[+].language = #{lang}
// * ^expansion.contains[=].designation[=].value = """{value}"""


// RuleSet: ExpansionTimestamp(timestamp)
// * ^expansion.timestamp = "{timestamp}"
