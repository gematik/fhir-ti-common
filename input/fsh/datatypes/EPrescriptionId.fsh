Profile: EPrescriptionId
Parent: Identifier
Id: e-prescription-id
Title: "Identifikator Profil für E-Rezept-IDs"
Description: "Die E-Rezept-ID ist eine generierte und nicht veränderbare Zahlenfolge, die durch Punkte getrennt ist. Die ersten drei Ziffern definieren die Art der Verordnung. Die nächsten zwölf Ziffern stellen die generierte, eindeutige und fortlaufende Sequenz der Verordnung dar. Die letzten beiden Ziffern sind Prüfziffern gemäß ISO 7064."
* insert Meta

// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* use = #official (exactly)
* system 1.. MS
* system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId" (exactly)
* value 1.. MS