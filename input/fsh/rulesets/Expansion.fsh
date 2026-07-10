RuleSet: Expansion(system, code, display)
* ^expansion.contains[+].system = {system}
* ^expansion.contains[=].code = #{code}
* ^expansion.contains[=].display = "{display}"


RuleSet: ExpansionVersion(system, code, display, version)
* ^expansion.contains[+].system = {system}
* ^expansion.contains[=].code = #{code}
* ^expansion.contains[=].display = "{display}"
* ^expansion.contains[=].version = "{version}"


RuleSet: ExpansionNoDisplay(system, code)
* ^expansion.contains[+].system = {system}
* ^expansion.contains[=].code = #{code}


RuleSet: ExpansionCanonical(system, code, display)
* ^expansion.contains[+].system = Canonical({system})
* ^expansion.contains[=].code = #{code}
* ^expansion.contains[=].display = "{display}"


RuleSet: ExpansionCanonicalVersion(system, code, display, version)
* ^expansion.contains[+].system = Canonical({system})
* ^expansion.contains[=].code = #{code}
* ^expansion.contains[=].display = "{display}"
* ^expansion.contains[=].version = "{version}"

RuleSet: ExpansionCanonicalNoDisplay(system, code)
* ^expansion.contains[+].system = Canonical({system})
* ^expansion.contains[=].code = #{code}


RuleSet: ExpansionCodeDeprecated
* ^expansion.contains[=].extension.url = $ti-vs-expansion-deprecated
* ^expansion.contains[=].extension.valueBoolean = true


RuleSet: ExpansionCodeInactive
* ^expansion.contains[=].inactive = true


RuleSet: ExpansionDesignation(code, value)
* ^expansion.contains[=].designation[+].language = #{code}
* ^expansion.contains[=].designation[=].value = "{value}"


RuleSet: VSExpansionDesignation(system, code, display, lang, langDisplay)
* insert Expansion({system}, {code}, [[{display}]])
* insert ExpansionDesignation({lang}, [[{langDisplay}]])


RuleSet: VSExpansionNoDisplayDesignation(system, code, lang, langDisplay)
* insert ExpansionNoDisplay({system}, {code})
* insert ExpansionDesignation({lang}, [[{langDisplay}]])


RuleSet: ExpansionTimestamp
* ^expansion.timestamp = "2026-06-24"
