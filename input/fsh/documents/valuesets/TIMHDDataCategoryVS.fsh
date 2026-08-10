ValueSet: TIMHDDataCategoryVS
Id: ti-mhd-data-category-vs
Title: "TI MHD Data Category ValueSet"
Description: "Enthält alle Datenkategorien der Legal Policy"
* insert Meta-VS

// preserve the version
* ^version = "1.4.1"
// * ^date = "2026-09-30"
// * ^status = #active

* include codes from system $epa-data-category-medical-cs|1.0.7
* include codes from system $epa-data-category-other-cs|1.0.7

// * insert ExpansionTimestamp

// // expansion of $epa-data-category-medical-cs

// * insert ExpansionVersion($epa-data-category-medical-cs, reports, Befunde/Diagnosen/Berichte, 1.0.7)

// * insert ExpansionVersion($epa-data-category-medical-cs, practitioner, Hausarzt/Hausärztin, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-medical-cs, hospital, Krankenhaus, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-medical-cs, laboratory, Labor und Humangenetik, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-medical-cs, physiotherapy, Physiotherapeuten, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-medical-cs, dermatology, Dermatologie, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-medical-cs, gynaecology_urology, Urologie/Gynäkologie, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-medical-cs, dentistry_oms, Zahnheilkunde und Mund-Kiefer-Gesichtschirurgie, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-medical-cs, other_medical, Weitere Fachärzte/Fachärztinnen, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-medical-cs, other_non_medical, Weitere nicht-ärztliche Berufe, 1.0.7)
// * insert ExpansionCodeInactive

// expansion of $epa-data-category-other-cs

// * insert ExpansionVersion($epa-data-category-other-cs, emergency, Notfalldaten, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, eab, eArztbrief, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, dental, Zahnärztliche Dokumentation, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, child, Kinderuntersuchungsheft, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, pregnancy_childbirth, Schwangerschaft und Geburt, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, vaccination, Impfpass, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, patient, vom Versicherten eingestellte Dokumente, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, receipt, Quittungen, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, diga, DiGA, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, care, Pflegedokumente, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, eau, Elektronische Arbeitsunfähigkeitsbescheinigungen, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, other, in andere Kategorien nicht einzuordnende Dokumente\, eDMPs sowie Telemedizinisches Monitoring, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, technical, technische Dokumente, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, rehab, Heilbehandlung und Rehabilitation, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, transcripts, Elektronische Abschriften von der Patientenakte, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, health_risk_analysis, Gesundheitsrisiken, 1.0.7)
// * insert ExpansionVersion($epa-data-category-other-cs, audit, Zugriffsprotokolle, 1.0.7)

// * insert ExpansionVersion($epa-data-category-other-cs, emp, Elektronischer Medikationsplan, 1.0.7)
// * insert ExpansionCodeDeprecated

// * insert ExpansionVersion($epa-data-category-other-cs, childsrecord, Kinderuntersuchungsheft, 1.0.7)
// * insert ExpansionCodeDeprecated

// * insert ExpansionVersion($epa-data-category-other-cs, nfd, Notfalldaten, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-other-cs, dentalrecord, Zahnbonusheft, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-other-cs, mothersrecord, Schwangerschaft und Geburt, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-other-cs, patientdoc, vom Versicherten eingestellte Dokumente, 1.0.7)
// * insert ExpansionCodeInactive

// * insert ExpansionVersion($epa-data-category-other-cs, ega, Elektronische Gesundheitsakte (eGA\), 1.0.7)
// * insert ExpansionCodeInactive