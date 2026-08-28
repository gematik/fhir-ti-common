Extension: PseudonymizedReportExtension
Id: pseudonymized-report-extension
Title: "Extension Pseudonymisierter Befund"
Description: "In dieser Extension kann ein Befund als pseudonymisiert deklariert werden. Es kann bei der Steuerung der Übermittlungswege und für technische Validierung genutzt werden."
Context: DiagnosticReport
* insert Meta
* . ^definition = "In dieser Extension kann ein Befund als pseudonymisiert deklariert werden. Es kann bei der Steuerung der Übermittlungswege und für technische Validierung genutzt werden."
* . ^short = "Kennzeichnet einen Laborbefund, der keine personenidentifzierende Inhalte hat"
* value[x] only boolean
* valueBoolean 1..1
