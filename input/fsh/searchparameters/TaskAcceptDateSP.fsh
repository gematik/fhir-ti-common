Instance: TaskAcceptDateSP
InstanceOf: SearchParameter
Usage: #definition
Description: "Das Einlösedatum eines E-Rezeptes. Nach Ablaufen dieses Datums darf ein E-Rezept nicht mehr zu Lasten des Kostenträgers abgegeben werden."
* insert Meta-Instance

* name = "TaskAcceptDateSP"
* code = #accept-date
* base[+] = #Task
* type = #date
* expression = "Task.extension('https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_AcceptDate').value.as(date)"
* multipleAnd = true
* multipleOr = false
