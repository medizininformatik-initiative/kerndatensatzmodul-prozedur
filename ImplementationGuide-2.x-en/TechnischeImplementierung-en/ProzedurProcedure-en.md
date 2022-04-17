### Prozedur (Procedure)

---

**Beschreibung**

Dieses Profil beschreibt eine Prozedur in der Medizininformatik-Initiative.

@```
from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' select Name: name, Canonical: url
```

---

**Differential**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure, diff}}

---

**Hinweise**

| FHIR-Element | Erklärung |
|--------------|-----------|
| Procedure.id      | Must-support, jedoch optional        |
| Procedure.meta      | Must-support, jedoch optional       |
| Procedure.status      | Keine Einschränkungen bezüglich des gewählten Status|
| Procedure.category             | Verpflichtende SNOMED CT Kategorisierung auf Basis des Prozedurenkodes. Siehe {{pagelink:ImplementationGuide-2.x/TechnischeImplementierung/Terminologie.md}} für ein Mapping von OPS Klassentitel auf SNOMED CT. Nur relevant falls die Prozedur per OPS kodiert wird, siehe proc-mii-1        |
|  Procedure.code            |   Verpflichtende Kodierung entweder per OPS oder SNOMED. Weitere Kodierungen erlaubt.       |
|  Procedure.code:ops            |   Siehe [OPS-Kodierung - Deutsche Basisprofile](https://simplifier.net/guide/basisprofil-de-r4/Ressourcen-Procedure-OPS)       |
| Procedure.performed\[x\] | Neben der Angabe als dateTime kann auch eine Period angegeben werden (falls Start- und Endzeitpunkt bekannt sind)|
| Procedure.bodySite           | Detaillierte Kodierung der Körperstelle(n) der Prozedur. Sollte NICHT verwendet werden um die Lateralität der Prozedur abzubilden. Dies ist eine Eigenschaft des Kodes. Siehe Procedure.code:ops |
| Procedure.note | Freitextangaben zur Prozedur|

---

**Mapping**

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| Procedure.code:ops        | Prozedur.OPSProzedurKodiert         |
| Procedure.code:ops.coding.code        | Prozedur.OPSProzedurKodiert.VollständigerProzedurenkode (Kode)        |
| Procedure.code:ops.coding.system        | Prozedur.OPSProzedurKodiert.VollständigerProzedurenkode (Kodesystem)        |
| Procedure.code:ops.coding.version        | Prozedur.OPSProzedurKodiert.VollständigerProzedurenkode (Version)        |
| Procedure.code:ops.extension.seitenlokalisation        | Prozedur.OPSProzedurKodiert.Seitenlokalisation         |
| Procedure.code:sct        | Prozedur.SNOMEDProzedurKodiert         |
| Procedure.code:sct.code        | Prozedur.SNOMEDProzedurKodiert.VollständigerProzedurenkode  (Kode)       |
| Procedure.code:sct.system        | Prozedur.SNOMEDProzedurKodiert.VollständigerProzedurenkode  (Kodesystem)       |
| Procedure.bodySite  | Prozedur.Körperstelle        |
| Procedure.performed\[x\]        | Prozedur.Durchführungsdatum         |
| Procedure.note        | Prozedur.Freitextbeschreibung         |
| Procedure.extension.Dokumentationsdatum        | Prozedur.Dokumentationsdatum         |
| Procedure.extension.durchfuehrungsabsicht        | Prozedur.Durchfuehrungsabsicht         |


---

**Constraints**

Folgende Invarianten müssen bei der Implementierung des Profils beachtet werden:

**Constraints**: @``` from StructureDefinition where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' for differential.element.constraint select key,severity,human, expression```

Weitere Vorgaben werden durch die Profile für die Datentypen OPS durch die Deutschen Basisprofile gemacht.


**Terminology Bindings**

@```
from StructureDefinition
where url in ('https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure' )
for differential.element
select
Path: path,
join binding.where(valueSet.exists())
{
  Name: valueSet.substring((9 + valueSet.indexOf('ValueSet/'))),
  Strength: strength,
  URL: valueSet
}
```

---

**Snapshot**

{{tree:https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure, snapshot}}

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Person relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?date=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.performed" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?subject=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?patient=Patient/test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. Der Suchparameter "bodySite" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. Der Suchparameter "dokumentationsdatum" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Dokumentationsdatum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. Der Suchparameter "durchfuehrungsabsicht" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.extension:Durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---

**Beispiele**

Beispiel (minimal):

{{json:beispiele/Example-Procedure.json}}

