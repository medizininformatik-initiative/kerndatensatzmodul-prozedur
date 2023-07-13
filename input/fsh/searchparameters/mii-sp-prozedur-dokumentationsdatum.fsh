Instance: mii-sp-prozedur-dokumentationsdatum
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/SearchParameter/Procedure-Dokumentationsdatum"
* insert Version
* insert SP_Publisher
* name = "MII_SP_Prozedur_Dokumentationsdatum"
* status = #active
* experimental = false
* date = "2022-02-21"
* description = "Suchparameter für Patient.extension:Dokumentationsdatum"
* code = #dokumentationsdatum
* base = #Procedure
* type = #date
* expression = "Patient.extension('http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum').value"