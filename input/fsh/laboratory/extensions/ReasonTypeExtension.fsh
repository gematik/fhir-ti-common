Extension: ReasonTypeExtension
Id: reason-type-extension
Title: "Reason Type Extension"
Description: "Diese Extension dient der Unterscheidung zwischen Anlass und Veranlassungsgrund des Laborauftrags."
Context: ServiceRequest.reasonCode
* insert Meta
* . ^definition = "Diese Extension dient der Unterscheidung zwischen Anlass und Veranlassungsgrund des Laborauftrags."
* value[x] only string
* valueString obeys reason-1
* valueString 1..1
