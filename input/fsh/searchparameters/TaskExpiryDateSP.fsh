Instance: TaskExpiryDateSP
InstanceOf: SearchParameter
Usage: #definition
Description: "Das Ablaufdatum eines E-Rezepzes. Nach ablauf dieses Datums darf ein E-Rezept nicht mehr beliefert werden."
* insert Meta-Instance

* name = "TaskExpiryDateSP"
* code = #expiry-date
* base[+] = #Task
* type = #date
* expression = "Task.extension('https://gematik.de/fhir/erp/StructureDefinition/GEM_ERP_EX_ExpiryDate').value.as(date)"
* multipleAnd = true
* multipleOr = false
