// TODO: Move to de.gematik.terminology

ValueSet: ObservationMethodVS
Id: observation-methods
Title: "Untersuchungsmethode SNOMED CT®"
Description: "Dieses Valueset enthält SNOMED CT® Codes zur Beschreibung von Untersuchungsmethoden."
* insert Meta-VS
* ^copyright = "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists."
* codes from system $cs-sct-de-20260515 where concept descendent-of "272394005"