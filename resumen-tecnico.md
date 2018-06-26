---
title: Resumen Técnico
technical-overview: true
en: /technical-overview/
---

<!-- note: MUST leave blank lines after paragraphs -->

<section>
## Linked Data

El índice PeriodO documenta definiciones de nombres de períodos históricos. Cada entrada en el índice identifica la definición de un solo período. Para que se incluya en el índice, la definición debe:

* darle un nombre al período,
* imponerle límites temporales al período,
* estar asociada implícita o explícitamente a una región geográfica, y
* haber sido publicada formal o informalmente en una fuente citable.

Se le ha puesto mucho cuidado a la labor de asignarle a las definiciones de períodos identificadores estables que puedan resolverse a [representaciones RDF](#definiciones-de-per%C3%ADodos) de definiciones de período. PeriodO presenta definiciones de período como conceptos [SKOS][skos]. Estos se agrupan en esquemas de conceptos que comparten la misma fuente bibliográfica. La extensión temporal se expresa como citas directas de la fuente, y también via aproximaciones estructuradas de esta expresión modeladas usando la ontología [OWL-Time][owltime].  De la misma manera la extensión espacial se representa a través de una cita textual (donde se provea) y un conjunto de identificadores que se refieren a entidades espaciales en recursos externos como [DBpedia][dbpedia]. 

Ejemplos:

* [`http://n2t.net/ark:/99152/p05krdxmkzt`](http://n2t.net/ark:/99152/p05krdxmkzt) identifica “la edad media” (Dark Age) como la definen Davis y Alcock en la página 97 de [*Sandy Pylos: an archaeological history from Nestor to Navarino*](http://www.worldcat.org/oclc/37663433) (ver la [representación JSON](http://n2t.net/ark:/99152/p05krdxmkzt.json)). Esto es un ejemplo de una *definición de período*.

* [`http://n2t.net/ark:/99152/p06v8w4`](http://n2t.net/ark:/99152/p06v8w4) identifica todas las definiciones de períodos de la base de datos de excavaciones arqueológicas [FastiOnline](http://fastionline.org) (ver la [representación JSON](http://n2t.net/ark:/99152/p06v8w4.json)). Esto es un ejemplo de una *colección de períodos*. 

</section>

<section>
## Definiciones de períodos

El conjunto de datos PeriodO es esencialmente una colección de definiciones de período.

<section>
### Etiquetas y documentación

Una definición de período es un [`skos:Concept`](http://www.w3.org/TR/skos-reference/#concepts), “una idea o noción,” según la Referencia SKOS. Utilizamos varias propiedades SKOS para describir definiciones de período:

* [`skos:prefLabel`](http://www.w3.org/TR/skos-reference/#prefLabel) se usa para el nombre del período exactamente como se da en la fuente original. El valor de esta propiedad es un [xsd:string](http://www.w3.org/TR/xmlschema11-2/#string) simple literal, sin etiqueta de idioma. 

* [`skos:altLabel`](http://www.w3.org/TR/skos-reference/#altLabel) se usa para nombres de período en idiomas específicos, asignados por los curadores de PeriodO. El valor de esta propiedad es un [string con etiqueta de lenguaje](http://www.w3.org/TR/rdf11-concepts/#dfn-language-tagged-string). La etiqueta de idioma consiste de (por lo menos)

    1. una [sub-etiqueta de idioma principal](http://tools.ietf.org/html/bcp47#section-2.2.1), y

    2. una [script subtag](http://tools.ietf.org/html/bcp47#section-2.2.3). 

    Siempre habrá por lo menos una `skos:altLabel`, con etiqueta de idioma `en`. Si la definición en la fuente no fue escrita en inglés, siempre  habrá otra `skos:altLabel` con etiqueta de idioma indicando el idioma y secuencia de comandos de la definición. El idioma de la definición de la fuente se indica a través de una propiedad [`dcelements:language`](http://www.dublincore.org/documents/dces/#language) cuyo valor es una etiqueta de idioma como se describe arriba.

* [`skos:note`](http://www.w3.org/TR/skos-reference/#note) se utiliza para notas sobre la definición de período tomada de o atribuida a la fuente original. Por ejemplo, la definición original de Pleiades de “El ascenso otomano (D.C 1300-1453) incluye la nota “termina con la conquista de Constantinopla.” El valor de esta propiedad es un [`xsd:string`](http://www.w3.org/TR/xmlschema11-2/#string) simple, literal, sin etiqueta de idioma. 

* [`skos:editorialNote`](http://www.w3.org/TR/skos-reference/#editorialNote) se usa para notas administrativas o editoriales que añaden curadores de PeriodO. Estas *no* aparecen en la fuente original. El valor de esta propiedad es un [`xsd:string`](http://www.w3.org/TR/xmlschema11-2/#string) simple, literal, sin etiqueta de idioma. 

* [`skos:inScheme`](http://www.w3.org/TR/skos-reference/#inScheme) se usa para vincular una definición de período a la [colección de período](#colecciones-de-per%C3%ADodos) a la que pertenence. 

</section>

<section>
### Fuente

Usualmente la información sobre la fuente de una definición de período se provee con las propiedades de la [colección de períodos](#colecciones-de-per%C3%ADodos) a la que pertenece. Sin embargo, en algunos casos puede existir información bibliográfica adicional que sea específica a una definición individual. En estos casos, utilizamos un [`dcterms:source`](http://dublincore.org/documents/dcmi-terms/#terms-source) para brindar dicha información adicional, y [`dcterms:isPartOf`](http://dublincore.org/documents/dcmi-terms/#terms-isPartOf) para enlazar la fuente de la definición a la fuente de la colección a la que pertenece. Por ejemplo, se indicaría la página específica del que proviene una definición de la siguiente manera: 

    <p0tns5v4kdf>
        dcterms:source [
            dcterms:isPartOf <http://www.worldcat.org/oclc/63807908> ;
            bibo:locator "page 25"
        ] .

(`bibo` es [Bibliographic Ontology](http://bibliontology.com).)

</section>

<section>
### Extensión temporal

Utilizamos propiedades de [Time Ontology](https://www.w3.org/TR/owl-time/) para describir la extensión temporal de las definiciones de períodos. Una definición de período es un [`time:ProperInterval`](https://www.w3.org/TR/owl-time/#time:ProperInterval), un intervalo de tiempo con puntos de inicio y final distintos. Asumimos que estos puntos de inicio y final (inmediatos) nunca pueden identificarse precisamente, por eso es que nuestras descripciones se enfocan en describir los intervalos que abren y cierran el período:

* [`time:intervalStartedBy`](https://www.w3.org/TR/owl-time/#time:intervalStartedBy) vincula la definición de período a un intervalo de tiempo (anónimo) que tiene el mismo punto de inicio (desconocido) que el período, y un punto final (desconocido) que viene antes del punto final del período. A esto nos referimos como el intervalo de `inicio` del período. 

* [`time:intervalFinishedBy`](https://www.w3.org/TR/owl-time/#time:intervalFinishedBy) vincula la definición de período a un intervalo de tiempo (anónimo) que tiene el mismo punto final (desconocido) que el período, y un punto de inicio (desconocido) que viene después del punto de inicio del período. A esto nos referimos como el intervalo de `fin` del período.

<figure>
§svg(figure, Un diagrama que muestra la relación entre la extensión temporal de un período y sus intervalos de inicio y fin, start-stop-intervals-es)§
<figcaption>La relación entre la extensión temporal de un período<br>y sus intervalos de inicio y fin</figcaption>
</figure>

Describimos los intervalos de inicio y fin de dos maneras. Ambas maneras de describirlos son requeridas; o sea, so n complementarias, no alternativas:

1. [`skos:prefLabel`](http://www.w3.org/TR/skos-reference/#prefLabel) se usa para describir textualmente el intervalo exactamente como se da en la fuente original, por ejemplo “final del siglo uno a.C.” El valo de esta propiedad es un [xsd:string](http://www.w3.org/TR/xmlschema11-2/#string) simple y literal sin etiqueta de idioma.

2. [`time:hasDateTimeDescripion`](https://www.w3.org/TR/owl-time/#time:hasDateTimeDescription) se usa para describir el intervalo de una manera más estructurada. Esta propiedad vincula el intervalo a un [`time:DateTimeDescripion`](https://www.w3.org/TR/owl-time/#time:DateTimeDescription) (anónimo). Estas descripciones estructuradas son creadas por curadores de PeriodO.

Actualmente utilizamos las siguientes propiedades en nuestras descripciones datetime:

* [`time:year`](https://www.w3.org/TR/owl-time/#time:year) (año) para descripciones de intervalos que se pueden representar con un solo año. Por ejemplo, un intervalo con la descripción textual “600 aC” se puede describir con una descripción datetime que tenga un valor `time:year` de `-0599`.

* [`periodo:earliestYear`](http://n2t.net/ark:/99152/p0v#earliestYear) y [`periodo:latestYear`](http://n2t.net/ark:/99152/p0v#latestYear) para descripciones de intervalos que deben ser representados como rangos. Por ejemplo, un intervalo con la descripción textual “siglo ocho d.C.” se puede describir con una descripción datetime que tenga un valor `periodo:earliestYear` de `-0799` y un valor `periodo:latestYear` de -`0700`.

El datatype para los valores de `time:year`, `periodo:earliestYear` y `periodo:latestYear` es [`xsd:gYear`](http://www.w3.org/TR/xmlschema11-2/#gYear). Nótese que:

1. Los valores `xsd:gYear` pueden tener [cualquier cantidad de dígitos](http://www.w3.org/TR/xmlschema11-2/#partial-implementation).

2. Los valores `xsd:gYear` [pueden ser cero](http://www.w3.org/TR/xmlschema11-2/#dateTime-value-space). El valor `0000` se interpreta como 1 aC.

3. Los valores `xsd:gYear` representan años del calendario Gregoriano y [“no son, por lo general, convertibles a valores simples correspondientes a años en otros calendarios.”](http://www.w3.org/TR/xmlschema11-2/#gYear) Nos sentimos cómodos con esta limitación porque utilizamos estos valores solamente para el propósito de ordenar y visualizar las extensiones temporales de los intervalos. La `skos:prefLabel` de un intervalo no debe considerarse una descripción autoritaria.

En el futuro puede que usemos propiedades adicionales en nuestras descripciones, por ejemplo para describir intervalos con granularidades más finas de un año.

</section>

<section>
### Extensión espacial

Utilizamos las siguientes propiedades para describir las extensiones espaciales de las definiciones de períodos:

* [`periodo:spatialCoverageDescription`](http://n2t.net/ark:/99152/p0v#spatialCoverageDescription) se usa para describir textualmente la extensión espacial exactamene como se da en la fuente original, por ejemplo “Oriente Próximo y Grecia.” El valor de esta propiedad es un [xsd:string](http://www.w3.org/TR/xmlschema11-2/#string) simple, literal, sin etiqueta de idioma. 

* [`dcterms:spatial`](http://dublincore.org/documents/dcmi-terms/#terms-spatial) se usa para vincular una definición de período a descripciones de localidades en índices como DBpedia/Wikidata, GeoNames, o Pleiades.

</section>
</section>

<section>
## Colecciones de períodos

Una colección de períodos es simplemente un grupo de definiciones de períodos que comparten una misma fuente. Usamos [`dcterms:source`](http://dublincore.org/documents/dcmi-terms/#terms-source) para vincular colecciones de períodos con descripciones bibliográficas de sus fuentes. En la medida de lo posible, nos apoyamos en bases de datos externas como WorldCat y CrossRef para procesar metadatos. 

Una colección de períodos es un [`skos:ConceptScheme`](http://www.w3.org/TR/skos-reference/#schemes), “un agregado de uno o más conceptos SKOS.” Que dos definiciones de períodos pertenezcan a la misma colección de períodos no implica una relación semántica entre ellas, más allá de compartir la misma fuente. Particularmente, las definiciones de período que pertenece a una misma colección de períodos no constituyen un *periodización*, o sea, una división de tiempo histórico única, coherente y continua. En el futuro planeamos añadir propiedades para indicar si un grupo de definiciones de período constituye una periodización.

El [root resource](http://www.w3.org/TR/void/#root-resource) de los grupos de datos de PeriodO es un [`rdf:Bag`](http://www.w3.org/TR/rdf-schema/#ch_bag) (colección no ordenada) de colecciones de período. 

</section>

<section>
## Identificadores

A cada definición de período se le atribuye su propio [Uniform Resource Identifier][uri] (URI) (basado en la web y resoluble) en forma de [Archival Resource Key][ark] (ARK), acuñado a través del sistema de la Biblioteca Digital de California, [EZID][ezid]. Estas ARKs son resolubles a representaciones de definiciones de períodos individuales, estructuradas y legibles a máquina.

En la medida de lo posible se identifican fuentes con URIs de [WorldCat][worldcat] o DOIs de [CrossRef][crossref], y los creadores se identifican con URIs de [Virtual Authority File][viaf].

</section>

<section>
## Serialización de datos

Las definiciones de períodos en el índice PeriodO se publican como [JSON-LD][jsonld], una forma serializada del [Resoruce Description Format][rdf] (RDF) utilizada para describir Linked Data. Todo el [conjunto de datos](http://n2t.net/ark:/99152/p0d.json) está disponible en forma de archivo JSON para que pueda volver a utilizarse fácilmente en otros proyectos.

</section>

<section>
## Interfaz de usuario

Un [browser-based client](http://n2t.net/ark:/99152/p0) provee herramientas de búsqueda, visualización e ingreso de datos. También provee una interfaz para administrar las versiones distribuidas y el desarrollo colaborativo del conjunto de datos PeriodO. Toda la historia editorial del índice PerodO se publica como un conjunto de datos separado utilizando la ontología [PROV][prov].

</section>


[ark]: https://tools.ietf.org/html/draft-kunze-ark-18
[crossref]: http://www.crossref.org
[dbpedia]: http://wiki.dbpedia.org
[ezid]: http://ezid.cdlib.org/
[jsonld]: http://json-ld.org/
[owltime]: http://www.w3.org/TR/owl-time/
[prov]: http://www.w3.org/TR/prov-primer/
[rdf]: http://www.w3.org/RDF/
[skos]: http://www.w3.org/TR/skos-primer/
[uri]: http://en.wikipedia.org/wiki/Uniform_resource_identifier
[viaf]: http://viaf.org
[worldcat]: http://www.worldcat.org
