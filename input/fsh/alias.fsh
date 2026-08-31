//// Identifier
// National Identifiers
Alias: $identifier-kvid-10 = http://fhir.de/StructureDefinition/identifier-kvid-10
Alias: $identifier-bsnr = http://fhir.de/StructureDefinition/identifier-bsnr
Alias: $identifier-telematik-id = http://fhir.de/StructureDefinition/identifier-telematik-id
Alias: $identifier-kzva = http://fhir.de/StructureDefinition/identifier-kzva
Alias: $identifier-iknr = http://fhir.de/StructureDefinition/identifier-iknr
Alias: $identifier-lanr = http://fhir.de/StructureDefinition/identifier-lanr
Alias: $identifier-zanr = http://fhir.de/StructureDefinition/identifier-zanr

// National Namespaces
Alias: $sid-identifier-kvid-10 = http://fhir.de/sid/gkv/kvid-10
Alias: $sid-identifier-telematik-id  = https://gematik.de/fhir/sid/telematik-id

// gematik Identifiers
Alias: $epa-medication-unique-identifier = https://gematik.de/fhir/epa-medication/sid/epa-medication-unique-identifier
Alias: $rx-originator-process-identifier = https://gematik.de/fhir/epa-medication/sid/rx-originator-process-identifier
Alias: $rx-prescription-process-identifier = https://gematik.de/fhir/epa-medication/sid/rx-prescription-process-identifier

// gematik Namespaces
Alias: $sid-medication-plan-identifier = https://gematik.de/fhir/sid/emp-identifier


//// Terminology
// International Code Systems
Alias: $cs-operation-outcome = http://terminology.hl7.org/CodeSystem/operation-outcome
Alias: $cs-ucum = http://unitsofmeasure.org
Alias: $loinc = http://loinc.org
Alias: $cs-sct = http://snomed.info/sct
Alias: $cs-sct-de-20260515 = http://snomed.info/sct|http://snomed.info/sct/11000274103/version/20260515
Alias: $cs-orphanet = http://www.orpha.net

// International Value Sets
Alias: $hl7-vs-ucum-units = http://hl7.org/fhir/ValueSet/ucum-units

// National Code Systems
Alias: $cs-ask = http://fhir.de/CodeSystem/ask
Alias: $cs-atc-de = http://fhir.de/CodeSystem/bfarm/atc
Alias: $cs-pzn = http://fhir.de/CodeSystem/ifa/pzn
Alias: $icd-10-gm = http://fhir.de/CodeSystem/bfarm/icd-10-gm

// Schlüsseltabellen CS
Alias: $KBV_CS_SFHIR_KBV_DARREICHUNGSFORM = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM
Alias: $cs-kbv-narcotics = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_NARCOTIC_LABEL

// Schlüsseltabellen VS
Alias: $KBV_VS_SFHIR_BAR2_ARZTNRFACHGRUPPE = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_BAR2_ARZTNRFACHGRUPPE
Alias: $vs-kbv-narcotics = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_KBV_NARCOTIC_LABEL
Alias: $vs-kbv-sfhir-bmp-dosiereinheit = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_BMP_DOSIEREINHEIT
Alias: $vs-kbv-medication-darreichungsform = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_KBV_DARREICHUNGSFORM

// IFA CS
Alias: $cs-ifa-medication-darreichungsform = https://fhir.ifaffm.de/CodeSystem/IFA_DARREICHUNGSFORM

// TI CS
Alias: $epa-drug-category-cs = https://gematik.de/fhir/epa-medication/CodeSystem/epa-drug-category-cs

