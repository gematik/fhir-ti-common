Extension: TIDocumentSource
Id: ti-document-source-extension
Title: "TI Document Source"
Description: """
Gibt das Quellsystem an, aus dem die DocumentReference und das durch sie beschriebene 
Dokument übernommen wurden. Bei Dokumenten aus der ePA befindet sich das Dokument in 
der ePA des durch DocumentReference.subject logisch referenzierten Versicherten und kann 
über die in DocumentReference.content.attachment.url angegebene URL mittels der Transaktion 
Retrieve Document [ITI-68] abgerufen werden
"""
Context: DocumentReference

// preserve the version
* ^version = "1.4.1"
// * ^date = "2026-09-30"
// * ^status = #active

* value[x] only Coding
* valueCoding from TIDocumentSourceVS (required)