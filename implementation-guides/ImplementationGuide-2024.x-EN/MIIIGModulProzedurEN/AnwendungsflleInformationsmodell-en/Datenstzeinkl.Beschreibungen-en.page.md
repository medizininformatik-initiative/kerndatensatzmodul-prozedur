---
parent: 
---
## Data Sets incl. Descriptions

The official and accepted version of the information model for the PROCEDURE module can be found on [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-). To standardize the representation, the information model was additionally mapped as FHIR Logical Model:

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/LogicalModel/Prozedur}}

It should be noted that the Logical Model aims purely at the mapping of data elements and their description. Used data types and cardinalities are not to be regarded as obligatory. This is finally defined by the FHIR profiles. For each element within the Logical Model there is a 1:1 mapping to an element of a concrete FHIR resource.

@``` from StructureDefinition where url =  'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/LogicalModel/Prozedur' for differential.element select Logischer_Datensatz: id, Beschreibung: short```


