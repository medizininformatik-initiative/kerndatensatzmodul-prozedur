Instance: mii-exa-prozedur-procedure
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
* insert TestDataLabel
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure)
* status = #completed
* category = $sct-no-ver#387713003 "Surgical procedure (procedure)"
* code.coding[0] = $sct-no-ver#80146002 "Excision of appendix (procedure)"
* code.coding[+].version = "2020"
* code.coding[=] = $ops#5-470 "Appendektomie"
* performedDateTime = "2020-04-23"
* subject = Reference(Patient/example)