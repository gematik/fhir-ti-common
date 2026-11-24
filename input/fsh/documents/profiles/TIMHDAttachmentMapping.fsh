Mapping: TIMHDDocumentReferenceAttachmentMapping
Source: TIMHDDocumentReference
Target: "urn:ihe:iti:xds:documententry"
Id: DocumentEntry-Mapping
Title: "XDS and MHD Mapping"
* content.attachment.extension[fileName] -> "DocumentEntry.URI (when it contains a file name)"

Mapping: TIMHDSimplifiedPublishDocumentReferenceAttachmentMapping
Source: TIMHDSimplifiedPublishDocumentReference
Target: "urn:ihe:iti:xds:documententry"
Id: DocumentEntry-Mapping
Title: "XDS and MHD Mapping"
* content.attachment.extension[fileName] -> "DocumentEntry.URI (when it contains a file name)"
* content.attachment.title -> "DocumentEntry.title"
