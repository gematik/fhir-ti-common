Extension: NcpehCountryExtension
Id: ncpeh-country-extension
Title: "National Contact Point of Health (NCPeH) Country Extension"
Description: "The country extension for  National Contact Point of Health (NCPeH) Organizations, representing the country in which the NCPeH is located."
Context: Organization
* insert Meta

// preserve the version of this resource
* ^version = "1.1.1"
* ^date = "2025-09-12"
* ^status = #active

* value[x] 1.. MS
* value[x] only Coding
* valueCoding 1.. MS
* valueCoding from Iso3166-1-2
  * system 1.. MS
  * code 1.. MS
