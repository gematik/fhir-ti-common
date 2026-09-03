// DocumentReference

Invariant: ti-mhd-1
Description: "Der Identifier im Slice identifier:uniqueId muss mit masterIdentifier übereinstimmen, da beide auf DocumentEntry.uniqueId abgebildet werden (IHE MHD ab 4.2.4: \"If this is present, then the identifier SHALL be the same as the one found in masterIdentifier.\")."
Severity: #error
Expression: "identifier.where(type.coding.where(system = 'https://profiles.ihe.net/ITI/MHD/CodeSystem/IHE.MHD.MHDIdentifierType' and code = 'uniqueId').exists()).all(system = %resource.masterIdentifier.system and value = %resource.masterIdentifier.value)"
