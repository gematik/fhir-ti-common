Extension: TIDocumentLocation
Id: ti-document-location-extension
Title: "TI Document Location"
Description: """
Die Extension ermöglicht die Unterscheidung zwischen verschiedenen Speicherorten eines Dokuments,
beispielsweise einem Primärsystem, einem Workflow-Dokumentenspeicher oder der ePA. Befindet sich 
das Dokument in der ePA, wird der zugehörige Versicherte über DocumentReference.subject logisch referenziert. 
Der Dokumenteninhalt kann über die in DocumentReference.content.attachment.url angegebene URL mittels der 
ePA-Transaktion Retrieve Document [ITI-68] abgerufen werden.
"""
Context: DocumentReference

// preserve the version
* ^version = "1.4.1"
// * ^date = "2026-09-30"
// * ^status = #active

* value[x] only Coding
* valueCoding from TIDocumentLocationVS (required)
