// TODO: Move to de.gematik.terminology

ValueSet: BodyStructureLocalisationVS
Id: body-structure-localisation
Title: "Lokalisation innerhalb Körperstelle SNOMED CT®"
Description: "Dieses Valueset enthält SNOMED CT® Codes zur Beschreibung der Lokalisation innerhalb einer Körperstelle."
* insert Meta-VS
* ^copyright = "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists."
* $cs-sct-de-20260515#7771000 "Left"
* $cs-sct-de-20260515#7771000 ^designation.language = #de
* $cs-sct-de-20260515#7771000 ^designation.value = "Links"
* $cs-sct-de-20260515#24028007 "Right"
* $cs-sct-de-20260515#24028007 ^designation.language = #de
* $cs-sct-de-20260515#24028007 ^designation.value = "Rechts"
* $cs-sct-de-20260515#51440002 "Right and left"
* $cs-sct-de-20260515#51440002 ^designation.language = #de
* $cs-sct-de-20260515#51440002 ^designation.value = "Rechts und links"
* $cs-sct-de-20260515#40415009 "Proximal"
* $cs-sct-de-20260515#40415009 ^designation.language = #de
* $cs-sct-de-20260515#40415009 ^designation.value = "Proximal"
* $cs-sct-de-20260515#46053002 "Distal"
* $cs-sct-de-20260515#46053002 ^designation.language = #de
* $cs-sct-de-20260515#46053002 ^designation.value = "Distal"
* $cs-sct-de-20260515#255554000 "Dorsal"
* $cs-sct-de-20260515#255549009 "Anterior"
* $cs-sct-de-20260515#255549009 ^designation.language = #de
* $cs-sct-de-20260515#255549009 ^designation.value = "Anterior"
* $cs-sct-de-20260515#26283006 "Superficial"
* $cs-sct-de-20260515#26283006 ^designation.language = #de
* $cs-sct-de-20260515#26283006 ^designation.value = "Oberflächlich"
* $cs-sct-de-20260515#795002 "Deep"
* $cs-sct-de-20260515#795002 ^designation.language = #de
* $cs-sct-de-20260515#795002 ^designation.value = "Tief"
* $cs-sct-de-20260515#57195005 "Basal"
* $cs-sct-de-20260515#57195005 ^designation.language = #de
* $cs-sct-de-20260515#57195005 ^designation.value = "Basal"
* $cs-sct-de-20260515#261183002 "Upper"
* $cs-sct-de-20260515#261183002 ^designation.language = #de
* $cs-sct-de-20260515#261183002 ^designation.value = "Obere/r/s"
* $cs-sct-de-20260515#261122009 "Lower"
* $cs-sct-de-20260515#261122009 ^designation.language = #de
* $cs-sct-de-20260515#261122009 ^designation.value = "Untere/r/s"
* $cs-sct-de-20260515#255561001 "Medial"
* $cs-sct-de-20260515#255561001 ^designation.language = #de
* $cs-sct-de-20260515#255561001 ^designation.value = "Medial"
* $cs-sct-de-20260515#49370004 "Lateral"
* $cs-sct-de-20260515#49370004 ^designation.language = #de
* $cs-sct-de-20260515#49370004 ^designation.value = "Lateral"
* $cs-sct-de-20260515#264217000 "Superior"
* $cs-sct-de-20260515#264217000 ^designation.language = #de
* $cs-sct-de-20260515#264217000 ^designation.value = "Superior"
* $cs-sct-de-20260515#261089000 "Inferior"
* $cs-sct-de-20260515#261089000 ^designation.language = #de
* $cs-sct-de-20260515#261089000 ^designation.value = "Inferior"
* $cs-sct-de-20260515#255551008 "Posterior"
* $cs-sct-de-20260515#255551008 ^designation.language = #de
* $cs-sct-de-20260515#255551008 ^designation.value = "Posterior"
* $cs-sct-de-20260515#351726001 "Below"
* $cs-sct-de-20260515#352730000 "Supra-"
* $cs-sct-de-20260515#3583002 "Caudal"
* $cs-sct-de-20260515#3583002 ^designation.language = #de
* $cs-sct-de-20260515#3583002 ^designation.value = "Kaudal"
* $cs-sct-de-20260515#66787007 "Cephalic"
* $cs-sct-de-20260515#66787007 ^designation.language = #de
* $cs-sct-de-20260515#66787007 ^designation.value = "Kranial"
* $cs-sct-de-20260515#26216008 "Central"
* $cs-sct-de-20260515#43674008 "Apical"
* $cs-sct-de-20260515#14414005 "Peripheral"
* $cs-sct-de-20260515#14414005 ^designation.language = #de
* $cs-sct-de-20260515#14414005 ^designation.value = "Peripher"
* $cs-sct-de-20260515#255481003 "Left upper quadrant"
* $cs-sct-de-20260515#255497008 "Right upper quadrant"
* $cs-sct-de-20260515#255480002 "Left lower quadrant"
* $cs-sct-de-20260515#255495000 "Right lower quadrant"
* ^expansion.identifier = "urn:uuid:701f9c64-a75c-11f1-8117-005056ad42c6"
* ^expansion.timestamp = 2026-09-03T07:58:08+02:00
* ^expansion.total = 28
* ^expansion.offset = 0
* ^expansion.contains[+].system = $cs-sct
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #40415009
* ^expansion.contains[=].display = "Proximal"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #46053002
* ^expansion.contains[=].display = "Distal"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #255554000
* ^expansion.contains[=].display = "Dorsal"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #255549009
* ^expansion.contains[=].display = "Anterior"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #26283006
* ^expansion.contains[=].display = "Superficial"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #795002
* ^expansion.contains[=].display = "Deep"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #57195005
* ^expansion.contains[=].display = "Basal"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #261183002
* ^expansion.contains[=].display = "Upper"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #261122009
* ^expansion.contains[=].display = "Lower"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #255561001
* ^expansion.contains[=].display = "Medial"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #49370004
* ^expansion.contains[=].display = "Lateral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #264217000
* ^expansion.contains[=].display = "Superior"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #261089000
* ^expansion.contains[=].display = "Inferior"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #255551008
* ^expansion.contains[=].display = "Posterior"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #351726001
* ^expansion.contains[=].display = "Below"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #352730000
* ^expansion.contains[=].display = "Supra-"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #3583002
* ^expansion.contains[=].display = "Caudal"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #66787007
* ^expansion.contains[=].display = "Cephalic"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #26216008
* ^expansion.contains[=].display = "Central"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #43674008
* ^expansion.contains[=].display = "Apical"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #14414005
* ^expansion.contains[=].display = "Peripheral"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #255481003
* ^expansion.contains[=].display = "Left upper quadrant"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #255497008
* ^expansion.contains[=].display = "Right upper quadrant"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #255480002
* ^expansion.contains[=].display = "Left lower quadrant"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #255495000
* ^expansion.contains[=].display = "Right lower quadrant"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #24028007
* ^expansion.contains[=].display = "Right (qualifier value)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #7771000
* ^expansion.contains[=].display = "Left (qualifier value)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = $cs-sct-de-20260515
* ^expansion.contains[=].code = #51440002
* ^expansion.contains[=].display = "Right and left (qualifier value)"