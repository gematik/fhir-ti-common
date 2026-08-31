Extension: ReasonTypeLaboratoryExtension
Id: reason-type-laboratory-extension
Title: "Reason Type Laboratory Extension"
Description: "Diese Extension dient der Unterscheidung zwischen Anlass und Veranlassungsgrund des Laborauftrags. Der Anlass der Labordiagnostik wird als prozessuale Fragestellung formuliert. Diese Angabe dient der Fokussierung der Beurteilung. Der Veranlassungsgrund der Labordiagnostik wird als medizinische Fragestellung formuliert. Diese Angabe dient der fachlichen Präzision der Beurteilung."
Context: ServiceRequest.reasonCode
* insert Meta
* . ^definition = "Diese Extension dient der Unterscheidung zwischen Anlass und Veranlassungsgrund des Laborauftrags."
* value[x] only string
* valueString obeys reason-1
* valueString 1..1
