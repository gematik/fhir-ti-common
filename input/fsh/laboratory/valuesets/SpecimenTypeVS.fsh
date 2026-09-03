// TODO: Move to de.gematik.terminology

ValueSet: SpecimenTypeVS
Id: specimen-type
Title: "Probenart SNOMED CT®"
Description: "Dieses Valueset enthält SNOMED CT® Codes zur Beschreibung der Probenart."
* insert Meta-VS
* ^copyright = "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists."
* codes from system $cs-sct-de-20260515 where concept descendent-of "123038009"

// * ^expansion.identifier = "urn:uuid:740ee544-a75c-11f1-ae54-005056ad42c6"
// * ^expansion.timestamp = 2026-09-03T07:58:15+02:00
// * ^expansion.total = 1841
// * ^expansion.offset = 0
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003517007
// * ^expansion.contains[=].display = "Freeze dried specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003522007
// * ^expansion.contains[=].display = "Environmental swab from animal burrow"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003705007
// * ^expansion.contains[=].display = "Drain tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003706008
// * ^expansion.contains[=].display = "Specimen from drain tip"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003707004
// * ^expansion.contains[=].display = "Drain device submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003708009
// * ^expansion.contains[=].display = "Specimen from drain device"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003709001
// * ^expansion.contains[=].display = "Tube submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003710006
// * ^expansion.contains[=].display = "Specimen from tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003711005
// * ^expansion.contains[=].display = "Specimen from prosthetic joint"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003712003
// * ^expansion.contains[=].display = "Prosthetic joint submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003713008
// * ^expansion.contains[=].display = "Prosthetic heart valve submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1003714002
// * ^expansion.contains[=].display = "Specimen from prosthetic heart valve"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #105811000087105
// * ^expansion.contains[=].display = "Specimen from intestine obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110893002
// * ^expansion.contains[=].display = "Cutaneous cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110894008
// * ^expansion.contains[=].display = "Mammary cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110896005
// * ^expansion.contains[=].display = "Subcutaneous cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110897001
// * ^expansion.contains[=].display = "Bone marrow cytological material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110898006
// * ^expansion.contains[=].display = "Lymph node cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110899003
// * ^expansion.contains[=].display = "Breast nipple cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110900008
// * ^expansion.contains[=].display = "Skeletal muscle cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110901007
// * ^expansion.contains[=].display = "Bone cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110902000
// * ^expansion.contains[=].display = "Upper respiratory tract cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110903005
// * ^expansion.contains[=].display = "Nasal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110904004
// * ^expansion.contains[=].display = "Accessory sinus cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110905003
// * ^expansion.contains[=].display = "Nasopharyngeal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110906002
// * ^expansion.contains[=].display = "Lower respiratory tract cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110907006
// * ^expansion.contains[=].display = "Epiglottic cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110908001
// * ^expansion.contains[=].display = "Laryngeal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110909009
// * ^expansion.contains[=].display = "Vocal cord cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110910004
// * ^expansion.contains[=].display = "Lung cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110912007
// * ^expansion.contains[=].display = "Bronchial cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110913002
// * ^expansion.contains[=].display = "Pleural cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110914008
// * ^expansion.contains[=].display = "Right upper lobe bronchus cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110915009
// * ^expansion.contains[=].display = "Right pleural cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110916005
// * ^expansion.contains[=].display = "Right lower lobe bronchus cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110917001
// * ^expansion.contains[=].display = "Left pleural cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110918006
// * ^expansion.contains[=].display = "Left upper lobe bronchus cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110919003
// * ^expansion.contains[=].display = "Pericardial cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110920009
// * ^expansion.contains[=].display = "Tracheal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110921008
// * ^expansion.contains[=].display = "Right middle lobe bronchus cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110922001
// * ^expansion.contains[=].display = "Cytologic material from left main bronchus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110923006
// * ^expansion.contains[=].display = "Left lower lobe bronchus cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110924000
// * ^expansion.contains[=].display = "Cytologic material from right main bronchus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110925004
// * ^expansion.contains[=].display = "Cytologic material of mouth"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110926003
// * ^expansion.contains[=].display = "Gallbladder cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110927007
// * ^expansion.contains[=].display = "Liver cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110928002
// * ^expansion.contains[=].display = "Bile duct cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110929005
// * ^expansion.contains[=].display = "Pancreatic cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110930000
// * ^expansion.contains[=].display = "Salivary gland cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110931001
// * ^expansion.contains[=].display = "Penis cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110932008
// * ^expansion.contains[=].display = "Parotid gland cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110933003
// * ^expansion.contains[=].display = "Prostate cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110934009
// * ^expansion.contains[=].display = "Pharyngeal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110935005
// * ^expansion.contains[=].display = "Testis cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110936006
// * ^expansion.contains[=].display = "Gastric cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110937002
// * ^expansion.contains[=].display = "Seminal vesicle cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110938007
// * ^expansion.contains[=].display = "Duodenal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110939004
// * ^expansion.contains[=].display = "Vas deferens cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110940002
// * ^expansion.contains[=].display = "Ileal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110941003
// * ^expansion.contains[=].display = "Epididymis cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110942005
// * ^expansion.contains[=].display = "Rectal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110943000
// * ^expansion.contains[=].display = "Renal pelvis cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110944006
// * ^expansion.contains[=].display = "Peritoneal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110945007
// * ^expansion.contains[=].display = "Vulva cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110946008
// * ^expansion.contains[=].display = "Upper urinary tract cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110947004
// * ^expansion.contains[=].display = "Vagina cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110948009
// * ^expansion.contains[=].display = "Kidney cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110949001
// * ^expansion.contains[=].display = "Cervix cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110950001
// * ^expansion.contains[=].display = "Urinary bladder cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110951002
// * ^expansion.contains[=].display = "Endocervical cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110952009
// * ^expansion.contains[=].display = "Submandibular gland cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110953004
// * ^expansion.contains[=].display = "Vaginal and cervical cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110954005
// * ^expansion.contains[=].display = "Small intestine cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110955006
// * ^expansion.contains[=].display = "Endometrium cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110956007
// * ^expansion.contains[=].display = "Colonic cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110957003
// * ^expansion.contains[=].display = "Fallopian tube cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110958008
// * ^expansion.contains[=].display = "Urinary tract cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110959000
// * ^expansion.contains[=].display = "Placenta cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110960005
// * ^expansion.contains[=].display = "Ureter cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110961009
// * ^expansion.contains[=].display = "Chorion cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110962002
// * ^expansion.contains[=].display = "Oesophageal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110963007
// * ^expansion.contains[=].display = "Anal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110964001
// * ^expansion.contains[=].display = "Lower urinary tract cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110965000
// * ^expansion.contains[=].display = "Urethra cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110966004
// * ^expansion.contains[=].display = "Jejunal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110967008
// * ^expansion.contains[=].display = "Amnion cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110968003
// * ^expansion.contains[=].display = "Fetal cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110969006
// * ^expansion.contains[=].display = "Cerebrospinal fluid cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #110970007
// * ^expansion.contains[=].display = "Cerebroventricular fluid cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1149105007
// * ^expansion.contains[=].display = "Oropharyngeal washings"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116155002
// * ^expansion.contains[=].display = "Ampulla of Vater cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116156001
// * ^expansion.contains[=].display = "Gastrointestinal tract cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116157005
// * ^expansion.contains[=].display = "Heart cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116158000
// * ^expansion.contains[=].display = "Large intestine cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116159008
// * ^expansion.contains[=].display = "Upper aerodigestive tract cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116160003
// * ^expansion.contains[=].display = "Thyroid cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116161004
// * ^expansion.contains[=].display = "Fine needle aspirate of thyroid, cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116162006
// * ^expansion.contains[=].display = "Thyroid cytologic material, processed intraoperatively"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #116213003
// * ^expansion.contains[=].display = "Ovary cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1163592005
// * ^expansion.contains[=].display = "Swab from paraurethral gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1172660005
// * ^expansion.contains[=].display = "Tissue specimen from extrahepatic bile duct obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1173097006
// * ^expansion.contains[=].display = "Specimen from anus and/or rectum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1173996004
// * ^expansion.contains[=].display = "Tissue specimen from polyp obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1177151008
// * ^expansion.contains[=].display = "Excised mesorectum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1179252003
// * ^expansion.contains[=].display = "Slide submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119294007
// * ^expansion.contains[=].display = "Dried blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119295008
// * ^expansion.contains[=].display = "Specimen obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119297000
// * ^expansion.contains[=].display = "Blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119298005
// * ^expansion.contains[=].display = "Mixed venous blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119299002
// * ^expansion.contains[=].display = "Specimen from patient"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119300005
// * ^expansion.contains[=].display = "Specimen from blood product"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119301009
// * ^expansion.contains[=].display = "Plant specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119302002
// * ^expansion.contains[=].display = "Mushroom specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119303007
// * ^expansion.contains[=].display = "Microbial isolate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119304001
// * ^expansion.contains[=].display = "Specimen from blood bag"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119305000
// * ^expansion.contains[=].display = "Specimen from plasma bag"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119307008
// * ^expansion.contains[=].display = "Specimen from endotracheal tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119308003
// * ^expansion.contains[=].display = "Cannula submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119309006
// * ^expansion.contains[=].display = "Arterial line submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119311002
// * ^expansion.contains[=].display = "Catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119312009
// * ^expansion.contains[=].display = "Catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119313004
// * ^expansion.contains[=].display = "Implantable venous catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119314005
// * ^expansion.contains[=].display = "Electrode submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119316007
// * ^expansion.contains[=].display = "Non-biological fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119317003
// * ^expansion.contains[=].display = "Gaseous material specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119318008
// * ^expansion.contains[=].display = "Water specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119319000
// * ^expansion.contains[=].display = "Drug specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119320006
// * ^expansion.contains[=].display = "Food specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119321005
// * ^expansion.contains[=].display = "Milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119323008
// * ^expansion.contains[=].display = "Pus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119324002
// * ^expansion.contains[=].display = "Specimen of unknown material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119325001
// * ^expansion.contains[=].display = "Tissue specimen from skin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119326000
// * ^expansion.contains[=].display = "Hair specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119327009
// * ^expansion.contains[=].display = "Nail specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119328004
// * ^expansion.contains[=].display = "Mother's milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119329007
// * ^expansion.contains[=].display = "Colostrum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119331003
// * ^expansion.contains[=].display = "Skeletal muscle specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119332005
// * ^expansion.contains[=].display = "Synovial fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119333000
// * ^expansion.contains[=].display = "Fibroblast specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119334006
// * ^expansion.contains[=].display = "Sputum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119335007
// * ^expansion.contains[=].display = "Coughed sputum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119336008
// * ^expansion.contains[=].display = "Exhaled air specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119337004
// * ^expansion.contains[=].display = "Inhaled gas specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119338009
// * ^expansion.contains[=].display = "Dentin specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119339001
// * ^expansion.contains[=].display = "Stool specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119340004
// * ^expansion.contains[=].display = "Meconium specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119341000
// * ^expansion.contains[=].display = "Bile specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119342007
// * ^expansion.contains[=].display = "Saliva specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119343002
// * ^expansion.contains[=].display = "Pancreatic fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119344008
// * ^expansion.contains[=].display = "Specimen from genital system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119345009
// * ^expansion.contains[=].display = "Menstrual blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119346005
// * ^expansion.contains[=].display = "Egg yolk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119347001
// * ^expansion.contains[=].display = "Seminal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119348006
// * ^expansion.contains[=].display = "Seminal plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119349003
// * ^expansion.contains[=].display = "Spermatozoa specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119350003
// * ^expansion.contains[=].display = "Calculus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119351004
// * ^expansion.contains[=].display = "Erythrocyte specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119352006
// * ^expansion.contains[=].display = "Macrophage specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119353001
// * ^expansion.contains[=].display = "Lymphocyte specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119355008
// * ^expansion.contains[=].display = "Polymorphonuclear neutrophil specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119356009
// * ^expansion.contains[=].display = "Eosinophil specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119357000
// * ^expansion.contains[=].display = "Basophil specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119358005
// * ^expansion.contains[=].display = "Platelet specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119359002
// * ^expansion.contains[=].display = "Bone marrow specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119361006
// * ^expansion.contains[=].display = "Plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119362004
// * ^expansion.contains[=].display = "Platelet poor plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119363009
// * ^expansion.contains[=].display = "Platelet rich plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119364003
// * ^expansion.contains[=].display = "Serum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119365002
// * ^expansion.contains[=].display = "Specimen from wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119366001
// * ^expansion.contains[=].display = "Specimen from wound abscess"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119367005
// * ^expansion.contains[=].display = "Specimen from burn injury"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119368000
// * ^expansion.contains[=].display = "Specimen from cyst"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119369008
// * ^expansion.contains[=].display = "Specimen from ulcer"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119370009
// * ^expansion.contains[=].display = "Specimen from fistula"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119371008
// * ^expansion.contains[=].display = "Specimen from abscess"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119373006
// * ^expansion.contains[=].display = "Amniotic fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119376003
// * ^expansion.contains[=].display = "Tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119377007
// * ^expansion.contains[=].display = "Myocardial specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119378002
// * ^expansion.contains[=].display = "Endocardial specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119379005
// * ^expansion.contains[=].display = "Specimen from stomach"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119380008
// * ^expansion.contains[=].display = "Specimen from small intestine"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119381007
// * ^expansion.contains[=].display = "Specimen from large intestine"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119382000
// * ^expansion.contains[=].display = "Specimen from colon"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119383005
// * ^expansion.contains[=].display = "Specimen from liver"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119384004
// * ^expansion.contains[=].display = "Specimen from right fallopian tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119385003
// * ^expansion.contains[=].display = "Specimen from left fallopian tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119386002
// * ^expansion.contains[=].display = "Specimen from prostate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119388001
// * ^expansion.contains[=].display = "Specimen from internal nose"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119389009
// * ^expansion.contains[=].display = "Specimen from throat"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119390000
// * ^expansion.contains[=].display = "Specimen from trachea"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119391001
// * ^expansion.contains[=].display = "Specimen from bronchus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119392008
// * ^expansion.contains[=].display = "Specimen from anus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119393003
// * ^expansion.contains[=].display = "Specimen from urethra"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119394009
// * ^expansion.contains[=].display = "Specimen from vagina"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119395005
// * ^expansion.contains[=].display = "Specimen from uterine cervix"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119396006
// * ^expansion.contains[=].display = "Specimen from endometrium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119397002
// * ^expansion.contains[=].display = "Specimen from penis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119398007
// * ^expansion.contains[=].display = "Specimen from brain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119399004
// * ^expansion.contains[=].display = "Specimen from eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119400006
// * ^expansion.contains[=].display = "Specimen from cornea"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119401005
// * ^expansion.contains[=].display = "Specimen from conjunctiva"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #119403008
// * ^expansion.contains[=].display = "Specimen from placenta"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1201985008
// * ^expansion.contains[=].display = "Tissue block specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122550002
// * ^expansion.contains[=].display = "Specimen obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122551003
// * ^expansion.contains[=].display = "Peripheral blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122552005
// * ^expansion.contains[=].display = "Arterial blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122553000
// * ^expansion.contains[=].display = "Blood specimen obtained from umbilicus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122554006
// * ^expansion.contains[=].display = "Capillary blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122555007
// * ^expansion.contains[=].display = "Venous blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122556008
// * ^expansion.contains[=].display = "Cord blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122557004
// * ^expansion.contains[=].display = "Cord blood specimen from foetus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122558009
// * ^expansion.contains[=].display = "Blood specimen from blood product"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122559001
// * ^expansion.contains[=].display = "Blood specimen from control"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122560006
// * ^expansion.contains[=].display = "Blood specimen from blood donor"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122561005
// * ^expansion.contains[=].display = "Blood specimen from patient"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122562003
// * ^expansion.contains[=].display = "Blood specimen from newborn"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122563008
// * ^expansion.contains[=].display = "Specimen from blood bag from patient"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122564002
// * ^expansion.contains[=].display = "Specimen from blood bag from blood product"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122565001
// * ^expansion.contains[=].display = "Urinary catheter specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122566000
// * ^expansion.contains[=].display = "Fluid specimen from wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122567009
// * ^expansion.contains[=].display = "Urine sediment specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122568004
// * ^expansion.contains[=].display = "Exudate specimen from wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122569007
// * ^expansion.contains[=].display = "Sweat specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122571007
// * ^expansion.contains[=].display = "Pericardial fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122572000
// * ^expansion.contains[=].display = "Vomitus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122573005
// * ^expansion.contains[=].display = "Gastric contents specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122574004
// * ^expansion.contains[=].display = "Duodenal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122575003
// * ^expansion.contains[=].display = "Urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122576002
// * ^expansion.contains[=].display = "Genital mucus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122577006
// * ^expansion.contains[=].display = "Cervical mucus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122578001
// * ^expansion.contains[=].display = "Female genital fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122579009
// * ^expansion.contains[=].display = "Genital lochia specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122580007
// * ^expansion.contains[=].display = "Cerumen specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122581006
// * ^expansion.contains[=].display = "Erythrocyte specimen from blood donor"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122582004
// * ^expansion.contains[=].display = "Erythrocyte specimen from blood product"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122583009
// * ^expansion.contains[=].display = "Erythrocyte specimen from patient"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122584003
// * ^expansion.contains[=].display = "Leucocyte specimen from patient"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122585002
// * ^expansion.contains[=].display = "Leucocyte specimen from control"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122587005
// * ^expansion.contains[=].display = "Platelet poor plasma specimen from control"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122588000
// * ^expansion.contains[=].display = "Platelet poor plasma specimen from patient"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122589008
// * ^expansion.contains[=].display = "Serum specimen from blood donor"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122590004
// * ^expansion.contains[=].display = "Serum specimen from patient"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122591000
// * ^expansion.contains[=].display = "Serum specimen from blood product"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122592007
// * ^expansion.contains[=].display = "Serum or plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122593002
// * ^expansion.contains[=].display = "Tissue specimen obtained from ulcer"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122594008
// * ^expansion.contains[=].display = "Tears specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122595009
// * ^expansion.contains[=].display = "Specimen from breast obtained by total mastectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122596005
// * ^expansion.contains[=].display = "Specimen from breast obtained by complete excision of lesion, less than total mastectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122597001
// * ^expansion.contains[=].display = "Specimen from breast obtained by complete excision, less than total mastectomy, with axillary contents"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122598006
// * ^expansion.contains[=].display = "Specimen from breast obtained by complete excision, less than total mastectomy, without axillary contents"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122599003
// * ^expansion.contains[=].display = "Specimen from breast obtained by radical mastectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122600000
// * ^expansion.contains[=].display = "Specimen from breast obtained by modified radical mastectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122601001
// * ^expansion.contains[=].display = "Specimen from breast obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122602008
// * ^expansion.contains[=].display = "Tissue specimen from biopsy of upper aerodigestive tract"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122604009
// * ^expansion.contains[=].display = "Specimen from lung obtained by wedge resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122605005
// * ^expansion.contains[=].display = "Specimen from lung obtained by segmentectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122606006
// * ^expansion.contains[=].display = "Specimen from lung obtained by lobectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122607002
// * ^expansion.contains[=].display = "Specimen from lung obtained by pneumonectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122608007
// * ^expansion.contains[=].display = "Specimen from lung obtained by major airway resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122609004
// * ^expansion.contains[=].display = "Specimen from lung obtained by bronchial washing procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122610009
// * ^expansion.contains[=].display = "Specimen from lung obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122611008
// * ^expansion.contains[=].display = "Specimen from lung obtained by fibreoptic bronchoscopic biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122613006
// * ^expansion.contains[=].display = "Specimen from lung obtained by mediastinoscopic biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122614000
// * ^expansion.contains[=].display = "Specimen from lung obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122616003
// * ^expansion.contains[=].display = "Specimen from pleura obtained by open thoracotomy and biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122617007
// * ^expansion.contains[=].display = "Specimen from pleura obtained by percutaneous needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122618002
// * ^expansion.contains[=].display = "Specimen from pleura obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122619005
// * ^expansion.contains[=].display = "Specimen from pleura obtained by thoracentesis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122620004
// * ^expansion.contains[=].display = "Specimen from pleura obtained by thoracoscopic procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122621000
// * ^expansion.contains[=].display = "Specimen from pleura obtained by thoracoscopic biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122622007
// * ^expansion.contains[=].display = "Specimen from pleura obtained by lymph node biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122623002
// * ^expansion.contains[=].display = "Specimen from heart obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122624008
// * ^expansion.contains[=].display = "Specimen from heart obtained by excisional biopsy of lesion"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122625009
// * ^expansion.contains[=].display = "Specimen from heart obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122626005
// * ^expansion.contains[=].display = "Specimen from heart obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122627001
// * ^expansion.contains[=].display = "Specimen from gastrointestinal tract obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122628006
// * ^expansion.contains[=].display = "Specimen from oesophagus obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122629003
// * ^expansion.contains[=].display = "Specimen from oesophagus obtained by excisional biopsy of lesion"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122630008
// * ^expansion.contains[=].display = "Specimen from oesophagus obtained by oesophageal resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122631007
// * ^expansion.contains[=].display = "Specimen from oesophagus obtained by oesophagogastrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122632000
// * ^expansion.contains[=].display = "Specimen from stomach obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122633005
// * ^expansion.contains[=].display = "Polyp from stomach obtained by polypectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122634004
// * ^expansion.contains[=].display = "Specimen from stomach obtained by total gastrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122635003
// * ^expansion.contains[=].display = "Specimen from stomach obtained by partial gastrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122636002
// * ^expansion.contains[=].display = "Specimen from proximal stomach obtained by partial gastrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122637006
// * ^expansion.contains[=].display = "Specimen from distal stomach obtained by partial gastrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122638001
// * ^expansion.contains[=].display = "Tissue specimen from small intestine"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122639009
// * ^expansion.contains[=].display = "Specimen from duodenum obtained by Whipple resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122640006
// * ^expansion.contains[=].display = "Specimen from jejunum obtained by segmental resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122641005
// * ^expansion.contains[=].display = "Specimen from ileum obtained by segmental resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122642003
// * ^expansion.contains[=].display = "Specimen from distal ileum obtained by right hemicolectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122643008
// * ^expansion.contains[=].display = "Tissue specimen from large intestine"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122644002
// * ^expansion.contains[=].display = "Specimen from large intestine obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122645001
// * ^expansion.contains[=].display = "Polyp from large intestine obtained by polypectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122646000
// * ^expansion.contains[=].display = "Specimen from large intestine obtained by abdominoperineal resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122647009
// * ^expansion.contains[=].display = "Specimen from large intestine obtained by total abdominal colectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122648004
// * ^expansion.contains[=].display = "Specimen from colon obtained by right hemicolectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122649007
// * ^expansion.contains[=].display = "Specimen from colon obtained by transverse colectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122650007
// * ^expansion.contains[=].display = "Specimen from colon obtained by left hemicolectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122651006
// * ^expansion.contains[=].display = "Specimen from colon obtained by sigmoidectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122652004
// * ^expansion.contains[=].display = "Specimen from colon obtained by rectal/rectosigmoid (low anterior) resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122653009
// * ^expansion.contains[=].display = "Specimen from rectum obtained by transanal disc excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122654003
// * ^expansion.contains[=].display = "Specimen from rectum obtained by transanal disc excision, intact"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122655002
// * ^expansion.contains[=].display = "Specimen from rectum obtained by transanal disc excision, fragmented"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122656001
// * ^expansion.contains[=].display = "Tissue specimen from gallbladder"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122657005
// * ^expansion.contains[=].display = "Specimen from ampulla of Vater obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122658000
// * ^expansion.contains[=].display = "Specimen from ampulla of Vater obtained by ampullectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122659008
// * ^expansion.contains[=].display = "Specimen from ampulla of Vater obtained by pancreaticoduodenectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122660003
// * ^expansion.contains[=].display = "Specimen from ampulla of Vater obtained by pylorus-sparing pancreaticoduodenectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122661004
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by partial pancreatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122662006
// * ^expansion.contains[=].display = "Specimen from pancreatic body obtained by partial resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122663001
// * ^expansion.contains[=].display = "Specimen from pancreatic tail obtained by partial resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122664007
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by total pancreatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122665008
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by pancreaticoduodenectomy (Whipple resection)"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122666009
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by pylorus sparing pancreaticoduodenectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122667000
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122668005
// * ^expansion.contains[=].display = "Specimen from urinary tract obtained by transurethral excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122669002
// * ^expansion.contains[=].display = "Specimen from urinary bladder obtained by anterior exenteration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122670001
// * ^expansion.contains[=].display = "Specimen from kidney obtained by (core) needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122671002
// * ^expansion.contains[=].display = "Specimen from kidney obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122672009
// * ^expansion.contains[=].display = "Specimen from kidney obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122673004
// * ^expansion.contains[=].display = "Specimen from kidney obtained by wedge biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122674005
// * ^expansion.contains[=].display = "Specimen from right kidney obtained by radical nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122675006
// * ^expansion.contains[=].display = "Specimen from right kidney obtained by adrenal sparing radical nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122676007
// * ^expansion.contains[=].display = "Specimen from right kidney obtained by partial nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122677003
// * ^expansion.contains[=].display = "Specimen from right kidney, inferior pole obtained by partial nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122678008
// * ^expansion.contains[=].display = "Specimen from right kidney, middle pole obtained by partial nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122679000
// * ^expansion.contains[=].display = "Specimen from right kidney, superior pole obtained by partial nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122680002
// * ^expansion.contains[=].display = "Specimen from left kidney obtained by radical nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122681003
// * ^expansion.contains[=].display = "Specimen from left kidney obtained by adrenal sparing radical nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122682005
// * ^expansion.contains[=].display = "Specimen from left kidney obtained by partial nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122683000
// * ^expansion.contains[=].display = "Specimen from left kidney, inferior pole obtained by partial nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122684006
// * ^expansion.contains[=].display = "Specimen from left kidney, middle pole obtained by partial nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122685007
// * ^expansion.contains[=].display = "Specimen from left kidney, superior pole obtained by partial nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122686008
// * ^expansion.contains[=].display = "Specimen from urinary bladder obtained by partial cystectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122687004
// * ^expansion.contains[=].display = "Specimen from urinary bladder obtained by total cystectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122688009
// * ^expansion.contains[=].display = "Specimen from urinary bladder obtained by radical cystoprostatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122689001
// * ^expansion.contains[=].display = "Specimen from right kidney obtained by radical nephrectomy and adrenalectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122690005
// * ^expansion.contains[=].display = "Specimen from left kidney obtained by radical nephrectomy and adrenalectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122691009
// * ^expansion.contains[=].display = "Specimen from vagina obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122692002
// * ^expansion.contains[=].display = "Specimen from vagina obtained by excisional biopsy of lesion"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122693007
// * ^expansion.contains[=].display = "Specimen from vagina obtained by vaginectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122694001
// * ^expansion.contains[=].display = "Specimen from vagina obtained by radical vaginectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122696004
// * ^expansion.contains[=].display = "Specimen from uterus obtained by radical hysterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122697008
// * ^expansion.contains[=].display = "Specimen from uterus obtained by pelvic exenteration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122698003
// * ^expansion.contains[=].display = "Specimen from uterine cervix obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122699006
// * ^expansion.contains[=].display = "Specimen from lesion of uterine cervix obtained by cone biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122700007
// * ^expansion.contains[=].display = "Specimen from uterine cervix obtained by hysterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122701006
// * ^expansion.contains[=].display = "Specimen from uterine cervix obtained by radical hysterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122702004
// * ^expansion.contains[=].display = "Specimen from uterine cervix obtained by pelvic exenteration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122703009
// * ^expansion.contains[=].display = "Specimen from endometrium obtained by curettage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122704003
// * ^expansion.contains[=].display = "Specimen from endometrium obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122705002
// * ^expansion.contains[=].display = "Specimen from endometrium obtained by hysterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122706001
// * ^expansion.contains[=].display = "Specimen from endometrium obtained by radical hysterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122707005
// * ^expansion.contains[=].display = "Specimen from endometrium obtained by pelvic exenteration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122708000
// * ^expansion.contains[=].display = "Specimen from ovary obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122709008
// * ^expansion.contains[=].display = "Specimen from ovary obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122710003
// * ^expansion.contains[=].display = "Specimen from ovary obtained by resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122711004
// * ^expansion.contains[=].display = "Specimen from ovary obtained by removal of tumour in fragments"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122712006
// * ^expansion.contains[=].display = "Specimen from ovary obtained by hysterectomy with salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122713001
// * ^expansion.contains[=].display = "Specimen from ovary obtained by subtotal right oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122714007
// * ^expansion.contains[=].display = "Specimen from right ovary obtained by oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122715008
// * ^expansion.contains[=].display = "Specimen from right ovary obtained by salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122716009
// * ^expansion.contains[=].display = "Specimen from left ovary obtained by oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122717000
// * ^expansion.contains[=].display = "Specimen from ovary obtained by subtotal left oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122718005
// * ^expansion.contains[=].display = "Specimen from left ovary obtained by salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122719002
// * ^expansion.contains[=].display = "Specimen from fallopian tube obtained by hysterectomy with salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122720008
// * ^expansion.contains[=].display = "Specimen from fallopian tube obtained by excision of tubal fragments"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122721007
// * ^expansion.contains[=].display = "Specimen from fallopian tube obtained by pelvic exenteration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122722000
// * ^expansion.contains[=].display = "Specimen from right fallopian tube obtained by salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122723005
// * ^expansion.contains[=].display = "Specimen from left fallopian tube obtained by salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122724004
// * ^expansion.contains[=].display = "Specimen from prostate obtained by enucleation"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122725003
// * ^expansion.contains[=].display = "Specimen from prostate obtained by radical prostatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122726002
// * ^expansion.contains[=].display = "Specimen from prostate obtained by retropubic resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122727006
// * ^expansion.contains[=].display = "Specimen from prostate obtained by suprapubic resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122728001
// * ^expansion.contains[=].display = "Specimen from testis obtained by inguinal exposure with testicular isolation and biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122729009
// * ^expansion.contains[=].display = "Specimen from testis obtained by transscrotal needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122730004
// * ^expansion.contains[=].display = "Specimen from testis obtained by transscrotal open biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122732007
// * ^expansion.contains[=].display = "Specimen from thyroid obtained by lobectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122733002
// * ^expansion.contains[=].display = "Specimen from right lobe of thyroid obtained by lobe resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122734008
// * ^expansion.contains[=].display = "Specimen from left lobe of thyroid obtained by lobe resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122735009
// * ^expansion.contains[=].display = "Specimen from thyroid obtained by isthmectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122736005
// * ^expansion.contains[=].display = "Tissue specimen from placenta"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122737001
// * ^expansion.contains[=].display = "Specimen from breast obtained by core needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122738006
// * ^expansion.contains[=].display = "Specimen obtained from breast by stereotactically guided core needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122739003
// * ^expansion.contains[=].display = "Specimen from breast obtained by incisional biopsy of breast mass"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122877000
// * ^expansion.contains[=].display = "Upper respiratory fluid specimen obtained by tracheal aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122879002
// * ^expansion.contains[=].display = "Upper gastrointestinal contents specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #122880004
// * ^expansion.contains[=].display = "Urine specimen obtained by clean catch procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1237234002
// * ^expansion.contains[=].display = "Specimen from haemorrhagic ovarian cyst obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1259931002
// * ^expansion.contains[=].display = "Hair of face specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127456000
// * ^expansion.contains[=].display = "Specimen from breast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127457009
// * ^expansion.contains[=].display = "Tissue specimen from breast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127458004
// * ^expansion.contains[=].display = "Specimen from lung"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127459007
// * ^expansion.contains[=].display = "Specimen from pleura"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127460002
// * ^expansion.contains[=].display = "Tissue specimen from pleura"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127461003
// * ^expansion.contains[=].display = "Specimen from pleura obtained by pleurectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127462005
// * ^expansion.contains[=].display = "Specimen from heart"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127463000
// * ^expansion.contains[=].display = "Specimen from oesophagus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127464006
// * ^expansion.contains[=].display = "Tissue specimen from oesophagus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127465007
// * ^expansion.contains[=].display = "Specimen from gastrointestinal tract"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127466008
// * ^expansion.contains[=].display = "Tissue specimen from gastrointestinal tract"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127467004
// * ^expansion.contains[=].display = "Specimen from ampulla of Vater"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127468009
// * ^expansion.contains[=].display = "Tissue specimen from ampulla of Vater"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127469001
// * ^expansion.contains[=].display = "Specimen from pancreas"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127470000
// * ^expansion.contains[=].display = "Tissue specimen from pancreas"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127471001
// * ^expansion.contains[=].display = "Specimen from urinary tract"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127472008
// * ^expansion.contains[=].display = "Tissue specimen from urinary tract"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127473003
// * ^expansion.contains[=].display = "Specimen from kidney"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127474009
// * ^expansion.contains[=].display = "Tissue specimen from kidney"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127475005
// * ^expansion.contains[=].display = "Tissue specimen from testis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127476006
// * ^expansion.contains[=].display = "Specimen from fallopian tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127478007
// * ^expansion.contains[=].display = "Tissue specimen from thyroid gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127479004
// * ^expansion.contains[=].display = "Specimen from uterus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127480001
// * ^expansion.contains[=].display = "Tissue specimen from uterus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127481002
// * ^expansion.contains[=].display = "Tissue specimen from uterine cervix"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127482009
// * ^expansion.contains[=].display = "Tissue specimen from ovary"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #127483004
// * ^expansion.contains[=].display = "Tissue specimen from fallopian tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128154006
// * ^expansion.contains[=].display = "Specimen from testis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128155007
// * ^expansion.contains[=].display = "Specimen from ovary"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128156008
// * ^expansion.contains[=].display = "Tissue specimen from anus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128157004
// * ^expansion.contains[=].display = "Brain tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128158009
// * ^expansion.contains[=].display = "Tissue specimen from bronchus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128159001
// * ^expansion.contains[=].display = "Tissue specimen from colon"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128160006
// * ^expansion.contains[=].display = "Tissue specimen from conjunctiva"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128161005
// * ^expansion.contains[=].display = "Tissue specimen from cornea"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128162003
// * ^expansion.contains[=].display = "Tissue specimen from ear"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128163008
// * ^expansion.contains[=].display = "Tissue specimen from endometrium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128164002
// * ^expansion.contains[=].display = "Tissue specimen from eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128165001
// * ^expansion.contains[=].display = "Tissue specimen from genital system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128166000
// * ^expansion.contains[=].display = "Tissue specimen from heart"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128167009
// * ^expansion.contains[=].display = "Tissue specimen from internal nose"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128168004
// * ^expansion.contains[=].display = "Tissue specimen from liver"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128169007
// * ^expansion.contains[=].display = "Tissue specimen from penis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128170008
// * ^expansion.contains[=].display = "Tissue specimen from prostate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128171007
// * ^expansion.contains[=].display = "Tissue specimen from stomach"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128172000
// * ^expansion.contains[=].display = "Tissue specimen from throat"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128173005
// * ^expansion.contains[=].display = "Tissue specimen from trachea"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128174004
// * ^expansion.contains[=].display = "Tissue specimen from urethra"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #128175003
// * ^expansion.contains[=].display = "Tissue specimen from vagina"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1285640000
// * ^expansion.contains[=].display = "Smear from respiratory specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1293160008
// * ^expansion.contains[=].display = "Swab from middle region of inferior nasal meatus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1331990008
// * ^expansion.contains[=].display = "Tissue specimen from left breast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1331991007
// * ^expansion.contains[=].display = "Tissue specimen from right breast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1332490003
// * ^expansion.contains[=].display = "Specimen from crust on skin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1335919003
// * ^expansion.contains[=].display = "Specimen from head obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1335920009
// * ^expansion.contains[=].display = "Specimen from neck obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1335921008
// * ^expansion.contains[=].display = "Specimen from head obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1335922001
// * ^expansion.contains[=].display = "Specimen from neck obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1335924000
// * ^expansion.contains[=].display = "Specimen from head"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1335925004
// * ^expansion.contains[=].display = "Specimen from neck"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1338034005
// * ^expansion.contains[=].display = "Tissue specimen from penis obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1340203001
// * ^expansion.contains[=].display = "Ectoparasite specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1343300000
// * ^expansion.contains[=].display = "Swab from fistula"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1343301001
// * ^expansion.contains[=].display = "Eyelash specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1344978009
// * ^expansion.contains[=].display = "Swab from pustule"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345107007
// * ^expansion.contains[=].display = "Combined urethral and genital swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345219005
// * ^expansion.contains[=].display = "Swab from vaginal part of cervix"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345230008
// * ^expansion.contains[=].display = "Tablet submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345231007
// * ^expansion.contains[=].display = "Culture plate submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345234004
// * ^expansion.contains[=].display = "Thin blood smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345235003
// * ^expansion.contains[=].display = "Thick blood smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345268005
// * ^expansion.contains[=].display = "Dip slide submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345269002
// * ^expansion.contains[=].display = "Fungal culture plate submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1345270001
// * ^expansion.contains[=].display = "Blood culture plate submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1351813003
// * ^expansion.contains[=].display = "Whole blood specimen with hirudin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1351815005
// * ^expansion.contains[=].display = "Whole blood specimen with lithium heparin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1351816006
// * ^expansion.contains[=].display = "Whole blood specimen with citrate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1359985003
// * ^expansion.contains[=].display = "Tap water"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1359986002
// * ^expansion.contains[=].display = "Purified water"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1371684001
// * ^expansion.contains[=].display = "Combined specimen from swab of rectum and vaginal introitus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1380393007
// * ^expansion.contains[=].display = "Tissue smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1380394001
// * ^expansion.contains[=].display = "Tissue impression specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1382291002
// * ^expansion.contains[=].display = "Swab from vaginal vault"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1382292009
// * ^expansion.contains[=].display = "Fluid specimen from uterine cavity"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1382295006
// * ^expansion.contains[=].display = "Tissue specimen from cardiac implantable electronic device pocket"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1382296007
// * ^expansion.contains[=].display = "Substitution fluid specimen from online haemodiafiltration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1384202002
// * ^expansion.contains[=].display = "Body fluid specimen from cardiac implantable electronic device pocket"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1386292006
// * ^expansion.contains[=].display = "Tissue specimen from scleral graft"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1386293001
// * ^expansion.contains[=].display = "Specimen from scleral graft storage medium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1389066009
// * ^expansion.contains[=].display = "Urethral brushing specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1389202004
// * ^expansion.contains[=].display = "Swab specimen in phosphate-buffered saline"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #1389203009
// * ^expansion.contains[=].display = "Pharyngeal secretion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #142261000146106
// * ^expansion.contains[=].display = "Lymphoblast specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #15650531000119105
// * ^expansion.contains[=].display = "Colorectal junction neoplasm tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #15650601000119102
// * ^expansion.contains[=].display = "Thyroid neoplasm tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #15650671000119107
// * ^expansion.contains[=].display = "Paraffin embedded slide"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209251000119104
// * ^expansion.contains[=].display = "Central nervous system cyst fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209291000119109
// * ^expansion.contains[=].display = "Brain cyst fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209331000119103
// * ^expansion.contains[=].display = "Eye discharge specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209691000119106
// * ^expansion.contains[=].display = "Specimen from left lung obtained by blind bronchioloalveolar lavage procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209731000119104
// * ^expansion.contains[=].display = "Specimen from right lung obtained by blind bronchioloalveolar lavage procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209771000119101
// * ^expansion.contains[=].display = "Specimen from left lower lobe of lung obtained by bronchoalveolar lavage procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209811000119101
// * ^expansion.contains[=].display = "Specimen from left upper lobe of lung obtained by bronchoalveolar lavage procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209851000119100
// * ^expansion.contains[=].display = "Specimen from right upper lobe of lung obtained by bronchoalveolar lavage procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209891000119105
// * ^expansion.contains[=].display = "Specimen from right middle lobe of lung obtained by bronchoalveolar lavage procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16209931000119102
// * ^expansion.contains[=].display = "Specimen from right lower lobe of lung obtained by bronchoalveolar lavage procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210211000119107
// * ^expansion.contains[=].display = "Body fluid specimen obtained via cystostomy tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210251000119108
// * ^expansion.contains[=].display = "Body fluid specimen obtained via Jackson-Pratt drain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210291000119103
// * ^expansion.contains[=].display = "Gastric fluid specimen obtained by drainage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210331000119109
// * ^expansion.contains[=].display = "Gastric fluid specimen obtained via gastrostomy tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210371000119107
// * ^expansion.contains[=].display = "Jejunal fluid specimen obtained by drainage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210411000119108
// * ^expansion.contains[=].display = "Specimen from lip obtained by wedge resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210451000119109
// * ^expansion.contains[=].display = "Specimen from bone obtained by curettage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210491000119104
// * ^expansion.contains[=].display = "Specimen from endocervix obtained by curettage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210531000119104
// * ^expansion.contains[=].display = "Labia ulcer specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210571000119101
// * ^expansion.contains[=].display = "Dental cyst specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210611000119105
// * ^expansion.contains[=].display = "Uterine cervix cyst specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210651000119106
// * ^expansion.contains[=].display = "Branchial cleft cyst specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210691000119101
// * ^expansion.contains[=].display = "Breast cyst specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210811000119106
// * ^expansion.contains[=].display = "Desmoid tumour specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210851000119107
// * ^expansion.contains[=].display = "Cerebellar neoplasm specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210891000119102
// * ^expansion.contains[=].display = "Brain neoplasm tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210931000119105
// * ^expansion.contains[=].display = "Endocervical polyp specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16210971000119108
// * ^expansion.contains[=].display = "Swab from lesion"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211011000119108
// * ^expansion.contains[=].display = "Specimen from deep surgical wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211051000119109
// * ^expansion.contains[=].display = "Specimen from deep wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211091000119104
// * ^expansion.contains[=].display = "Hydrocoele specimen obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211131000119102
// * ^expansion.contains[=].display = "Epidural lesion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211211000119102
// * ^expansion.contains[=].display = "Specimen from intra-abdominal abscess"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211251000119101
// * ^expansion.contains[=].display = "Extradural lesion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211291000119106
// * ^expansion.contains[=].display = "Specimen from axilla structure obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211331000119100
// * ^expansion.contains[=].display = "Specimen obtained by cystoprostatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211371000119102
// * ^expansion.contains[=].display = "Specimen from joint cartilage obtained by shave excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211411000119101
// * ^expansion.contains[=].display = "Specimen from breast obtained by resection of posterior margin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211451000119100
// * ^expansion.contains[=].display = "Specimen from breast obtained by resection of superior margin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211491000119105
// * ^expansion.contains[=].display = "Specimen from breast obtained by resection of lateral margin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211531000119105
// * ^expansion.contains[=].display = "Specimen from breast obtained by resection of inferior margin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211571000119108
// * ^expansion.contains[=].display = "Specimen from breast obtained by resection of anterior margin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211611000119104
// * ^expansion.contains[=].display = "Specimen from breast obtained by resection of medial margin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211651000119103
// * ^expansion.contains[=].display = "Excised bone specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211731000119101
// * ^expansion.contains[=].display = "Specimen from breast with lymph node obtained by modified radical mastectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16211771000119103
// * ^expansion.contains[=].display = "Specimen from breast obtained by mastectomy with axillary contents"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212051000119104
// * ^expansion.contains[=].display = "Excised breast ectopic tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212091000119109
// * ^expansion.contains[=].display = "Specimen from liver obtained by partial lobectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212131000119106
// * ^expansion.contains[=].display = "Specimen from liver obtained by partial resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212171000119109
// * ^expansion.contains[=].display = "Specimen from urinary bladder obtained by transurethral cystectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212251000119107
// * ^expansion.contains[=].display = "Specimen from stomach obtained by hemigastrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212331000119108
// * ^expansion.contains[=].display = "Autoclave ampoule submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212371000119106
// * ^expansion.contains[=].display = "Kidney brushings specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212411000119107
// * ^expansion.contains[=].display = "Specimen from right upper lobe of lung obtained by bronchial brushings procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212451000119108
// * ^expansion.contains[=].display = "Specimen from left lower lobe of lung obtained by bronchial brushings procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212491000119103
// * ^expansion.contains[=].display = "Specimen from left upper lobe of lung obtained by bronchial brushings procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212531000119103
// * ^expansion.contains[=].display = "Specimen from right lower lobe of lung obtained by bronchial brushings procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212571000119100
// * ^expansion.contains[=].display = "Specimen from right middle lobe of lung obtained by bronchial brushings procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212691000119100
// * ^expansion.contains[=].display = "Gingiva biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212731000119107
// * ^expansion.contains[=].display = "Specimen from ethmoid sinus obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212771000119105
// * ^expansion.contains[=].display = "Specimen from eyelid obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212811000119105
// * ^expansion.contains[=].display = "Tissue specimen from donor cornea"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212851000119106
// * ^expansion.contains[=].display = "Specimen from corneal ulcer"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212931000119109
// * ^expansion.contains[=].display = "Specimen from cranium bone obtained by craniotomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16212971000119107
// * ^expansion.contains[=].display = "Specimen from cartilage obtained by shave excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213011000119107
// * ^expansion.contains[=].display = "Specimen from bone obtained by core needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213051000119108
// * ^expansion.contains[=].display = "Indwelling catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213091000119103
// * ^expansion.contains[=].display = "External shunt submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213171000119103
// * ^expansion.contains[=].display = "Balloon catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213211000119101
// * ^expansion.contains[=].display = "Endotracheal catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213251000119100
// * ^expansion.contains[=].display = "Introducer catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213331000119104
// * ^expansion.contains[=].display = "Rectosigmoid colon biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213371000119101
// * ^expansion.contains[=].display = "Left colic flexure biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213411000119100
// * ^expansion.contains[=].display = "Ascending colon biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213451000119104
// * ^expansion.contains[=].display = "Right colic flexure biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213491000119109
// * ^expansion.contains[=].display = "Caecum biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213531000119109
// * ^expansion.contains[=].display = "Descending colon biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213571000119107
// * ^expansion.contains[=].display = "Ileocaecal valve biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213651000119102
// * ^expansion.contains[=].display = "Duodenal ulcer specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213691000119107
// * ^expansion.contains[=].display = "Common bile duct brushings specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213731000119100
// * ^expansion.contains[=].display = "Specimen from liver obtained by needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213851000119101
// * ^expansion.contains[=].display = "Tissue specimen from larynx obtained by total resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213891000119106
// * ^expansion.contains[=].display = "Specimen from posterior wall of urinary bladder obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16213931000119103
// * ^expansion.contains[=].display = "Specimen from dome of urinary bladder obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214011000119105
// * ^expansion.contains[=].display = "Specimen from trigone of urinary bladder obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214091000119101
// * ^expansion.contains[=].display = "Specimen from anterior wall of urinary bladder obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214131000119104
// * ^expansion.contains[=].display = "Frozen tissue section specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214171000119101
// * ^expansion.contains[=].display = "Genital fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214211000119104
// * ^expansion.contains[=].display = "Pediculus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214291000119108
// * ^expansion.contains[=].display = "Specimen from right upper lobe of lung obtained by endobronchial biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214331000119102
// * ^expansion.contains[=].display = "Specimen from lingula obtained by transbronchial biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214371000119104
// * ^expansion.contains[=].display = "Specimen from lung obtained by needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214411000119103
// * ^expansion.contains[=].display = "Specimen from left upper lobe of lung obtained by endobronchial biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214451000119102
// * ^expansion.contains[=].display = "Specimen from left lung obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214491000119107
// * ^expansion.contains[=].display = "Specimen from right lung obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214531000119107
// * ^expansion.contains[=].display = "Specimen from right middle lobe of lung obtained by endobronchial biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214571000119105
// * ^expansion.contains[=].display = "Specimen from left lower lobe of lung obtained by endobronchial biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214611000119101
// * ^expansion.contains[=].display = "Specimen from right lower lobe of lung obtained by endobronchial biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214651000119100
// * ^expansion.contains[=].display = "Specimen from lingula obtained by endobronchial biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214691000119105
// * ^expansion.contains[=].display = "Specimen obtained from breast by ultrasound guided needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16214971000119103
// * ^expansion.contains[=].display = "Specimen obtained from breast by stereotactically guided needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215051000119107
// * ^expansion.contains[=].display = "Specimen from labia obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215091000119102
// * ^expansion.contains[=].display = "Specimen from bronchus obtained by endobronchial biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215131000119100
// * ^expansion.contains[=].display = "Endocervical smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215171000119102
// * ^expansion.contains[=].display = "Specimen from abscess of Bartholin's gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215211000119100
// * ^expansion.contains[=].display = "Bartholin's gland fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215251000119104
// * ^expansion.contains[=].display = "Specimen from right upper lobe of lung obtained by bronchial washing procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215291000119109
// * ^expansion.contains[=].display = "Specimen from right lower lobe of lung obtained by bronchial washing procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215331000119103
// * ^expansion.contains[=].display = "Specimen from left upper lobe of lung obtained by bronchial washing procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215411000119104
// * ^expansion.contains[=].display = "Specimen from left lower lobe of lung obtained by bronchial washing procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215451000119103
// * ^expansion.contains[=].display = "Specimen from right middle lobe of lung obtained by bronchial washing procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215491000119108
// * ^expansion.contains[=].display = "Specimen from breast duct obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215531000119108
// * ^expansion.contains[=].display = "Specimen from left upper lobe of lung obtained by bronchial aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215571000119106
// * ^expansion.contains[=].display = "Specimen from right middle lobe of lung obtained by bronchial aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215611000119102
// * ^expansion.contains[=].display = "Specimen from right lower lobe of lung obtained by bronchial aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215651000119101
// * ^expansion.contains[=].display = "Specimen from left lower lobe of lung obtained by bronchial aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215691000119106
// * ^expansion.contains[=].display = "Specimen from right upper lobe of lung obtained by bronchial aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215731000119104
// * ^expansion.contains[=].display = "Endocardium biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215771000119101
// * ^expansion.contains[=].display = "Specimen from inguinal lymph node obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215811000119101
// * ^expansion.contains[=].display = "Specimen from groin obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215851000119100
// * ^expansion.contains[=].display = "Specimen from brain obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16215931000119102
// * ^expansion.contains[=].display = "Specimen from cyst obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216011000119104
// * ^expansion.contains[=].display = "Hilum of lung specimen obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216051000119103
// * ^expansion.contains[=].display = "Specimen from branchial cleft cyst obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216091000119108
// * ^expansion.contains[=].display = "Duodenal brushings specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216131000119105
// * ^expansion.contains[=].display = "Specimen obtained from pouch of Douglas by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216171000119108
// * ^expansion.contains[=].display = "Specimen from liver obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216211000119105
// * ^expansion.contains[=].display = "Endocervical aspirate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216251000119106
// * ^expansion.contains[=].display = "Specimen from lung obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216291000119101
// * ^expansion.contains[=].display = "Labia smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216331000119107
// * ^expansion.contains[=].display = "Cerebrospinal fluid smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216371000119105
// * ^expansion.contains[=].display = "Anal smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216411000119106
// * ^expansion.contains[=].display = "Conjunctival smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216451000119107
// * ^expansion.contains[=].display = "Colonic specimen obtained by lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216491000119102
// * ^expansion.contains[=].display = "Urinary bladder specimen obtained by lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216531000119102
// * ^expansion.contains[=].display = "Common bile duct specimen obtained by lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216571000119104
// * ^expansion.contains[=].display = "Oesophageal specimen obtained by lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16216611000119108
// * ^expansion.contains[=].display = "Aortic valve specimen obtained by lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16219801000119102
// * ^expansion.contains[=].display = "Pinworm paddle submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16220041000119107
// * ^expansion.contains[=].display = "Tunnelled catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16220931000119104
// * ^expansion.contains[=].display = "Pancreas cyst fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16220971000119101
// * ^expansion.contains[=].display = "Specimen of fluid from cyst of kidney"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16221011000119101
// * ^expansion.contains[=].display = "Vaginal discharge specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16221251000119108
// * ^expansion.contains[=].display = "Urine specimen obtained via straight catheter"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16221371000119107
// * ^expansion.contains[=].display = "Urine specimen obtained from paediatric urine collection bag"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16221491000119104
// * ^expansion.contains[=].display = "Voided urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16221811000119106
// * ^expansion.contains[=].display = "Specimen obtained by bronchoscopy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16221891000119102
// * ^expansion.contains[=].display = "Specimen from soft tissue mass lesion obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16222091000119100
// * ^expansion.contains[=].display = "Skin specimen obtained by excision, frozen section"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16222251000119102
// * ^expansion.contains[=].display = "Specimen from skin obtained by Mohs surgery, permanent section"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16222611000119100
// * ^expansion.contains[=].display = "Specimen from prostate obtained by subtotal prostatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16222771000119104
// * ^expansion.contains[=].display = "Uvula tissue specimen obtained by simple excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16222971000119102
// * ^expansion.contains[=].display = "Specimen from parotid gland obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223051000119101
// * ^expansion.contains[=].display = "Nasal sinus contents specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223091000119106
// * ^expansion.contains[=].display = "Specimen of mucosa of nasal sinus obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223251000119109
// * ^expansion.contains[=].display = "Peripherally inserted central venous catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223491000119100
// * ^expansion.contains[=].display = "Tissue specimen obtained by transtracheal biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223531000119100
// * ^expansion.contains[=].display = "Liquid stool specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223571000119102
// * ^expansion.contains[=].display = "Purged stool specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223651000119107
// * ^expansion.contains[=].display = "Specimen from ligated fallopian tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223731000119109
// * ^expansion.contains[=].display = "Specimen from perianal region obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223771000119107
// * ^expansion.contains[=].display = "Specimen from diaphragm obtained by brushing"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223931000119106
// * ^expansion.contains[=].display = "Vitreous humour specimen obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16223971000119109
// * ^expansion.contains[=].display = "Synovial fluid specimen obtained by fine needle aspiration procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16224091000119108
// * ^expansion.contains[=].display = "Specimen from lymph node obtained by endotracheal aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16224131000119105
// * ^expansion.contains[=].display = "Specimen from mediastinal lymph node obtained by endotracheal aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16224171000119108
// * ^expansion.contains[=].display = "Nasotracheal aspirate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16224251000119106
// * ^expansion.contains[=].display = "Papanicolaou smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16224291000119101
// * ^expansion.contains[=].display = "Renal washings"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16224371000119105
// * ^expansion.contains[=].display = "Nasal lavage fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #16235301000119101
// * ^expansion.contains[=].display = "Specimen from sentinel lymph node of breast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167867009
// * ^expansion.contains[=].display = "Multiple joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167868004
// * ^expansion.contains[=].display = "Shoulder joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167869007
// * ^expansion.contains[=].display = "Elbow joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167870008
// * ^expansion.contains[=].display = "Wrist joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167871007
// * ^expansion.contains[=].display = "Hand joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167872000
// * ^expansion.contains[=].display = "Finger joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167873005
// * ^expansion.contains[=].display = "Hip joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167874004
// * ^expansion.contains[=].display = "Knee joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167875003
// * ^expansion.contains[=].display = "Ankle joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167876002
// * ^expansion.contains[=].display = "Foot joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167877006
// * ^expansion.contains[=].display = "Toe joint synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #167913002
// * ^expansion.contains[=].display = "Bone marrow source"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #168136008
// * ^expansion.contains[=].display = "Colostomy fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #168137004
// * ^expansion.contains[=].display = "Gastric aspirate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #168138009
// * ^expansion.contains[=].display = "Gastric lavage aspirate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #168139001
// * ^expansion.contains[=].display = "Peritoneal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #168140004
// * ^expansion.contains[=].display = "Peritoneal dialysate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #168141000
// * ^expansion.contains[=].display = "Nasal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #168145009
// * ^expansion.contains[=].display = "Lymph specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #230451000087106
// * ^expansion.contains[=].display = "Urine specimen obtained from incontinence sheath"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2421000181104
// * ^expansion.contains[=].display = "Capillary serum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2431000181102
// * ^expansion.contains[=].display = "Arterial plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2441000181109
// * ^expansion.contains[=].display = "Capillary plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2451000181107
// * ^expansion.contains[=].display = "Mixed venous plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2501000181105
// * ^expansion.contains[=].display = "Biopsy specimen in tissue fixative"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2511000181107
// * ^expansion.contains[=].display = "Specimen obtained by exfoliation"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2521000181103
// * ^expansion.contains[=].display = "Specimen from root canal"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2531000181101
// * ^expansion.contains[=].display = "Urine specimen obtained after prostatic massage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #2541000181108
// * ^expansion.contains[=].display = "Leukopheresis product specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #256889002
// * ^expansion.contains[=].display = "Breast cyst fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #256912003
// * ^expansion.contains[=].display = "Red blood cell fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #257261003
// * ^expansion.contains[=].display = "Swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258407001
// * ^expansion.contains[=].display = "Abscess tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258411007
// * ^expansion.contains[=].display = "Nasopharyngeal aspirate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258412000
// * ^expansion.contains[=].display = "Oropharyngeal aspirate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258414004
// * ^expansion.contains[=].display = "Adipose tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258415003
// * ^expansion.contains[=].display = "Biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258417006
// * ^expansion.contains[=].display = "Bone tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258418001
// * ^expansion.contains[=].display = "Burn tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258419009
// * ^expansion.contains[=].display = "Curettings"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258420003
// * ^expansion.contains[=].display = "Cyst tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258421004
// * ^expansion.contains[=].display = "Embryo biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258422006
// * ^expansion.contains[=].display = "Gonad tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258423001
// * ^expansion.contains[=].display = "Hair bulb specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258424007
// * ^expansion.contains[=].display = "Heart valve tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258425008
// * ^expansion.contains[=].display = "Natural lens tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258426009
// * ^expansion.contains[=].display = "Placental membrane tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258428005
// * ^expansion.contains[=].display = "Products of conception tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258429002
// * ^expansion.contains[=].display = "Rectal scrape specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258430007
// * ^expansion.contains[=].display = "Rectal snip specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258431006
// * ^expansion.contains[=].display = "Scrapings"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258432004
// * ^expansion.contains[=].display = "Sebum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258433009
// * ^expansion.contains[=].display = "Smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258434003
// * ^expansion.contains[=].display = "Spun urinary sediment"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258435002
// * ^expansion.contains[=].display = "Tumour tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258436001
// * ^expansion.contains[=].display = "Umbilical cord tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258437005
// * ^expansion.contains[=].display = "Vegetation from heart valve"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258438000
// * ^expansion.contains[=].display = "Vitreous humour specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258439008
// * ^expansion.contains[=].display = "Discharge specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258440005
// * ^expansion.contains[=].display = "Effusion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258441009
// * ^expansion.contains[=].display = "Exudate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258442002
// * ^expansion.contains[=].display = "Fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258444001
// * ^expansion.contains[=].display = "Aqueous humour specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258446004
// * ^expansion.contains[=].display = "Bronchial fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258448003
// * ^expansion.contains[=].display = "Bursa fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258450006
// * ^expansion.contains[=].display = "Cerebrospinal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258452003
// * ^expansion.contains[=].display = "Chylous fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258453008
// * ^expansion.contains[=].display = "Cyst fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258454002
// * ^expansion.contains[=].display = "Dialysate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258455001
// * ^expansion.contains[=].display = "Drainage fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258456000
// * ^expansion.contains[=].display = "Empyema fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258457009
// * ^expansion.contains[=].display = "Faecal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258458004
// * ^expansion.contains[=].display = "Fistula fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258459007
// * ^expansion.contains[=].display = "Gastric fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258461003
// * ^expansion.contains[=].display = "Hydrocele fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258462005
// * ^expansion.contains[=].display = "Ileostomy fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258463000
// * ^expansion.contains[=].display = "Jejunal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258465007
// * ^expansion.contains[=].display = "Lacrimal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258466008
// * ^expansion.contains[=].display = "Middle ear fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258467004
// * ^expansion.contains[=].display = "Nasopharyngeal washings"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258468009
// * ^expansion.contains[=].display = "Oedema fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258469001
// * ^expansion.contains[=].display = "Pharyngeal washings"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258470000
// * ^expansion.contains[=].display = "Prostatic fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258471001
// * ^expansion.contains[=].display = "Prostatic massage fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258472008
// * ^expansion.contains[=].display = "Renal pelvis fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258474009
// * ^expansion.contains[=].display = "Sinus fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258475005
// * ^expansion.contains[=].display = "Sinus washings"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258476006
// * ^expansion.contains[=].display = "Subretinal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258479004
// * ^expansion.contains[=].display = "Interstitial fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258480001
// * ^expansion.contains[=].display = "Transtracheal aspirate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258481002
// * ^expansion.contains[=].display = "Vaginal washout fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258482009
// * ^expansion.contains[=].display = "Vesicle fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258483004
// * ^expansion.contains[=].display = "Mucus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258484005
// * ^expansion.contains[=].display = "Postmortem tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258485006
// * ^expansion.contains[=].display = "Corneal scraping specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258487003
// * ^expansion.contains[=].display = "Faecal smear"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258488008
// * ^expansion.contains[=].display = "Lymph node smear"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258489000
// * ^expansion.contains[=].display = "Slit skin smear"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258490009
// * ^expansion.contains[=].display = "Biliary stone specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258492001
// * ^expansion.contains[=].display = "Gallstone specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258493006
// * ^expansion.contains[=].display = "Urinary bladder calculus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258494000
// * ^expansion.contains[=].display = "Pancreatic stone specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258495004
// * ^expansion.contains[=].display = "Renal stone specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258496003
// * ^expansion.contains[=].display = "Ureteric stone specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258497007
// * ^expansion.contains[=].display = "Abscess swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258498002
// * ^expansion.contains[=].display = "Conjunctival swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258499005
// * ^expansion.contains[=].display = "Cough swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258500001
// * ^expansion.contains[=].display = "Nasopharyngeal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258502009
// * ^expansion.contains[=].display = "Pus swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258503004
// * ^expansion.contains[=].display = "Skin swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258504005
// * ^expansion.contains[=].display = "Bacillus Calmette-Guerin vaccination site swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258505006
// * ^expansion.contains[=].display = "Skin ulcer swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258506007
// * ^expansion.contains[=].display = "Swab of drain insertion site"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258507003
// * ^expansion.contains[=].display = "Swab of line insertion site"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258508008
// * ^expansion.contains[=].display = "Genital swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258509000
// * ^expansion.contains[=].display = "Male genital swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258510005
// * ^expansion.contains[=].display = "Penis swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258511009
// * ^expansion.contains[=].display = "Penile urethral swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258512002
// * ^expansion.contains[=].display = "Glans penis swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258513007
// * ^expansion.contains[=].display = "Prepuce swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258514001
// * ^expansion.contains[=].display = "Subpreputial swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258515000
// * ^expansion.contains[=].display = "Coronal sulcus of penis swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258516004
// * ^expansion.contains[=].display = "Frenulum of penis swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258517008
// * ^expansion.contains[=].display = "Shaft of penis swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258518003
// * ^expansion.contains[=].display = "Scrotal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258519006
// * ^expansion.contains[=].display = "Female genital swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258520000
// * ^expansion.contains[=].display = "Vaginal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258521001
// * ^expansion.contains[=].display = "High vaginal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258522008
// * ^expansion.contains[=].display = "Low vaginal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258523003
// * ^expansion.contains[=].display = "Vulval swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258524009
// * ^expansion.contains[=].display = "Cervical swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258525005
// * ^expansion.contains[=].display = "Perineal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258526006
// * ^expansion.contains[=].display = "Perianal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258527002
// * ^expansion.contains[=].display = "Anal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258528007
// * ^expansion.contains[=].display = "Rectal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258529004
// * ^expansion.contains[=].display = "Throat swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258530009
// * ^expansion.contains[=].display = "Urethral swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258531008
// * ^expansion.contains[=].display = "Wound swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258532001
// * ^expansion.contains[=].display = "Swab of inanimate object"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258535004
// * ^expansion.contains[=].display = "Floor swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258536003
// * ^expansion.contains[=].display = "Incubator swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258537007
// * ^expansion.contains[=].display = "Surface swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258538002
// * ^expansion.contains[=].display = "Transudate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258539005
// * ^expansion.contains[=].display = "Bone and joint specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258541006
// * ^expansion.contains[=].display = "Cardiovascular specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258542004
// * ^expansion.contains[=].display = "Heart valve specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258544003
// * ^expansion.contains[=].display = "Native heart valve specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258545002
// * ^expansion.contains[=].display = "Vegetation from prosthetic heart valve"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258546001
// * ^expansion.contains[=].display = "Vegetation from native heart valve"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258547005
// * ^expansion.contains[=].display = "Cardiopulmonary bypass pump fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258548000
// * ^expansion.contains[=].display = "Dermatological specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258549008
// * ^expansion.contains[=].display = "Skin scale specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258553005
// * ^expansion.contains[=].display = "Duodenal string"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258554004
// * ^expansion.contains[=].display = "Faecal concretion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258555003
// * ^expansion.contains[=].display = "Hot stool specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258558001
// * ^expansion.contains[=].display = "Oral secretion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258559009
// * ^expansion.contains[=].display = "Gingivocrevicular fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258560004
// * ^expansion.contains[=].display = "Oral saliva specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258561000
// * ^expansion.contains[=].display = "Parotid gland saliva specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258562007
// * ^expansion.contains[=].display = "Genetic specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258563002
// * ^expansion.contains[=].display = "Amniotic cell specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258564008
// * ^expansion.contains[=].display = "Buccal smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258565009
// * ^expansion.contains[=].display = "Chorionic villi specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258566005
// * ^expansion.contains[=].display = "Deoxyribonucleic acid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258567001
// * ^expansion.contains[=].display = "Gonad specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258568006
// * ^expansion.contains[=].display = "Polar body specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258569003
// * ^expansion.contains[=].display = "Skin fibroblast specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258570002
// * ^expansion.contains[=].display = "Genitourinary specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258571003
// * ^expansion.contains[=].display = "Machine haemodialysate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258572005
// * ^expansion.contains[=].display = "Ultrafiltrate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258574006
// * ^expansion.contains[=].display = "Mid-stream urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258575007
// * ^expansion.contains[=].display = "Early morning urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258576008
// * ^expansion.contains[=].display = "Suprapubic aspirate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258577004
// * ^expansion.contains[=].display = "Vaginal secretion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258580003
// * ^expansion.contains[=].display = "Whole blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258581004
// * ^expansion.contains[=].display = "Clotted blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258582006
// * ^expansion.contains[=].display = "Blood clot specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258583001
// * ^expansion.contains[=].display = "Bone marrow clot specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258584007
// * ^expansion.contains[=].display = "Bone marrow fragment specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258585008
// * ^expansion.contains[=].display = "Bone marrow trephine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258587000
// * ^expansion.contains[=].display = "Buffy coat"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258588005
// * ^expansion.contains[=].display = "Haematoma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258589002
// * ^expansion.contains[=].display = "Lymph node specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258590006
// * ^expansion.contains[=].display = "Acidified serum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258591005
// * ^expansion.contains[=].display = "White blood cell specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258599007
// * ^expansion.contains[=].display = "Contact lens solution specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258601009
// * ^expansion.contains[=].display = "Lens specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258602002
// * ^expansion.contains[=].display = "Intraocular lens specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258603007
// * ^expansion.contains[=].display = "Specimen from respiratory system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258604001
// * ^expansion.contains[=].display = "Upper respiratory specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258606004
// * ^expansion.contains[=].display = "Lower respiratory tract specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258607008
// * ^expansion.contains[=].display = "Bronchoalveolar lavage fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258608003
// * ^expansion.contains[=].display = "Sputum specimen obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258609006
// * ^expansion.contains[=].display = "Sputum specimen obtained by aspiration from trachea"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258610001
// * ^expansion.contains[=].display = "Sputum specimen obtained by sputum induction"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258611002
// * ^expansion.contains[=].display = "Sputum specimen obtained from sputum suction trap"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258613004
// * ^expansion.contains[=].display = "Living specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258614005
// * ^expansion.contains[=].display = "Insect specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258615006
// * ^expansion.contains[=].display = "Larva specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258616007
// * ^expansion.contains[=].display = "Maggot specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258617003
// * ^expansion.contains[=].display = "Parasite specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258618008
// * ^expansion.contains[=].display = "Helminth specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258627009
// * ^expansion.contains[=].display = "Cannula tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258628004
// * ^expansion.contains[=].display = "Vascular cannula tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258629007
// * ^expansion.contains[=].display = "Arterial cannula tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258630002
// * ^expansion.contains[=].display = "Venous cannula tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258631003
// * ^expansion.contains[=].display = "Arteriovenous shunt tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258649003
// * ^expansion.contains[=].display = "Intravenous infusion fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258650003
// * ^expansion.contains[=].display = "Intravenous lipid infusion fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258651004
// * ^expansion.contains[=].display = "Cream specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258652006
// * ^expansion.contains[=].display = "Ice cream specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258653001
// * ^expansion.contains[=].display = "Formula milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258654007
// * ^expansion.contains[=].display = "Soy milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258655008
// * ^expansion.contains[=].display = "Cow's milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258656009
// * ^expansion.contains[=].display = "Whole milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258657000
// * ^expansion.contains[=].display = "Semi-skimmed milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258658005
// * ^expansion.contains[=].display = "Skim milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258659002
// * ^expansion.contains[=].display = "Sheep milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258660007
// * ^expansion.contains[=].display = "Goat milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258662004
// * ^expansion.contains[=].display = "Adhesive slide specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258663009
// * ^expansion.contains[=].display = "Sellotape slide specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #258664003
// * ^expansion.contains[=].display = "Scotch tape slide specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #264380007
// * ^expansion.contains[=].display = "Synovial fluid cells"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #271514008
// * ^expansion.contains[=].display = "Sternal bone marrow specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #271515009
// * ^expansion.contains[=].display = "Iliac crest bone marrow specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #271516005
// * ^expansion.contains[=].display = "Vertebral spinous process bone marrow specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #271518006
// * ^expansion.contains[=].display = "Rib bone marrow specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #276446009
// * ^expansion.contains[=].display = "Cervical smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #276833005
// * ^expansion.contains[=].display = "24 hour urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #277191000087105
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and axillary fossa and throat"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #277201000087107
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and groin and throat"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #278020009
// * ^expansion.contains[=].display = "Spot urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #278351000087102
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and throat and vagina"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #28971000087101
// * ^expansion.contains[=].display = "Swab from bite wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #28981000087104
// * ^expansion.contains[=].display = "Epidural catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #28991000087102
// * ^expansion.contains[=].display = "Swab from epiglottis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #29001000087102
// * ^expansion.contains[=].display = "Swab from external stoma wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #29011000087100
// * ^expansion.contains[=].display = "Specimen from abscess of lung"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #29021000087108
// * ^expansion.contains[=].display = "Specimen from abscess of tooth"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #290211000146104
// * ^expansion.contains[=].display = "Monocyte specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #29031000087105
// * ^expansion.contains[=].display = "Specimen from graft"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #29041000087104
// * ^expansion.contains[=].display = "Specimen from pelvic abscess"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #302794003
// * ^expansion.contains[=].display = "Nasogastric aspirate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #302795002
// * ^expansion.contains[=].display = "Lymph node aspirate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #303247002
// * ^expansion.contains[=].display = "Adrenal tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #303248007
// * ^expansion.contains[=].display = "Blood smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #3040001000004107
// * ^expansion.contains[=].display = "Paraffin embedded tissue block specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309048008
// * ^expansion.contains[=].display = "Endocrine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309049000
// * ^expansion.contains[=].display = "Lesion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309050000
// * ^expansion.contains[=].display = "Body substance specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309051001
// * ^expansion.contains[=].display = "Body fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309052008
// * ^expansion.contains[=].display = "Male genital specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309053003
// * ^expansion.contains[=].display = "Female genital specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309055005
// * ^expansion.contains[=].display = "Breast fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309057002
// * ^expansion.contains[=].display = "Breast direct smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309058007
// * ^expansion.contains[=].display = "Breast tru-cut biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309059004
// * ^expansion.contains[=].display = "Frozen section breast specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309061008
// * ^expansion.contains[=].display = "Breast fine needle aspirate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309066003
// * ^expansion.contains[=].display = "Skin biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309067007
// * ^expansion.contains[=].display = "Specimen from skin obtained by curettage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309068002
// * ^expansion.contains[=].display = "Skin lesion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309070006
// * ^expansion.contains[=].display = "Vulval skin biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309071005
// * ^expansion.contains[=].display = "Penis skin biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309072003
// * ^expansion.contains[=].display = "Soft tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309073008
// * ^expansion.contains[=].display = "Lipoma biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309074002
// * ^expansion.contains[=].display = "Soft tissue biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309075001
// * ^expansion.contains[=].display = "Skin cyst specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309077009
// * ^expansion.contains[=].display = "Spleen resection specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309078004
// * ^expansion.contains[=].display = "Lymph node tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309079007
// * ^expansion.contains[=].display = "Lymph node biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309101008
// * ^expansion.contains[=].display = "Cartilage specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309102001
// * ^expansion.contains[=].display = "Cartilage biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309103006
// * ^expansion.contains[=].display = "Excised cartilage specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309104000
// * ^expansion.contains[=].display = "Musculoskeletal specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309105004
// * ^expansion.contains[=].display = "Bone biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309107007
// * ^expansion.contains[=].display = "Tendon specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309108002
// * ^expansion.contains[=].display = "Excised tendon specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309109005
// * ^expansion.contains[=].display = "Bursa specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309110000
// * ^expansion.contains[=].display = "Bursa tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309111001
// * ^expansion.contains[=].display = "Bursa biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309112008
// * ^expansion.contains[=].display = "Excised bursa specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309113003
// * ^expansion.contains[=].display = "Tendon biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309114009
// * ^expansion.contains[=].display = "Ligament specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309115005
// * ^expansion.contains[=].display = "Ligament biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309116006
// * ^expansion.contains[=].display = "Excised ligament specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309117002
// * ^expansion.contains[=].display = "Fascia specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309118007
// * ^expansion.contains[=].display = "Fascia biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309119004
// * ^expansion.contains[=].display = "Excised fascia specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309120005
// * ^expansion.contains[=].display = "Head of femur specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309121009
// * ^expansion.contains[=].display = "Synovial tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309122002
// * ^expansion.contains[=].display = "Synovium biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309123007
// * ^expansion.contains[=].display = "Synovial specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309124001
// * ^expansion.contains[=].display = "Joint biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309125000
// * ^expansion.contains[=].display = "Joint specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309126004
// * ^expansion.contains[=].display = "Articular tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309127008
// * ^expansion.contains[=].display = "Resected articular tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309128003
// * ^expansion.contains[=].display = "Eye fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309129006
// * ^expansion.contains[=].display = "Nerve tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309130001
// * ^expansion.contains[=].display = "Nerve biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309131002
// * ^expansion.contains[=].display = "Neuroma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309132009
// * ^expansion.contains[=].display = "Prostate biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309133004
// * ^expansion.contains[=].display = "Resected prostate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309134005
// * ^expansion.contains[=].display = "Prostate tru-cut biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309135006
// * ^expansion.contains[=].display = "Hydrocele specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309137003
// * ^expansion.contains[=].display = "Testes biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309138008
// * ^expansion.contains[=].display = "Orchidectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309139000
// * ^expansion.contains[=].display = "Vas deferens specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309140003
// * ^expansion.contains[=].display = "Epididymis specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309141004
// * ^expansion.contains[=].display = "Adrenal gland specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309142006
// * ^expansion.contains[=].display = "Adrenal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309143001
// * ^expansion.contains[=].display = "Excised adrenal gland specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309144007
// * ^expansion.contains[=].display = "Thyroid lobe specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309145008
// * ^expansion.contains[=].display = "Thyroid fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309146009
// * ^expansion.contains[=].display = "Thyroid fine needle aspirate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309147000
// * ^expansion.contains[=].display = "Thyroid cyst fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309148005
// * ^expansion.contains[=].display = "Thyroid direct smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309149002
// * ^expansion.contains[=].display = "Parathyroid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309150002
// * ^expansion.contains[=].display = "Parathyroid tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309151003
// * ^expansion.contains[=].display = "Parathyroid biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309153000
// * ^expansion.contains[=].display = "Excised parathyroid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309154006
// * ^expansion.contains[=].display = "Pituitary specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309164002
// * ^expansion.contains[=].display = "Upper respiratory swab specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309165001
// * ^expansion.contains[=].display = "Ear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309166000
// * ^expansion.contains[=].display = "Ear swab specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309167009
// * ^expansion.contains[=].display = "Middle ear biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309168004
// * ^expansion.contains[=].display = "Upper respiratory tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309169007
// * ^expansion.contains[=].display = "Tracheal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309170008
// * ^expansion.contains[=].display = "Lower respiratory tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309171007
// * ^expansion.contains[=].display = "Lower respiratory fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309172000
// * ^expansion.contains[=].display = "Pleura biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309173005
// * ^expansion.contains[=].display = "Transbronchial lung biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309174004
// * ^expansion.contains[=].display = "Bronchial biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309175003
// * ^expansion.contains[=].display = "Resected lung specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309176002
// * ^expansion.contains[=].display = "Bronchial brushings specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309177006
// * ^expansion.contains[=].display = "Lung direct smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309178001
// * ^expansion.contains[=].display = "Nasal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309179009
// * ^expansion.contains[=].display = "Nasal polyp specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309180007
// * ^expansion.contains[=].display = "Nasopharyngeal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309181006
// * ^expansion.contains[=].display = "Mastoid biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309182004
// * ^expansion.contains[=].display = "Larynx biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309183009
// * ^expansion.contains[=].display = "Laryngectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309184003
// * ^expansion.contains[=].display = "Vocal cord biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309185002
// * ^expansion.contains[=].display = "Oral cavity specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309186001
// * ^expansion.contains[=].display = "Oral tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309187005
// * ^expansion.contains[=].display = "Dental tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309188000
// * ^expansion.contains[=].display = "Mouth biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309189008
// * ^expansion.contains[=].display = "Tongue biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309190004
// * ^expansion.contains[=].display = "Excised salivary gland specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309191000
// * ^expansion.contains[=].display = "Tonsil biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309192007
// * ^expansion.contains[=].display = "Tonsillectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309193002
// * ^expansion.contains[=].display = "Pharyngeal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309199003
// * ^expansion.contains[=].display = "Gastrointestinal fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309200000
// * ^expansion.contains[=].display = "Rectal tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309201001
// * ^expansion.contains[=].display = "Ascitic fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309202008
// * ^expansion.contains[=].display = "Gastrointestinal direct smear"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309203003
// * ^expansion.contains[=].display = "Liver biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309204009
// * ^expansion.contains[=].display = "Liver direct smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309205005
// * ^expansion.contains[=].display = "Cholecystectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309206006
// * ^expansion.contains[=].display = "Pancreas biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309207002
// * ^expansion.contains[=].display = "Peritoneal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309208007
// * ^expansion.contains[=].display = "Omentum biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309209004
// * ^expansion.contains[=].display = "Oesophageal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309210009
// * ^expansion.contains[=].display = "Oesophageal brushings specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309211008
// * ^expansion.contains[=].display = "Gastric biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309212001
// * ^expansion.contains[=].display = "Gastric antral biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309213006
// * ^expansion.contains[=].display = "Gastric brushings specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309214000
// * ^expansion.contains[=].display = "Gastric fundus biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309215004
// * ^expansion.contains[=].display = "Gastric ulcer specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309216003
// * ^expansion.contains[=].display = "Duodenal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309217007
// * ^expansion.contains[=].display = "Ileal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309218002
// * ^expansion.contains[=].display = "Ileal resection specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309219005
// * ^expansion.contains[=].display = "Jejunal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309220004
// * ^expansion.contains[=].display = "Small bowel resection specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309221000
// * ^expansion.contains[=].display = "Terminal ileum resection specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309222007
// * ^expansion.contains[=].display = "Appendix specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309223002
// * ^expansion.contains[=].display = "Colectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309224008
// * ^expansion.contains[=].display = "Colon strip specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309225009
// * ^expansion.contains[=].display = "Colonic biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309226005
// * ^expansion.contains[=].display = "Colonic polyp specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309227001
// * ^expansion.contains[=].display = "Sigmoid colonic polyp specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309260003
// * ^expansion.contains[=].display = "Sigmoid colon biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309261004
// * ^expansion.contains[=].display = "Sigmoid colon brushings specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309262006
// * ^expansion.contains[=].display = "Rectal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309263001
// * ^expansion.contains[=].display = "Rectal polyp specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309264007
// * ^expansion.contains[=].display = "Excised rectum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309265008
// * ^expansion.contains[=].display = "Anal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309266009
// * ^expansion.contains[=].display = "Anal polyp specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309267000
// * ^expansion.contains[=].display = "Anal resection specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309268005
// * ^expansion.contains[=].display = "Urological fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309269002
// * ^expansion.contains[=].display = "Kidney biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309270001
// * ^expansion.contains[=].display = "Specimen from kidney obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309271002
// * ^expansion.contains[=].display = "Ureter biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309272009
// * ^expansion.contains[=].display = "Urinary bladder tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309273004
// * ^expansion.contains[=].display = "Urinary bladder biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309274005
// * ^expansion.contains[=].display = "Urinary bladder curettings specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309275006
// * ^expansion.contains[=].display = "Cystectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309276007
// * ^expansion.contains[=].display = "Frozen section urinary bladder specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309277003
// * ^expansion.contains[=].display = "Urethra biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309278008
// * ^expansion.contains[=].display = "Female genital tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309280002
// * ^expansion.contains[=].display = "Vaginal biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309281003
// * ^expansion.contains[=].display = "Vaginal vault biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309283000
// * ^expansion.contains[=].display = "Cervical biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309285007
// * ^expansion.contains[=].display = "Cervical loop excision specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309286008
// * ^expansion.contains[=].display = "Cervical polyp specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309287004
// * ^expansion.contains[=].display = "Hysterectomy and bilateral salpingo-oophorectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309288009
// * ^expansion.contains[=].display = "Endometrial polyp specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309289001
// * ^expansion.contains[=].display = "Endometrial resection specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309290005
// * ^expansion.contains[=].display = "Fallopian tube biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309291009
// * ^expansion.contains[=].display = "Ovarian cyst specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309292002
// * ^expansion.contains[=].display = "Ovarian fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309293007
// * ^expansion.contains[=].display = "Placenta biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #30941000087105
// * ^expansion.contains[=].display = "Swab from eyelid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309476009
// * ^expansion.contains[=].display = "Neck block dissection specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309478005
// * ^expansion.contains[=].display = "Thrombus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309479002
// * ^expansion.contains[=].display = "Artery specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309480004
// * ^expansion.contains[=].display = "Vein specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309481000
// * ^expansion.contains[=].display = "Temporal artery specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309482007
// * ^expansion.contains[=].display = "Frozen section lymph node specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309483002
// * ^expansion.contains[=].display = "Lip biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309484008
// * ^expansion.contains[=].display = "Parotidectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309485009
// * ^expansion.contains[=].display = "Excised sublingual gland specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309486005
// * ^expansion.contains[=].display = "Excised submandibular gland specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309487001
// * ^expansion.contains[=].display = "Total colectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309488006
// * ^expansion.contains[=].display = "Partial colectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309489003
// * ^expansion.contains[=].display = "Anterior resection of rectum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309490007
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309491006
// * ^expansion.contains[=].display = "Biliary tract tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309493009
// * ^expansion.contains[=].display = "Bile duct biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309494003
// * ^expansion.contains[=].display = "Ampulla of Vater biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309495002
// * ^expansion.contains[=].display = "Omentum tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309496001
// * ^expansion.contains[=].display = "Omentectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309497005
// * ^expansion.contains[=].display = "Total nephrectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309498000
// * ^expansion.contains[=].display = "Partial nephrectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309499008
// * ^expansion.contains[=].display = "Foreskin biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309501000
// * ^expansion.contains[=].display = "Hysterectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309502007
// * ^expansion.contains[=].display = "Fetus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309503002
// * ^expansion.contains[=].display = "Breast nipple discharge specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309504008
// * ^expansion.contains[=].display = "Skin punch biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309505009
// * ^expansion.contains[=].display = "Skin incision biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309506005
// * ^expansion.contains[=].display = "Skin excision biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309507001
// * ^expansion.contains[=].display = "Muscle biopsy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309508006
// * ^expansion.contains[=].display = "Soft tissue lesion fine needle aspirate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309546004
// * ^expansion.contains[=].display = "Lumpectomy breast specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309547008
// * ^expansion.contains[=].display = "Segmentectomy breast specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309548003
// * ^expansion.contains[=].display = "Breast duct specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #309549006
// * ^expansion.contains[=].display = "Minor salivary gland specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #30961000087106
// * ^expansion.contains[=].display = "Urine specimen from ileal conduit"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #312494007
// * ^expansion.contains[=].display = "Vaginal vault smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #32641000087102
// * ^expansion.contains[=].display = "Specimen from ovarian abscess"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #32651000087104
// * ^expansion.contains[=].display = "Specimen obtained by transthoracic needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33331000087108
// * ^expansion.contains[=].display = "Specimen from abscess of vulva"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33351000087104
// * ^expansion.contains[=].display = "Urine specimen from ureterostomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33481000087100
// * ^expansion.contains[=].display = "Cardiac pacemaker component submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33491000087103
// * ^expansion.contains[=].display = "Cardiac pacemaker submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33501000087106
// * ^expansion.contains[=].display = "Donor-organ preservation solution specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33511000087108
// * ^expansion.contains[=].display = "Fluid specimen from abdominopelvic cavity"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33521000087100
// * ^expansion.contains[=].display = "Specimen from subgaleal abscess"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33531000087103
// * ^expansion.contains[=].display = "Ommaya reservoir submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33541000087109
// * ^expansion.contains[=].display = "Specimen from epidural abscess"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33551000087107
// * ^expansion.contains[=].display = "Wound packing material submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33631000087102
// * ^expansion.contains[=].display = "Allogeneic bone graft material submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33641000087108
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and anus and axillary fossa"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33651000087106
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and anus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33661000087109
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and anus and umbilicus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33671000087100
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and anus and throat"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33891000087100
// * ^expansion.contains[=].display = "Fluid specimen from empyema of subdural space"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33901000087104
// * ^expansion.contains[=].display = "Swab from tracheostomy stoma"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33911000087102
// * ^expansion.contains[=].display = "Tissue specimen from iris"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33921000087105
// * ^expansion.contains[=].display = "Tissue specimen from sclera"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #33931000087107
// * ^expansion.contains[=].display = "Vagus nerve electrical stimulation system lead submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #34141000087102
// * ^expansion.contains[=].display = "Specimen from lymph node obtained by endobronchial ultrasound guided transbronchial fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #34151000087104
// * ^expansion.contains[=].display = "Specimen from mass obtained by endobronchial ultrasound guided transbronchial fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #35261000087106
// * ^expansion.contains[=].display = "Bone screw submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #35271000087102
// * ^expansion.contains[=].display = "Porcine cardiac valve submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #35281000087100
// * ^expansion.contains[=].display = "Surgical stainless steel suture submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #35291000087103
// * ^expansion.contains[=].display = "Surgical staple submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #35311000087102
// * ^expansion.contains[=].display = "Bone plate submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #35321000087105
// * ^expansion.contains[=].display = "Implantable defibrillator component submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #363311008
// * ^expansion.contains[=].display = "Specimen from digestive system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #363328006
// * ^expansion.contains[=].display = "Tissue specimen from digestive system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #363329003
// * ^expansion.contains[=].display = "Tissue specimen from respiratory system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #369611008
// * ^expansion.contains[=].display = "Tissue specimen obtained from small intestine by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #369613006
// * ^expansion.contains[=].display = "Tissue specimen obtained for Hodgkin's disease by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #369614000
// * ^expansion.contains[=].display = "Tissue specimen obtained from extrahepatic bile ducts by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #369615004
// * ^expansion.contains[=].display = "Tissue specimen obtained from extrahepatic bile ducts by choledochal cyst resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #369616003
// * ^expansion.contains[=].display = "Tissue specimen obtained from gallbladder by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #369617007
// * ^expansion.contains[=].display = "Tissue specimen obtained from gallbladder by cholecystectomy with partial hepatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #369618002
// * ^expansion.contains[=].display = "Tissue specimen obtained from vulva by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #370108001
// * ^expansion.contains[=].display = "Extrahepatic bile duct cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #371780008
// * ^expansion.contains[=].display = "Specimen for identification"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #371782000
// * ^expansion.contains[=].display = "Human bone for identification"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #371783005
// * ^expansion.contains[=].display = "Human tissue for identification"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #371784004
// * ^expansion.contains[=].display = "Body parts for identification"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #373101006
// * ^expansion.contains[=].display = "Breast cytologic material obtained by percutaneous core biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #373102004
// * ^expansion.contains[=].display = "Specimen from breast obtained by image guided core biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #373103009
// * ^expansion.contains[=].display = "Breast cytologic material obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #373192005
// * ^expansion.contains[=].display = "Lymph node from axillary dissection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #373193000
// * ^expansion.contains[=].display = "Lymph node from sentinel lymph node dissection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #373826004
// * ^expansion.contains[=].display = "Surgical excision specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #379481000087102
// * ^expansion.contains[=].display = "Musculoskeletal implant submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #384744003
// * ^expansion.contains[=].display = "Lymph node from sentinel lymph node dissection and axillary dissection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #384746001
// * ^expansion.contains[=].display = "Specimen from lung obtained by wedge biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #384747005
// * ^expansion.contains[=].display = "Specimen from lung obtained by needle biopsy using computed tomography guidance"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #384819001
// * ^expansion.contains[=].display = "Specimen from prostate obtained by needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #384820007
// * ^expansion.contains[=].display = "Specimen from prostate obtained by transurethral resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #385338007
// * ^expansion.contains[=].display = "Specimen from anus obtained by transanal disc excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #385339004
// * ^expansion.contains[=].display = "Specimen from anus obtained by transanal disc excision, intact"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #385340002
// * ^expansion.contains[=].display = "Specimen from anus obtained by transanal disc excision, fragmented"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #38851000087103
// * ^expansion.contains[=].display = "In vitro fertilisation medium submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396273004
// * ^expansion.contains[=].display = "Specimen from uterine cervix obtained by excision of cervix"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396353007
// * ^expansion.contains[=].display = "Specimen from skin obtained by elliptical excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396354001
// * ^expansion.contains[=].display = "Specimen from skin obtained by wide excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396355000
// * ^expansion.contains[=].display = "Specimen from skin obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396356004
// * ^expansion.contains[=].display = "Specimen from skin obtained by re-excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396357008
// * ^expansion.contains[=].display = "Specimen from skin obtained by elliptical re-excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396358003
// * ^expansion.contains[=].display = "Specimen from skin obtained by wide re-excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396359006
// * ^expansion.contains[=].display = "Lymph node from regional lymph node dissection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396476009
// * ^expansion.contains[=].display = "Specimen from liver obtained by right lobectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396477000
// * ^expansion.contains[=].display = "Specimen from liver obtained by extended right lobectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396478005
// * ^expansion.contains[=].display = "Specimen from liver obtained by medial segmentectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396479002
// * ^expansion.contains[=].display = "Specimen from liver obtained by left lateral segmentectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396480004
// * ^expansion.contains[=].display = "Specimen from liver obtained by total left lobectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396481000
// * ^expansion.contains[=].display = "Specimen from explanted liver"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396483002
// * ^expansion.contains[=].display = "Specimen from skin obtained by shave excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396525008
// * ^expansion.contains[=].display = "Specimen from adrenal gland obtained by needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396526009
// * ^expansion.contains[=].display = "Specimen from adrenal gland obtained by partial adrenalectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396527000
// * ^expansion.contains[=].display = "Specimen from adrenal gland obtained by total adrenalectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396685001
// * ^expansion.contains[=].display = "Specimen from urinary bladder obtained by radical cystectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396804002
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by pylorus sparing pancreaticoduodenectomy, partial pancreatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396805001
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by pylorus sparing pancreaticoduodenectomy, total pancreatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396806000
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by pancreaticoduodenectomy, partial pancreatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396807009
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by pancreaticoduodenectomy, total pancreatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396896007
// * ^expansion.contains[=].display = "Specimen from thymus gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396897003
// * ^expansion.contains[=].display = "Specimen from thymus gland obtained by transcervical thymectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396898008
// * ^expansion.contains[=].display = "Specimen from thymus gland obtained by thoracotomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396899000
// * ^expansion.contains[=].display = "Specimen from thymus gland obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396900005
// * ^expansion.contains[=].display = "Specimen from thymus gland obtained by needle biopsy using computed tomography guidance"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396902002
// * ^expansion.contains[=].display = "Specimen from thymus gland obtained by transthoracic needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396904001
// * ^expansion.contains[=].display = "Specimen from thymus gland obtained by limited thoracotomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396906004
// * ^expansion.contains[=].display = "Specimen from thymus gland obtained by video assisted thoracoscopy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396928004
// * ^expansion.contains[=].display = "Specimen from eye obtained by enucleation"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396997002
// * ^expansion.contains[=].display = "Specimen from bone marrow obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396998007
// * ^expansion.contains[=].display = "Specimen from bone marrow obtained by aspiration and biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #396999004
// * ^expansion.contains[=].display = "Specimen from bone marrow obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397053005
// * ^expansion.contains[=].display = "Specimen from small intestine obtained by polypectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397055003
// * ^expansion.contains[=].display = "Specimen from small intestine obtained by segmental resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397056002
// * ^expansion.contains[=].display = "Specimen from small intestine obtained by Whipple resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397077004
// * ^expansion.contains[=].display = "Specimen obtained by incisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397078009
// * ^expansion.contains[=].display = "Specimen obtained by excisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397111007
// * ^expansion.contains[=].display = "Specimen from vagina obtained by partial vaginectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397129002
// * ^expansion.contains[=].display = "Specimen from vulva"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397130007
// * ^expansion.contains[=].display = "Specimen from vulva obtained by local excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397131006
// * ^expansion.contains[=].display = "Specimen from vulva obtained by wide excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397132004
// * ^expansion.contains[=].display = "Specimen from vulva obtained by partial vulvectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397133009
// * ^expansion.contains[=].display = "Specimen from vulva obtained by total vulvectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397134003
// * ^expansion.contains[=].display = "Specimen from vulva obtained by radical vulvectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397135002
// * ^expansion.contains[=].display = "Specimen from pelvic lymph node"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397136001
// * ^expansion.contains[=].display = "Specimen from inguinofemoral lymphadenectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397199005
// * ^expansion.contains[=].display = "Specimen from breast obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397221008
// * ^expansion.contains[=].display = "Specimen from renal pelvis obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397232008
// * ^expansion.contains[=].display = "Specimen from renal pelvis obtained by nephroureterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397233003
// * ^expansion.contains[=].display = "Specimen from renal pelvis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397234009
// * ^expansion.contains[=].display = "Specimen from renal pelvis obtained by partial nephroureterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397235005
// * ^expansion.contains[=].display = "Specimen from renal pelvis obtained by complete nephroureterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397245007
// * ^expansion.contains[=].display = "Specimen from ovary obtained by hysterectomy with right salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397246008
// * ^expansion.contains[=].display = "Specimen from ovary obtained by hysterectomy with left salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397326000
// * ^expansion.contains[=].display = "Specimen from right fallopian tube obtained by hysterectomy with salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397333000
// * ^expansion.contains[=].display = "Specimen from right fallopian tube obtained by salpingectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397334006
// * ^expansion.contains[=].display = "Specimen from left fallopian tube obtained by salpingectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397436009
// * ^expansion.contains[=].display = "Specimen obtained by lymphadenectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397438005
// * ^expansion.contains[=].display = "Specimen from lymph node obtained by staging laparotomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397455009
// * ^expansion.contains[=].display = "Specimen from thoracic mesothelium obtained by percutaneous needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397456005
// * ^expansion.contains[=].display = "Specimen from thoracic mesothelium obtained by thoracoscopic biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397457001
// * ^expansion.contains[=].display = "Specimen from thoracic mesothelium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397458006
// * ^expansion.contains[=].display = "Specimen from thoracic mesothelium obtained by open thoracotomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397462000
// * ^expansion.contains[=].display = "Specimen from pericardium obtained by pericardial resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397482001
// * ^expansion.contains[=].display = "Specimen from extrahepatic bile duct obtained by pancreaticoduodenectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #397483006
// * ^expansion.contains[=].display = "Specimen from extrahepatic bile duct obtained by segmental resection of bile ducts"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399388008
// * ^expansion.contains[=].display = "Specimen from left fallopian tube obtained by hysterectomy with salpingo-oophorectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399396003
// * ^expansion.contains[=].display = "Trophoblastic tissue obtained from uterus by dilation and curettage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399402006
// * ^expansion.contains[=].display = "Specimen from ureter"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399407000
// * ^expansion.contains[=].display = "Specimen from ureter obtained by ureterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399411006
// * ^expansion.contains[=].display = "Specimen from trophoblast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399436000
// * ^expansion.contains[=].display = "Specimen from central nervous system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399440009
// * ^expansion.contains[=].display = "Specimen from ureter obtained by nephroureterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399443006
// * ^expansion.contains[=].display = "Specimen from eye obtained by complete exenteration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399447007
// * ^expansion.contains[=].display = "Trophoblastic tissue obtained by radical hysterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399451009
// * ^expansion.contains[=].display = "Tissue specimen from retina"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399460001
// * ^expansion.contains[=].display = "Specimen from extrahepatic bile duct"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399467003
// * ^expansion.contains[=].display = "Specimen from uvea obtained by limited exenteration of eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399484009
// * ^expansion.contains[=].display = "Superficial parotidectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399486006
// * ^expansion.contains[=].display = "Tissue specimen from vulva"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399492000
// * ^expansion.contains[=].display = "Tissue specimen from lung"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399499009
// * ^expansion.contains[=].display = "Specimen from uvea obtained by complete exenteration of eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399502008
// * ^expansion.contains[=].display = "Trophoblastic tissue obtained by pelvic exenteration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399512001
// * ^expansion.contains[=].display = "Specimen from retina obtained by enucleation of eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399526005
// * ^expansion.contains[=].display = "Specimen from major salivary gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399532000
// * ^expansion.contains[=].display = "Tissue specimen from renal pelvis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399541005
// * ^expansion.contains[=].display = "Tissue specimen from extrahepatic bile duct"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399542003
// * ^expansion.contains[=].display = "Tissue specimen from central nervous system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399551006
// * ^expansion.contains[=].display = "Specimen from central nervous system obtained by open biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399559008
// * ^expansion.contains[=].display = "Specimen from uvea obtained by enucleation of eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399572009
// * ^expansion.contains[=].display = "Tissue specimen from thymus gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399603006
// * ^expansion.contains[=].display = "Specimen from retina obtained by complete exenteration of eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399614009
// * ^expansion.contains[=].display = "Specimen from central nervous system obtained by total resection of tumour"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399619004
// * ^expansion.contains[=].display = "Tissue specimen from uvea"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399622002
// * ^expansion.contains[=].display = "Specimen from thyroid obtained by total thyroidectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399624001
// * ^expansion.contains[=].display = "Tissue specimen from ureter"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399629006
// * ^expansion.contains[=].display = "Specimen from stomach obtained by gastrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399633004
// * ^expansion.contains[=].display = "Specimen from thymus gland obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399640003
// * ^expansion.contains[=].display = "Specimen from retina obtained by limited exenteration of eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399645008
// * ^expansion.contains[=].display = "Tissue specimen from major salivary gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399649002
// * ^expansion.contains[=].display = "Specimen from regional lymph node obtained by lymphadenectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399657004
// * ^expansion.contains[=].display = "Tissue specimen from trophoblast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399658009
// * ^expansion.contains[=].display = "Trophoblastic tissue obtained by hysterectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399661005
// * ^expansion.contains[=].display = "Specimen from pelvic lymphadenectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399672000
// * ^expansion.contains[=].display = "Tissue specimen from thoracic mesothelium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399680007
// * ^expansion.contains[=].display = "Specimen from thyroid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399689008
// * ^expansion.contains[=].display = "Specimen from thyroid obtained by thyroidectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399693002
// * ^expansion.contains[=].display = "Total parotidectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399713008
// * ^expansion.contains[=].display = "Specimen from uterine cervix obtained by cone biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399728008
// * ^expansion.contains[=].display = "Specimen from central nervous system obtained by stereotactically guided core needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399731009
// * ^expansion.contains[=].display = "Specimen from anus obtained by excision of anal polyp"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399732002
// * ^expansion.contains[=].display = "Specimen from central nervous system obtained by partial excision of tumour"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399735000
// * ^expansion.contains[=].display = "Specimen from eye obtained by limited exenteration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399741007
// * ^expansion.contains[=].display = "Specimen from kidney obtained by radical nephrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399747006
// * ^expansion.contains[=].display = "Specimen from salivary gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399751008
// * ^expansion.contains[=].display = "Specimen from uterus obtained by dilation and curettage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #399752001
// * ^expansion.contains[=].display = "Specimen from anus obtained by abdominoperineal resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #40371000087100
// * ^expansion.contains[=].display = "Combined specimen from swab of axillary fossa and groin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #404643001
// * ^expansion.contains[=].display = "Sputum smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #40511003
// * ^expansion.contains[=].display = "Eluate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #405902005
// * ^expansion.contains[=].display = "Specimen obtained by radical excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #406101006
// * ^expansion.contains[=].display = "Tissue specimen from axilla"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #408654003
// * ^expansion.contains[=].display = "Specimen obtained by amputation"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #409821005
// * ^expansion.contains[=].display = "Timed urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #409876003
// * ^expansion.contains[=].display = "Oral mucosal transudate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #410580001
// * ^expansion.contains[=].display = "Respiratory fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #410581002
// * ^expansion.contains[=].display = "Upper respiratory fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #410729004
// * ^expansion.contains[=].display = "Amniocentesis fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #415293009
// * ^expansion.contains[=].display = "Respiratory secretion"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #415563002
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by excisional biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #418564007
// * ^expansion.contains[=].display = "Pleural fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #418932006
// * ^expansion.contains[=].display = "Oral swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #419695002
// * ^expansion.contains[=].display = "Environmental swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #420548004
// * ^expansion.contains[=].display = "Specimen from mass"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #42061000087105
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and axillary fossa and groin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #421615004
// * ^expansion.contains[=].display = "Specimen from appendix obtained by appendicectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #422991009
// * ^expansion.contains[=].display = "Specimen from appendix and right colon obtained by appendicectomy and right hemicolectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #423671006
// * ^expansion.contains[=].display = "Specimen from peritoneal tumour implant"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #423696009
// * ^expansion.contains[=].display = "Specimen from appendix and colon obtained by appendicectomy and right colectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #425804000
// * ^expansion.contains[=].display = "Specimen obtained by wide resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #426815000
// * ^expansion.contains[=].display = "Specimen obtained by marginal resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #426924005
// * ^expansion.contains[=].display = "Specimen obtained by intralesional resection"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #427558003
// * ^expansion.contains[=].display = "Specimen obtained by core needle biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #429832000
// * ^expansion.contains[=].display = "Biliary fluid specimen obtained by drainage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #429836002
// * ^expansion.contains[=].display = "Specimen from maxillary sinus obtained by irrigation"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #429931000124105
// * ^expansion.contains[=].display = "Nasal aspirate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430117006
// * ^expansion.contains[=].display = "Eye region cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430131006
// * ^expansion.contains[=].display = "Specimen from seminal vesicle"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430132004
// * ^expansion.contains[=].display = "Specimen from sympathetic nerve ganglion"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430133009
// * ^expansion.contains[=].display = "Specimen from lip"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430144001
// * ^expansion.contains[=].display = "Specimen from larynx"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430157009
// * ^expansion.contains[=].display = "Specimen from meninges"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430214008
// * ^expansion.contains[=].display = "Specimen from lower limb"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430221008
// * ^expansion.contains[=].display = "Specimen from spinal cord"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430222001
// * ^expansion.contains[=].display = "Specimen from tonsil"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430228002
// * ^expansion.contains[=].display = "Specimen from tunica of testis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430232008
// * ^expansion.contains[=].display = "Specimen from trunk"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430234009
// * ^expansion.contains[=].display = "Specimen from spermatic cord"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430236006
// * ^expansion.contains[=].display = "Specimen from nerve"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430238007
// * ^expansion.contains[=].display = "Specimen from nasal sinus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430241003
// * ^expansion.contains[=].display = "Ear cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430244006
// * ^expansion.contains[=].display = "Specimen from pericardium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430245007
// * ^expansion.contains[=].display = "Specimen from nasal fossae"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430246008
// * ^expansion.contains[=].display = "Specimen from upper limb"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430248009
// * ^expansion.contains[=].display = "Specimen from nasopharynx"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430249001
// * ^expansion.contains[=].display = "Specimen from tongue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430250001
// * ^expansion.contains[=].display = "Specimen from peritoneum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430268003
// * ^expansion.contains[=].display = "Specimen from bone"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430297000
// * ^expansion.contains[=].display = "Cytologic material obtained from unspecified body site"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430304001
// * ^expansion.contains[=].display = "Specimen from unspecified body site"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430309006
// * ^expansion.contains[=].display = "Breast nipple discharge cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430310001
// * ^expansion.contains[=].display = "Sputum cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430312009
// * ^expansion.contains[=].display = "Cytologic material obtained from synovial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430318008
// * ^expansion.contains[=].display = "Urine cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430319000
// * ^expansion.contains[=].display = "Specimen from tooth"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430346005
// * ^expansion.contains[=].display = "Liquid based cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430379005
// * ^expansion.contains[=].display = "Cytologic material obtained from pericardial fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430386002
// * ^expansion.contains[=].display = "Spermatozoa cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430387006
// * ^expansion.contains[=].display = "Combined specimen of cytologic material from endocervix, ectocervix, and vaginal fornix"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430389009
// * ^expansion.contains[=].display = "Amniotic fluid cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430408004
// * ^expansion.contains[=].display = "Cytologic material obtained from pleural fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430856003
// * ^expansion.contains[=].display = "Tissue section"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430861001
// * ^expansion.contains[=].display = "Macroscopic tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #430970004
// * ^expansion.contains[=].display = "Core sample of tissue block"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431058008
// * ^expansion.contains[=].display = "Lip cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431196006
// * ^expansion.contains[=].display = "Tissue spot"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431205006
// * ^expansion.contains[=].display = "Specimen from epididymis obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431232001
// * ^expansion.contains[=].display = "Specimen from eye region obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431233006
// * ^expansion.contains[=].display = "Specimen from fallopian tube obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431234000
// * ^expansion.contains[=].display = "Specimen from fetus obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431235004
// * ^expansion.contains[=].display = "Specimen from trachea obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431361003
// * ^expansion.contains[=].display = "Joint fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431404007
// * ^expansion.contains[=].display = "Specimen from bone obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431405008
// * ^expansion.contains[=].display = "Specimen from ovary obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431406009
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431412004
// * ^expansion.contains[=].display = "Specimen from trunk obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431413009
// * ^expansion.contains[=].display = "Specimen from tunica of testis obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431696005
// * ^expansion.contains[=].display = "Specimen from spermatic cord obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431697001
// * ^expansion.contains[=].display = "Specimen from spinal cord obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431771004
// * ^expansion.contains[=].display = "Ascitic fluid cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431776009
// * ^expansion.contains[=].display = "Swab of surgical drain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431884001
// * ^expansion.contains[=].display = "Specimen from gallbladder obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431889006
// * ^expansion.contains[=].display = "Specimen from upper limb obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #431905001
// * ^expansion.contains[=].display = "Swab of building drain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432057001
// * ^expansion.contains[=].display = "Specimen from seminal vesicle obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432058006
// * ^expansion.contains[=].display = "Specimen from skeletal muscle obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432059003
// * ^expansion.contains[=].display = "Specimen from uterus obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432060008
// * ^expansion.contains[=].display = "Specimen from uterus obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432061007
// * ^expansion.contains[=].display = "Specimen from vein obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432097003
// * ^expansion.contains[=].display = "Specimen from artery obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432098008
// * ^expansion.contains[=].display = "Specimen from bile duct obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432099000
// * ^expansion.contains[=].display = "Specimen from urinary bladder obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432134009
// * ^expansion.contains[=].display = "Specimen from skin obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432135005
// * ^expansion.contains[=].display = "Specimen from small intestine obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432136006
// * ^expansion.contains[=].display = "Specimen from vulva obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432139004
// * ^expansion.contains[=].display = "Specimen from brain obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432140002
// * ^expansion.contains[=].display = "Specimen from bronchus obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432141003
// * ^expansion.contains[=].display = "Specimen from parathyroid obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432142005
// * ^expansion.contains[=].display = "Specimen from penis obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432143000
// * ^expansion.contains[=].display = "Specimen from penis obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432144006
// * ^expansion.contains[=].display = "Specimen from mediastinum obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432145007
// * ^expansion.contains[=].display = "Specimen from meninges obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432146008
// * ^expansion.contains[=].display = "Specimen from mesentery obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432382007
// * ^expansion.contains[=].display = "Specimen from lymph node obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432383002
// * ^expansion.contains[=].display = "Specimen from spleen obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432384008
// * ^expansion.contains[=].display = "Specimen from stomach obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432385009
// * ^expansion.contains[=].display = "Specimen from sympathetic nerve ganglion obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432419006
// * ^expansion.contains[=].display = "Specimen from joint obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432420000
// * ^expansion.contains[=].display = "Specimen from ureter obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432436003
// * ^expansion.contains[=].display = "Specimen from hydrocele of spermatic cord"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432441006
// * ^expansion.contains[=].display = "Specimen from hydrocele of tunica vaginalis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432607005
// * ^expansion.contains[=].display = "Specimen from mouth obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432608000
// * ^expansion.contains[=].display = "Specimen from nasal fossae obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432657002
// * ^expansion.contains[=].display = "Ganglion cyst specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432825001
// * ^expansion.contains[=].display = "Body secretion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432864003
// * ^expansion.contains[=].display = "Specimen from large intestine obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432865002
// * ^expansion.contains[=].display = "Specimen from larynx obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432897002
// * ^expansion.contains[=].display = "Cytologic material obtained from joint fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432910000
// * ^expansion.contains[=].display = "Specimen from ear obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432980007
// * ^expansion.contains[=].display = "Specimen from epididymis obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432981006
// * ^expansion.contains[=].display = "Specimen from eye obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432982004
// * ^expansion.contains[=].display = "Specimen from peritoneum obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432983009
// * ^expansion.contains[=].display = "Specimen from pituitary gland obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432984003
// * ^expansion.contains[=].display = "Specimen from thyroid obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432985002
// * ^expansion.contains[=].display = "Specimen from tongue obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #432986001
// * ^expansion.contains[=].display = "Specimen from tooth obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433115004
// * ^expansion.contains[=].display = "Specimen from lip obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433116003
// * ^expansion.contains[=].display = "Specimen from liver obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433117007
// * ^expansion.contains[=].display = "Specimen from lower limb obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433118002
// * ^expansion.contains[=].display = "Specimen from retroperitoneum obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433119005
// * ^expansion.contains[=].display = "Specimen from salivary gland obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433120004
// * ^expansion.contains[=].display = "Specimen from urethra obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433308004
// * ^expansion.contains[=].display = "Specimen from spleen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433309007
// * ^expansion.contains[=].display = "Specimen from omentum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433322004
// * ^expansion.contains[=].display = "Specimen from mesentery"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433323009
// * ^expansion.contains[=].display = "Specimen from retroperitoneum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433324003
// * ^expansion.contains[=].display = "Specimen from eye region"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433326001
// * ^expansion.contains[=].display = "Specimen from mediastinum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433760005
// * ^expansion.contains[=].display = "Specimen from spleen obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433781000124108
// * ^expansion.contains[=].display = "Tissue specimen from mass"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433799002
// * ^expansion.contains[=].display = "Nerve ganglion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433801000124107
// * ^expansion.contains[=].display = "Combined nasopharyngeal and oropharyngeal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433854001
// * ^expansion.contains[=].display = "Specimen from seminal vesicle obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433859006
// * ^expansion.contains[=].display = "Specimen from nasal fossae obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433860001
// * ^expansion.contains[=].display = "Specimen from nasal sinus obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433861002
// * ^expansion.contains[=].display = "Specimen from nasal sinus obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433871000124101
// * ^expansion.contains[=].display = "Nasal washings"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433873002
// * ^expansion.contains[=].display = "Specimen from spermatic cord obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #433881000124103
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and throat"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #434014007
// * ^expansion.contains[=].display = "Specimen from mediastinum obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #434140003
// * ^expansion.contains[=].display = "Specimen from mesentery obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #434244002
// * ^expansion.contains[=].display = "Specimen from retroperitoneum obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #434249007
// * ^expansion.contains[=].display = "Specimen from ear obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #434250007
// * ^expansion.contains[=].display = "Specimen from pericardium obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #434406008
// * ^expansion.contains[=].display = "Specimen from salivary gland obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #435541000124108
// * ^expansion.contains[=].display = "Scab specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438336007
// * ^expansion.contains[=].display = "Haemorrhoid tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438343001
// * ^expansion.contains[=].display = "Swab of pilonidal sinus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438351003
// * ^expansion.contains[=].display = "Tissue specimen obtained by oesophagogastrectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438352005
// * ^expansion.contains[=].display = "Specimen from trachea obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438454007
// * ^expansion.contains[=].display = "Specimen from transplanted lung obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438542005
// * ^expansion.contains[=].display = "Specimen from vagus nerve"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438543000
// * ^expansion.contains[=].display = "Specimen from transplanted liver obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438545007
// * ^expansion.contains[=].display = "Fluid specimen from spermatocele"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438595008
// * ^expansion.contains[=].display = "Fluid specimen from sebaceous cyst"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438659007
// * ^expansion.contains[=].display = "Specimen from liver obtained by wedge biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438660002
// * ^expansion.contains[=].display = "Specimen from prosthetic device"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438661003
// * ^expansion.contains[=].display = "Specimen from transplanted kidney obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438803004
// * ^expansion.contains[=].display = "Tissue specimen from retroperitoneum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438804005
// * ^expansion.contains[=].display = "Tissue specimen from transplanted kidney"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438805006
// * ^expansion.contains[=].display = "Whole tooth specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #438960000
// * ^expansion.contains[=].display = "Specimen from intervertebral disc"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #439034006
// * ^expansion.contains[=].display = "Tissue specimen from liver obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #439479000
// * ^expansion.contains[=].display = "Tissue specimen obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #439580004
// * ^expansion.contains[=].display = "Urine collection pad submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #439628000
// * ^expansion.contains[=].display = "Urinary collection bag submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #439895009
// * ^expansion.contains[=].display = "Tissue specimen from nose obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #439961009
// * ^expansion.contains[=].display = "Implant submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440135000
// * ^expansion.contains[=].display = "Specimen from ureter obtained by brush biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440136004
// * ^expansion.contains[=].display = "Specimen from cranium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440137008
// * ^expansion.contains[=].display = "Specimen obtained by peritoneal lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440138003
// * ^expansion.contains[=].display = "Specimen containing crystals from synovial joint"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440229008
// * ^expansion.contains[=].display = "Specimen from environment"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440468004
// * ^expansion.contains[=].display = "Tampon submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440469007
// * ^expansion.contains[=].display = "Tissue specimen from ectopic pregnancy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440472000
// * ^expansion.contains[=].display = "Specimen from transplanted lung obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440473005
// * ^expansion.contains[=].display = "Contact lens submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440493002
// * ^expansion.contains[=].display = "Graft specimen from patient"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440500007
// * ^expansion.contains[=].display = "Dried blood spot specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440502004
// * ^expansion.contains[=].display = "Soft tissue specimen obtained by excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440515008
// * ^expansion.contains[=].display = "Specimen of targeted lesion obtained by biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440674008
// * ^expansion.contains[=].display = "Specimen obtained by lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #440675009
// * ^expansion.contains[=].display = "Specimen from upper urinary tract obtained by lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441479001
// * ^expansion.contains[=].display = "Fresh tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441510007
// * ^expansion.contains[=].display = "Blood specimen with anticoagulant"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441518000
// * ^expansion.contains[=].display = "Lymphoblastoid cell line specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441620008
// * ^expansion.contains[=].display = "Oral fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441652008
// * ^expansion.contains[=].display = "Formalin-fixed paraffin-embedded tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441673008
// * ^expansion.contains[=].display = "Ribonucleic acid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441694006
// * ^expansion.contains[=].display = "Specimen from axillary lymph node obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441695007
// * ^expansion.contains[=].display = "Specimen from parotid gland obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441709004
// * ^expansion.contains[=].display = "Specimen from sentinel lymph node"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441710009
// * ^expansion.contains[=].display = "Specimen from testis obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441749007
// * ^expansion.contains[=].display = "Specimen from submandibular gland obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441750007
// * ^expansion.contains[=].display = "Specimen from abdominal cavity structure obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441792002
// * ^expansion.contains[=].display = "Specimen from adrenal gland obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441810001
// * ^expansion.contains[=].display = "Specimen from soft tissue obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441876003
// * ^expansion.contains[=].display = "Specimen from sublingual gland obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441884004
// * ^expansion.contains[=].display = "Specimen from prostate obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441903006
// * ^expansion.contains[=].display = "Specimen obtained by bronchial aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #441906003
// * ^expansion.contains[=].display = "Specimen from pelvic structure obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #442043001
// * ^expansion.contains[=].display = "2 hour urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #442166002
// * ^expansion.contains[=].display = "a.m. serum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #442173007
// * ^expansion.contains[=].display = "Urine specimen from nephrostomy tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #442219007
// * ^expansion.contains[=].display = "p.m. specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #442427000
// * ^expansion.contains[=].display = "p.m. serum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #442524009
// * ^expansion.contains[=].display = "a.m. specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #442649003
// * ^expansion.contains[=].display = "Specimen from adipose tissue obtained by fine needle aspiration biopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #443241002
// * ^expansion.contains[=].display = "Specimen from pineal gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #443418008
// * ^expansion.contains[=].display = "Specimen from thoracic cavity"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #443498007
// * ^expansion.contains[=].display = "Specimen from cerebellum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #443654002
// * ^expansion.contains[=].display = "Specimen from abdominal cavity"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444623009
// * ^expansion.contains[=].display = "Machine haemodialysate specimen obtained before mixing"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444656005
// * ^expansion.contains[=].display = "Drainage tube submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444787003
// * ^expansion.contains[=].display = "Swab of endocervix"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444824001
// * ^expansion.contains[=].display = "Wall of abscess"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444831002
// * ^expansion.contains[=].display = "Machine haemodialysate specimen obtained after mixing"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444832009
// * ^expansion.contains[=].display = "Expressed breast milk specimen after breast cleansing"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444865001
// * ^expansion.contains[=].display = "Expressed breast milk specimen before breast cleansing"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444936006
// * ^expansion.contains[=].display = "Fluid specimen from subdural space"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444937002
// * ^expansion.contains[=].display = "Urine specimen from ureter"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444946008
// * ^expansion.contains[=].display = "Dialysis fluid specimen obtained before dialysis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444959000
// * ^expansion.contains[=].display = "Peritoneal dialysis fluid specimen obtained before dialysis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #444965000
// * ^expansion.contains[=].display = "Fluid specimen from epidural space"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445069004
// * ^expansion.contains[=].display = "Peritoneal dialysis fluid specimen obtained after dialysis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445160003
// * ^expansion.contains[=].display = "Swab of eye"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445295009
// * ^expansion.contains[=].display = "Blood specimen with EDTA"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445297001
// * ^expansion.contains[=].display = "Swab of internal nose"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445364004
// * ^expansion.contains[=].display = "Swab of axilla"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445367006
// * ^expansion.contains[=].display = "Swab of umbilicus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445369009
// * ^expansion.contains[=].display = "Swab of endometrium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445372002
// * ^expansion.contains[=].display = "Cerebrospinal fluid specimen from ventricle of brain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445383006
// * ^expansion.contains[=].display = "Urine specimen obtained for Stamey test"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445384000
// * ^expansion.contains[=].display = "Haemodialysate specimen from haemodialysis machine using reverse osmosis system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445405002
// * ^expansion.contains[=].display = "Specimen obtained by surgical procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445421007
// * ^expansion.contains[=].display = "Fungal isolate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445444005
// * ^expansion.contains[=].display = "Swab of groin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445447003
// * ^expansion.contains[=].display = "Specimen from trachea obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445516007
// * ^expansion.contains[=].display = "Dialysis fluid specimen obtained after dialysis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445529007
// * ^expansion.contains[=].display = "Haemodialysate specimen from haemodialysis machine using water distribution system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445742005
// * ^expansion.contains[=].display = "Postcoital urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445743000
// * ^expansion.contains[=].display = "Postejaculation urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445744006
// * ^expansion.contains[=].display = "Fluid specimen from seroma"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #445745007
// * ^expansion.contains[=].display = "Fluid specimen from subphrenic space"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446128003
// * ^expansion.contains[=].display = "Fluid specimen from Bartholin gland cyst"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446129006
// * ^expansion.contains[=].display = "Bile specimen from common bile duct"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446130001
// * ^expansion.contains[=].display = "Urine specimen from urinary bladder"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446131002
// * ^expansion.contains[=].display = "Blood specimen obtained for blood culture"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446137003
// * ^expansion.contains[=].display = "Pharmaceutical product submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446211008
// * ^expansion.contains[=].display = "Drainage fluid specimen obtained after surgical placement of drain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446212001
// * ^expansion.contains[=].display = "Biological spore test strip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446235003
// * ^expansion.contains[=].display = "Specimen from conjunctiva obtained by lavage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446272009
// * ^expansion.contains[=].display = "Blood specimen submitted in heparinised collection tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446277003
// * ^expansion.contains[=].display = "Urine specimen obtained from nephrostomy tube after percutaneous insertion"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446299006
// * ^expansion.contains[=].display = "Specimen obtained by transbronchial aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446300003
// * ^expansion.contains[=].display = "Urine specimen from urethra"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446302006
// * ^expansion.contains[=].display = "Air specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446304007
// * ^expansion.contains[=].display = "Tissue specimen from harvested bone"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446305008
// * ^expansion.contains[=].display = "Specimen obtained by aspiration via tracheostomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446306009
// * ^expansion.contains[=].display = "Urine specimen obtained from urinary collection bag"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446364005
// * ^expansion.contains[=].display = "Specimen from donor corneal storage medium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446561003
// * ^expansion.contains[=].display = "Body fluid specimen obtained via cholecystostomy tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446562005
// * ^expansion.contains[=].display = "Body fluid specimen obtained via sump drain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446577002
// * ^expansion.contains[=].display = "Swab obtained during autopsy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446674003
// * ^expansion.contains[=].display = "Specimen from abscess of liver"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446675002
// * ^expansion.contains[=].display = "Specimen from knee joint obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446676001
// * ^expansion.contains[=].display = "Expressed breast milk specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446700001
// * ^expansion.contains[=].display = "Prostatic fluid specimen obtained for Stamey test"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446774006
// * ^expansion.contains[=].display = "Specimen from abscess of brain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446817004
// * ^expansion.contains[=].display = "Bile specimen from gallbladder"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446837000
// * ^expansion.contains[=].display = "Tissue specimen from amniotic membrane"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446838005
// * ^expansion.contains[=].display = "Specimen obtained by bronchial trap"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446842008
// * ^expansion.contains[=].display = "Tissue specimen from cervical lymph node"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446846006
// * ^expansion.contains[=].display = "Urine specimen obtained via indwelling urinary catheter"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446861007
// * ^expansion.contains[=].display = "Cerebrospinal fluid specimen obtained via ventriculoperitoneal shunt"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446906004
// * ^expansion.contains[=].display = "Jejunal fluid specimen from jejunostomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446907008
// * ^expansion.contains[=].display = "Urine specimen obtained from kidney"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446908003
// * ^expansion.contains[=].display = "Fluid specimen from mucocele of lacrimal sac"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446951004
// * ^expansion.contains[=].display = "Specimen from granulation tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446952006
// * ^expansion.contains[=].display = "Specimen from skin obtained by scraping"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #446972001
// * ^expansion.contains[=].display = "Specimen from abscess obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447098004
// * ^expansion.contains[=].display = "Specimen from nail obtained by scraping"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447103002
// * ^expansion.contains[=].display = "Foreign body submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447104008
// * ^expansion.contains[=].display = "Urine specimen from urinary conduit"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447148003
// * ^expansion.contains[=].display = "Body substance specimen from ear"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447154002
// * ^expansion.contains[=].display = "Specimen from nose"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447155001
// * ^expansion.contains[=].display = "Tissue specimen from uterus obtained by curettage"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447158004
// * ^expansion.contains[=].display = "Bile specimen obtained by percutaneous transhepatic insertion of biliary drain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447337004
// * ^expansion.contains[=].display = "Specimen from conjunctiva obtained by scraping"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447339001
// * ^expansion.contains[=].display = "Nasal smear specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447341000
// * ^expansion.contains[=].display = "Bile specimen obtained via biliary T-tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447345009
// * ^expansion.contains[=].display = "Bronchial fluid specimen obtained from bronchial trap"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447355008
// * ^expansion.contains[=].display = "Dialysis fluid specimen obtained after continuous ambulatory peritoneal dialysis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447357000
// * ^expansion.contains[=].display = "Specimen from breast obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447358005
// * ^expansion.contains[=].display = "Specimen from endometrium obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447359002
// * ^expansion.contains[=].display = "Specimen from oesophagus obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447375004
// * ^expansion.contains[=].display = "Body fluid specimen obtained via chest tube"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447391001
// * ^expansion.contains[=].display = "Specimen from pharynx obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447392008
// * ^expansion.contains[=].display = "Specimen from vagina obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447403008
// * ^expansion.contains[=].display = "Tissue specimen from donor corneal rim"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447407009
// * ^expansion.contains[=].display = "Specimen from necrotic tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447488002
// * ^expansion.contains[=].display = "Suprapubic urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447589008
// * ^expansion.contains[=].display = "Urine specimen obtained by single catheterisation of urinary bladder"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447881000
// * ^expansion.contains[=].display = "Specimen from biliary system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #447955000
// * ^expansion.contains[=].display = "Specimen from rectum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #448789008
// * ^expansion.contains[=].display = "Nucleic acid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #449446003
// * ^expansion.contains[=].display = "Specimen from gallbladder"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #450872001
// * ^expansion.contains[=].display = "Specimen from urinary bladder"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #454911000124104
// * ^expansion.contains[=].display = "Swab from face"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #454951000124103
// * ^expansion.contains[=].display = "Swab from head"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #46121000146104
// * ^expansion.contains[=].display = "Urinary system calculus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #461911000124106
// * ^expansion.contains[=].display = "Oropharyngeal swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472861000
// * ^expansion.contains[=].display = "Swab from testicle"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472862007
// * ^expansion.contains[=].display = "Swab from lesion of skin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472863002
// * ^expansion.contains[=].display = "Swab from lower leg"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472864008
// * ^expansion.contains[=].display = "Swab from lower limb"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472865009
// * ^expansion.contains[=].display = "Swab from toe"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472866005
// * ^expansion.contains[=].display = "Swab from tongue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472867001
// * ^expansion.contains[=].display = "Swab from tonsil"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472868006
// * ^expansion.contains[=].display = "Swab from peritoneal cavity structure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472869003
// * ^expansion.contains[=].display = "Swab from pericardial sac structure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472870002
// * ^expansion.contains[=].display = "Swab from tracheostomy wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472871003
// * ^expansion.contains[=].display = "Swab from ulcer"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472872005
// * ^expansion.contains[=].display = "Swab from ultrasonic nebuliser"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472873000
// * ^expansion.contains[=].display = "Swab from urethral meatus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472874006
// * ^expansion.contains[=].display = "Swab from uterus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472875007
// * ^expansion.contains[=].display = "Swab from vesicle"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472876008
// * ^expansion.contains[=].display = "Swab from Bartholin cyst"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472877004
// * ^expansion.contains[=].display = "Swab from oesophagus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472878009
// * ^expansion.contains[=].display = "Swab from Bartholin gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472879001
// * ^expansion.contains[=].display = "Swab from placenta"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472880003
// * ^expansion.contains[=].display = "Swab from catheter"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472881004
// * ^expansion.contains[=].display = "Swab from pharynx"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472882006
// * ^expansion.contains[=].display = "Swab from superficial wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472883001
// * ^expansion.contains[=].display = "Swab from surgical wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472884007
// * ^expansion.contains[=].display = "Swab from deep wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472885008
// * ^expansion.contains[=].display = "Swab from pressure injury"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472886009
// * ^expansion.contains[=].display = "Swab from gastrostomy stoma"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472887000
// * ^expansion.contains[=].display = "Swab from labia"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472888005
// * ^expansion.contains[=].display = "Swab from larynx"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472889002
// * ^expansion.contains[=].display = "Swab from pelvis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472890006
// * ^expansion.contains[=].display = "Swab from appendix"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472891005
// * ^expansion.contains[=].display = "Swab from lip"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472892003
// * ^expansion.contains[=].display = "Swab from digit of hand"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472893008
// * ^expansion.contains[=].display = "Swab from abscess of brain"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472894002
// * ^expansion.contains[=].display = "Swab from cornea"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472895001
// * ^expansion.contains[=].display = "Swab from buttock"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472896000
// * ^expansion.contains[=].display = "Swab from blister"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472897009
// * ^expansion.contains[=].display = "Swab from hip region"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472898004
// * ^expansion.contains[=].display = "Swab from hand"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472899007
// * ^expansion.contains[=].display = "Swab from vaginal introitus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472900002
// * ^expansion.contains[=].display = "Swab from gingiva"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472901003
// * ^expansion.contains[=].display = "Swab from nasal sinus"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472902005
// * ^expansion.contains[=].display = "Swab from chest tube insertion site"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472903000
// * ^expansion.contains[=].display = "Swab from central venous catheter"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472904006
// * ^expansion.contains[=].display = "Swab from abdomen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472919007
// * ^expansion.contains[=].display = "Device submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472920001
// * ^expansion.contains[=].display = "Umbilical catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472921002
// * ^expansion.contains[=].display = "Umbilical catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472922009
// * ^expansion.contains[=].display = "Intracranial catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472923004
// * ^expansion.contains[=].display = "Peripheral vascular catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472924005
// * ^expansion.contains[=].display = "Pulmonary artery floatation catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472925006
// * ^expansion.contains[=].display = "Umbilical vein catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472926007
// * ^expansion.contains[=].display = "Chest tube tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472927003
// * ^expansion.contains[=].display = "Contact lens case submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472928008
// * ^expansion.contains[=].display = "Umbilical artery catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472929000
// * ^expansion.contains[=].display = "Central venous catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472930005
// * ^expansion.contains[=].display = "Bottle submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472931009
// * ^expansion.contains[=].display = "Arterial line tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472932002
// * ^expansion.contains[=].display = "Vascular catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472933007
// * ^expansion.contains[=].display = "Shunt tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472934001
// * ^expansion.contains[=].display = "Stent submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472935000
// * ^expansion.contains[=].display = "Central venous catheter tip from subclavian vein submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472936004
// * ^expansion.contains[=].display = "Tenckhoff catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472937008
// * ^expansion.contains[=].display = "Double J stent submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472938003
// * ^expansion.contains[=].display = "Tracheal tube submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472939006
// * ^expansion.contains[=].display = "Tracheostomy tube submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472940008
// * ^expansion.contains[=].display = "Intracranial ventricular catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472941007
// * ^expansion.contains[=].display = "Intracranial ventricular catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472942000
// * ^expansion.contains[=].display = "Ventriculoperitoneal shunt submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472943005
// * ^expansion.contains[=].display = "Heyer-Pudenz valve submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #472944004
// * ^expansion.contains[=].display = "Peritoneal catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473399006
// * ^expansion.contains[=].display = "Swab from Tenckhoff catheter exit site"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473400004
// * ^expansion.contains[=].display = "Swab from tooth"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473401000
// * ^expansion.contains[=].display = "Cotton wool ball submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473403002
// * ^expansion.contains[=].display = "Percutaneous nephrostomy tube tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473404008
// * ^expansion.contains[=].display = "Rickham reservoir submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473405009
// * ^expansion.contains[=].display = "Cerebrospinal fluid specimen obtained from Rickham reservoir"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473406005
// * ^expansion.contains[=].display = "Shunt submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473407001
// * ^expansion.contains[=].display = "Peripherally inserted central catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473408006
// * ^expansion.contains[=].display = "Umbilical artery catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473409003
// * ^expansion.contains[=].display = "Central venous catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473410008
// * ^expansion.contains[=].display = "Peripheral vascular catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473411007
// * ^expansion.contains[=].display = "External ventricular drain tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473412000
// * ^expansion.contains[=].display = "Endotracheal tube submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473413005
// * ^expansion.contains[=].display = "Central venous catheter from internal jugular vein submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473414004
// * ^expansion.contains[=].display = "Intracranial pressure catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473415003
// * ^expansion.contains[=].display = "Intrauterine contraceptive device submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473416002
// * ^expansion.contains[=].display = "Nephrostomy tube submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473417006
// * ^expansion.contains[=].display = "Cardiac pacemaker lead submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473432004
// * ^expansion.contains[=].display = "Settle culture plate submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #473433009
// * ^expansion.contains[=].display = "Protected specimen brush submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #48469005
// * ^expansion.contains[=].display = "Cytologic material"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #50841000087100
// * ^expansion.contains[=].display = "Autologous serum eye drops specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #52041000087106
// * ^expansion.contains[=].display = "Swab from genital ulcer"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #553901000052100
// * ^expansion.contains[=].display = "Specimen from nipple"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #553911000052103
// * ^expansion.contains[=].display = "Specimen from rib"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #564301000052105
// * ^expansion.contains[=].display = "Specimen from tongue obtained by scraping"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #564311000052107
// * ^expansion.contains[=].display = "Haemodialysis catheter tip submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #57221000087106
// * ^expansion.contains[=].display = "Urine specimen from ureter obtained by ureteroscopy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #57481000052108
// * ^expansion.contains[=].display = "Specimen from pancreas obtained by distal pancreatectomy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #57711000052109
// * ^expansion.contains[=].display = "Specimen obtained by puncture procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #57721000052101
// * ^expansion.contains[=].display = "Rectal secretion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #57731000052104
// * ^expansion.contains[=].display = "Stem cell specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #57741000052105
// * ^expansion.contains[=].display = "Tracheal secretion specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #57921000052103
// * ^expansion.contains[=].display = "Whole blood specimen with edetic acid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #57931000052101
// * ^expansion.contains[=].display = "Combined cervical mucus and urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #58981000087103
// * ^expansion.contains[=].display = "Specimen from soft tissue of orbit"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #59041000087103
// * ^expansion.contains[=].display = "Combined specimen from swab of anterior naris and groin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #593961000052105
// * ^expansion.contains[=].display = "Mini-bronchoalveolar lavage fluid specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #59601000087108
// * ^expansion.contains[=].display = "Swab of insertion site"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #60661000087106
// * ^expansion.contains[=].display = "Vascular prosthesis submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608840004
// * ^expansion.contains[=].display = "Specimen from lower gastrointestinal tract"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608842007
// * ^expansion.contains[=].display = "Specimen from upper gastrointestinal tract"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608852006
// * ^expansion.contains[=].display = "Specimen from nervous system"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608856009
// * ^expansion.contains[=].display = "Specimen from perirenal tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608858005
// * ^expansion.contains[=].display = "Specimen from periureteral tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608860007
// * ^expansion.contains[=].display = "Specimen from perivesical tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608868000
// * ^expansion.contains[=].display = "Specimen from endocrine gland"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608870009
// * ^expansion.contains[=].display = "Specimen from female genital tract"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #608969007
// * ^expansion.contains[=].display = "Specimen from skin"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #621000009105
// * ^expansion.contains[=].display = "Viral isolate specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #697988001
// * ^expansion.contains[=].display = "Soft stool specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #697989009
// * ^expansion.contains[=].display = "Anterior naris swab"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #698276005
// * ^expansion.contains[=].display = "First stream urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #699284001
// * ^expansion.contains[=].display = "Early morning mid-stream urine specimen obtained by clean catch procedure"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #699285000
// * ^expansion.contains[=].display = "Urine specimen obtained from urinary bladder by cystoscopy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #699286004
// * ^expansion.contains[=].display = "Urine specimen obtained from kidney via aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #699287008
// * ^expansion.contains[=].display = "Urine specimen obtained via suprapubic indwelling urinary catheter"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #699868006
// * ^expansion.contains[=].display = "Suture material submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #699874006
// * ^expansion.contains[=].display = "Tissue specimen from pericardium"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #702701006
// * ^expansion.contains[=].display = "Specimen from cervix or vagina"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #703430008
// * ^expansion.contains[=].display = "Arterial cord blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #703431007
// * ^expansion.contains[=].display = "Venous cord blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #703432000
// * ^expansion.contains[=].display = "Venous plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #703475006
// * ^expansion.contains[=].display = "Tissue specimen from nodule"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #703691002
// * ^expansion.contains[=].display = "Spun cerebrospinal fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #704243004
// * ^expansion.contains[=].display = "Animal head specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #704663000
// * ^expansion.contains[=].display = "Parasitic worm specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #705054005
// * ^expansion.contains[=].display = "Muscle specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #708048008
// * ^expansion.contains[=].display = "Plasma specimen with citrate"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #708049000
// * ^expansion.contains[=].display = "Plasma specimen with ethylenediamine tetraacetic acid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #708110000
// * ^expansion.contains[=].display = "Treated water specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #708111001
// * ^expansion.contains[=].display = "Untreated water specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #708112008
// * ^expansion.contains[=].display = "Fluid specimen from rectouterine pouch obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #709024005
// * ^expansion.contains[=].display = "Paint chip specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #710069003
// * ^expansion.contains[=].display = "Tick specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #712559006
// * ^expansion.contains[=].display = "Seventy minutes specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #712560001
// * ^expansion.contains[=].display = "Two hours specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #712562009
// * ^expansion.contains[=].display = "Twenty four hours specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #718684005
// * ^expansion.contains[=].display = "Endocervical brush specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #725372003
// * ^expansion.contains[=].display = "Tissue specimen from aorta"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #725946000
// * ^expansion.contains[=].display = "Reticulocyte specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #725957005
// * ^expansion.contains[=].display = "Formalin-fixed placenta tissue specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732211001
// * ^expansion.contains[=].display = "12 hour urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732217002
// * ^expansion.contains[=].display = "8 hour urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732220005
// * ^expansion.contains[=].display = "48 hour urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732222002
// * ^expansion.contains[=].display = "72 hour urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732226004
// * ^expansion.contains[=].display = "48 hour stool specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732227008
// * ^expansion.contains[=].display = "24 hour stool specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732293002
// * ^expansion.contains[=].display = "Salivary calculus specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732295009
// * ^expansion.contains[=].display = "Discharge specimen from penis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732964006
// * ^expansion.contains[=].display = "Gastrostomy tube submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732972008
// * ^expansion.contains[=].display = "Fluid specimen from cyst of ovary"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732975005
// * ^expansion.contains[=].display = "Fluid specimen from epididymis"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #732976006
// * ^expansion.contains[=].display = "Fluid specimen from external auditory canal"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733056005
// * ^expansion.contains[=].display = "Fluid specimen from ear"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733101007
// * ^expansion.contains[=].display = "Fluid specimen from perirenal region"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733103005
// * ^expansion.contains[=].display = "Tissue specimen from scar"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733104004
// * ^expansion.contains[=].display = "Swab from buccal mucosa"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733105003
// * ^expansion.contains[=].display = "Cytologic material from lymph node of neck obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733475007
// * ^expansion.contains[=].display = "Cytologic material from mass of neck obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733476008
// * ^expansion.contains[=].display = "Cytologic material from neck obtained by fine needle aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733482006
// * ^expansion.contains[=].display = "Second void urine specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733484007
// * ^expansion.contains[=].display = "Specimen from lesion of penis obtained by scraping"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #733485008
// * ^expansion.contains[=].display = "Specimen from lesion of perianal region obtained by scraping"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734307008
// * ^expansion.contains[=].display = "Specimen from jejunostomy stoma"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734333000
// * ^expansion.contains[=].display = "Specimen from epidermoid cyst"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734334006
// * ^expansion.contains[=].display = "Specimen from sebaceous cyst"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734335007
// * ^expansion.contains[=].display = "Specimen from scar"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734336008
// * ^expansion.contains[=].display = "Specimen from aorta"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734337004
// * ^expansion.contains[=].display = "Specimen from mass of nasopharynx"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734338009
// * ^expansion.contains[=].display = "Arthropod material submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734341000
// * ^expansion.contains[=].display = "Specimen from mass of posterior mediastinum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734342007
// * ^expansion.contains[=].display = "Specimen from mass of anterior mediastinum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734343002
// * ^expansion.contains[=].display = "Specimen from mass of breast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734375004
// * ^expansion.contains[=].display = "Specimen from mass of retroperitoneum"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734377007
// * ^expansion.contains[=].display = "Specimen from mass of subcutaneous tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734379005
// * ^expansion.contains[=].display = "Specimen from periodontal tissue"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734380008
// * ^expansion.contains[=].display = "Specimen from surgical wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734381007
// * ^expansion.contains[=].display = "Specimen from superficial wound"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734417004
// * ^expansion.contains[=].display = "Specimen from mass of thoracic cavity"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734419001
// * ^expansion.contains[=].display = "Specimen from mass of axillary lymph node"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734420007
// * ^expansion.contains[=].display = "Specimen from mass of inguinal lymph node"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734421006
// * ^expansion.contains[=].display = "Specimen from mass of mediastinal lymph node"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734422004
// * ^expansion.contains[=].display = "Specimen from duodenal mucosa"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734425002
// * ^expansion.contains[=].display = "Specimen from ear obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734426001
// * ^expansion.contains[=].display = "Specimen from jejunum obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734427005
// * ^expansion.contains[=].display = "Specimen from duodenum obtained by aspiration"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734442008
// * ^expansion.contains[=].display = "Specimen from calf of leg"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #734443003
// * ^expansion.contains[=].display = "Urine specimen from ureter obtained by cystoscopy"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #735197003
// * ^expansion.contains[=].display = "Specimen from right breast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #735198008
// * ^expansion.contains[=].display = "Specimen from left breast"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #735950000
// * ^expansion.contains[=].display = "Swab of vascular catheter insertion site"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #737016007
// * ^expansion.contains[=].display = "Tissue specimen from aneurysm obtained by surgical excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #737017003
// * ^expansion.contains[=].display = "Joint loose body specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #737087006
// * ^expansion.contains[=].display = "Specimen from control"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #737089009
// * ^expansion.contains[=].display = "Serum specimen from control"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #737356002
// * ^expansion.contains[=].display = "Pooled platelet poor plasma specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #737357006
// * ^expansion.contains[=].display = "Fetal blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #765469005
// * ^expansion.contains[=].display = "Hysterectomy and left salpingo-oophorectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #765470006
// * ^expansion.contains[=].display = "Hysterectomy and right salpingo-oophorectomy specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #773611006
// * ^expansion.contains[=].display = "Haemodialysis catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #773630006
// * ^expansion.contains[=].display = "Urinary catheter submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #787149001
// * ^expansion.contains[=].display = "Unstained slide of tissue section"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #787150001
// * ^expansion.contains[=].display = "Stained slide of tissue section"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #787151002
// * ^expansion.contains[=].display = "Specimen in tissue fixative"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #787152009
// * ^expansion.contains[=].display = "Specimen in non-fixative preservation fluid"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #788524009
// * ^expansion.contains[=].display = "Tissue specimen obtained by segmental excision"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #788707000
// * ^expansion.contains[=].display = "Plasma specimen or serum specimen or whole blood specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #791000009104
// * ^expansion.contains[=].display = "Epithelial tissue specimen from vesicle"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #840395001
// * ^expansion.contains[=].display = "Fluid specimen from ear region"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #866032008
// * ^expansion.contains[=].display = "Blood specimen in anaerobic blood culture bottle"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #866033003
// * ^expansion.contains[=].display = "Blood specimen in aerobic blood culture bottle"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #866034009
// * ^expansion.contains[=].display = "Acute phase serum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #866035005
// * ^expansion.contains[=].display = "Convalescent phase serum specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #878861003
// * ^expansion.contains[=].display = "Blood specimen in blood culture bottle"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #898201001
// * ^expansion.contains[=].display = "Specimen from device"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #898203003
// * ^expansion.contains[=].display = "Vacuum cleaner bag submitted as specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #898205005
// * ^expansion.contains[=].display = "Dried plasma spot specimen"
// * ^expansion.contains[+].system = $cs-sct
// * ^expansion.contains[=].version = $cs-sct-de-20260515
// * ^expansion.contains[=].code = #92071000087108
// * ^expansion.contains[=].display = "Bone wire submitted as specimen"