// TI VS
Alias: $ti-drug-category-vs = https://gematik.de/fhir/terminology/ValueSet/ti-drug-category-vs
Alias: $ti-organization-type-vs = https://gematik.de/fhir/directory/ValueSet/OrganizationTypeVS
Alias: $ti-organization-profession-type-oid-vs = https://gematik.de/fhir/directory/ValueSet/OrganizationProfessionOIDTypeVS
Alias: $ti-practitioner-qualification-vs = https://gematik.de/fhir/directory/ValueSet/PractitionerQualificationVS
Alias: $ti-medication-type-pharmaceutical-product-vs = https://gematik.de/fhir/terminology/ValueSet/ti-medication-type-pharmaceutical-product-vs
Alias: $ti-medication-type-product-vs = https://gematik.de/fhir/terminology/ValueSet/ti-medication-type-product-vs
Alias: $ti-medication-type-vs = https://gematik.de/fhir/terminology/ValueSet/ti-medication-type-vs
Alias: $ti-medication-dispense-status-vs = https://gematik.de/fhir/terminology/ValueSet/ti-medication-dispense-status-vs
Alias: $ti-medication-dispense-category-vs = https://gematik.de/fhir/terminology/ValueSet/ti-medication-dispense-category-vs
Alias: $ti-medication-request-status-vs = https://gematik.de/fhir/terminology/ValueSet/ti-medication-request-status-vs

// TI/ePA Document Terminology
/// ValueSets
Alias: $epa-xds-type-code-vs = https://gematik.de/fhir/terminology/ValueSet/epa-xds-type-code-vs
Alias: $epa-xds-class-code-vs = https://gematik.de/fhir/terminology/ValueSet/epa-xds-class-code-vs
Alias: $epa-mhd-security-label-vs = https://gematik.de/fhir/terminology/ValueSet/epa-mhd-security-label-vs
Alias: $epa-xds-mime-type-vs = https://gematik.de/fhir/terminology/ValueSet/epa-xds-mime-type-vs
Alias: $epa-xds-language-code-vs = https://gematik.de/fhir/terminology/ValueSet/epa-xds-language-code-vs
Alias: $epa-xds-format-code-vs = https://gematik.de/fhir/terminology/ValueSet/epa-xds-format-code-vs
Alias: $epa-xds-event-code-vs = https://gematik.de/fhir/terminology/ValueSet/epa-xds-event-code-vs
Alias: $epa-xds-healthcare-facility-type-code-vs = https://gematik.de/fhir/terminology/ValueSet/epa-xds-healthcare-facility-type-code-vs
Alias: $epa-xds-practice-setting-code-vs = https://gematik.de/fhir/terminology/ValueSet/epa-xds-practice-setting-code-vs
Alias: $epa-mhd-document-relationship-type-vs = https://gematik.de/fhir/terminology/ValueSet/epa-mhd-document-relationship-type-vs
Alias: $epa-xds-confidentiality-code-vs-url = https://gematik.de/fhir/terminology/ValueSet/epa-xds-confidentiality-code-vs
Alias: $ti-vs-expansion-deprecated = https://gematik.de/fhir/terminology/StructureDefinition/valueset-expansion-deprecated

Alias: $epa-data-category-other-cs = https://gematik.de/fhir/terminology/CodeSystem/epa-data-category-other-cs
/// CodeSystems
Alias: $epa-data-category-medical-cs = https://gematik.de/fhir/terminology/CodeSystem/epa-data-category-medical-cs
Alias: $epa-data-category-medical-cs-oid = urn:oid:1.2.276.0.76.5.511
Alias: $epa-data-category-other-vs = https://gematik.de/fhir/terminology/ValueSet/epa-data-category-other-vs



//// Extensions

// R5
// Extensions r5
Alias: $medicationRequest-effectiveDosePeriod-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod
Alias: $medicationRequest-renderedDosageInstruction-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction
Alias: $medicationDispense-renderedDosageInstruction-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction
Alias: $medicationStatement-renderedDosageInstruction-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.renderedDosageInstruction

//HL7
Alias: $hl7-note = http://hl7.org/fhir/StructureDefinition/note

//// International
// HL7
Alias: $cs-expectation = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation|4.0.1
Alias: $hl7-task-status-cs = http://hl7.org/fhir/task-status


//// Dataprofiles
// National
Alias: $coding-icd-10-gm = http://fhir.de/StructureDefinition/CodingICD10GM


//// FHIR
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
