---
title: Getting into shapes with SHACL
slug: getting-into-shapes-with-shacl
---

<section>
# Getting into shapes 💪 with SHACL

> Those of us in libraries have always focused on the record -- essentially a complex document that acts as a catalog surrogate for a complex thing, such as a book or a piece of recorded music. RDF says nothing about records.
>
> -- <cite>Karen Coyle, [Yee on RDF and Bibliographic Data](http://kcoyle.blogspot.com/2009/07/yee-on-rdf-and-bibliographic-data.html)</cite>

The "complex things" that PeriodO is concerned with are definitions of historical period names, and the records we create are complex documents that act as surrogates for those definitions. We call those records [period definitions](http://perio.do/technical-overview/#period-definitions) which we group into other records we call [period collections](http://perio.do/technical-overview/#period-collections), but until recently the only way we could express what we meant by those terms was through our documentation. Fortunately, we now have another option, in the form of a recommendation from the World Wide Web Consortium called the [Shapes Constraint Language](https://www.w3.org/TR/shacl/), or SHACL. The above-cited Karen Coyle recognized the usefulness of SHACL a couple of years ago, and wrote a very nice [introduction to SHACL](http://kcoyle.blogspot.com/2015/10/shacl-shapes-constraint-language.html) that I recommend you read. But basically, what SHACL allows us to do is define "shapes" that capture expectations we have about about our records. We can then automatically check whether some RDF graph conforms to those expectations. This note is about how we're using SHACL to check our assumptions about the PeriodO dataset.

</section>

<section>
## Defining shapes

Let's look at how we define a shape for period definitions. The following RDF statements (written here in Turtle) assert some of the things we assume about definitions. The `sh:` prefix indicates terms that come from the SHACL vocabulary, and the `periodo:` prefix indicates terms we're defining for PeriodO:

```
periodo:DefinitionShape
  rdf:type sh:NodeShape ;
  rdfs:label "Period definition shape" ;
  sh:targetClass skos:Concept ;
  sh:closed "true"^^xsd:boolean ;
  sh:ignoredProperties (
    rdf:type
    ) ;
  sh:property
    periodo:DefinitionPreferredLabelShape ,
    periodo:DefinitionLocalizedLabelShape ,
    periodo:DefinitionNoteShape ,
    periodo:DefinitionEditorialNoteShape ,
    periodo:DefinitionCollectionShape ,
    periodo:DefinitionSourceShape ,
    periodo:DefinitionSourceIsPartOfShape ,
    periodo:DefinitionSourceLocatorShape ,
    periodo:DefinitionStartShape ,
    periodo:DefinitionStopShape ,
    periodo:DefinitionSpatialCoverageDescriptionShape ,
    periodo:DefinitionSpatialCoverageShape ,
    periodo:DefinitionSameAsShape ,
    periodo:DefinitionURLShape ,
    periodo:DefinitionLanguageShape
  .
```

So, `periodo:DefinitionShape rdf:type sh:NodeShape` says that we're defining a "shape" that we call a `DefinitionShape`, and `sh:targetClass skos:Concept` means that we expect anything in the PeriodO dataset that is a SKOS concept (as [our period definitions are](http://perio.do/technical-overview/#period-definitions)) to have this shape. Each of the things listed under `sh:property` is a separate assumption we are making about a property that a period definition may have. For example, here is the first assumption in that list, `DefinitionPreferredLabelShape`:

```
periodo:DefinitionPreferredLabelShape
  rdf:type sh:PropertyShape ;
  sh:path skos:prefLabel ;
  sh:name "preferred label" ;
  sh:description "Name of the period as given in the source" ;
  sh:datatype xsd:string ;
  sh:minCount 1 ;
  sh:maxCount 1 ;
  sh:message "Problem with definition preferred label" ;
  .
```

This expresses what we assume about period definitions: that they all have a preferred label (`sh:minCount 1`), that none of them have more than one preferred label (`sh:maxCount 1`), and that the value of the preferred label is a string with no language tag (`sh:datatype xsd:string`).

Further down the list of assumptions is `DefinitionStartShape`, which expresses our assumptions about [start intervals of temporal extents of period definitions](http://perio.do/technical-overview/#temporal-extent):

```
periodo:DefinitionStartShape
  rdf:type sh:PropertyShape ;
  sh:path time:intervalStartedBy ;
  sh:name "start" ;
  sh:description "Start interval for the period" ;
  sh:nodeKind sh:BlankNode ;
  sh:node periodo:IntervalShape ;
  sh:minCount 1 ;
  sh:maxCount 1 ;
  sh:message "Problem with definition start interval" ;
  .
```

Again, we expect that all period definitions have a start interval, and that none of them have more than one start interval. But here `sh:nodeKind sh:BlankNode` means that we expect the value of the start interval to be a [blank node](https://en.wikipedia.org/w/index.php?title=Blank_node&oldid=766352469#Usability). (That just means we don't bother assigning identifiers to start intervals, since they have a one-to-one relationship with period definitions, and so every start interval is already implicitly identified by its definition's identifier.)  So the value of the start interval is just a grouping of statements about the start interval, but (using shapes) we can also now conceive of it as another kind of record: an interval record. `sh:node periodo:IntervalShape` means that we expect the the value of the start interval to conform to the shape identified as `periodo:IntervalShape`. This refers to another SHACL node shape that we've defined:

```
periodo:IntervalShape
  rdf:type sh:NodeShape ;
  rdfs:label "Interval shape" ;
  sh:closed "true"^^xsd:boolean ;
  sh:ignoredProperties (
    rdf:type
    ) ;
  sh:property
    periodo:IntervalPreferredLabelShape ,
    periodo:IntervalDateTimeDescriptionShape
  .
```

In this way we can build up definitions of more complex records (e.g. period definitions) out of definitions of simpler records (e.g. intervals).

As we see above, each `sh:property` value in a node shape points to a separate assumption we are making about a property that the node may have. In the example above, the "node" was what we call a period definition. But do we intend this list of assumptions to comprehensive? What if a period definition has other properties that do not appear in this list? Is that OK?

For PeriodO, we decided that it is not OK: we want every property to be explicitly documented. Thus we included the following in the definition of our period definition shape:

```
  sh:closed "true"^^xsd:boolean ;
  sh:ignoredProperties (
    rdf:type
    ) ;

```

`sh:closed "true"` means that this shape is not "open" in the sense of allowing unlisted properties: membership is closed. However, closing membership means that we're now forced to state our assumptions about every single property that a definition has (that was the whole point). But checking the `rdf:type` of each period definition is a bit silly, because we've already said that we expect the `DefinitionShape` to apply to all SKOS concepts: effectively we're already checking that the `rdf:type` value is `skos:Concept`. So, we include `rdf:type` in a collection of ignored properties.

The full set of PeriodO shapes are now published in the [PeriodO vocabulary](http://n2t.net/ark:/99152/p0v) and are in a [git repository](https://github.com/periodo/periodo-validation/tree/master/shapes).

</section>

<section>
## Validating a dataset

Defining shapes is useless unless there is something we can run that will automatically check whether some RDF graph conforms to them. Fortunately, Holger Knublauch has made an [open source SHACL validator](https://github.com/TopQuadrant/shacl/) available, which we wrapped in a [command line utility](https://github.com/periodo/periodo-validation#usage) for validating PeriodO data. This allows us to test the effects of adding new assumptions to, or removing existing assumptions from, the currently published set. For example, the following command will validate the currently published PeriodO data using any shapes found in the `shapes` directory, adding the assumptions from the file `added.ttl` and removing the assumptions found in the file `removed.ttl`:

```
./validate --shapes shapes --shapes added.ttl --remove removed.ttl
```

For a project like PeriodO, where the assumptions we make about the data we're creating are tentative and intended to evolve over time, it's very useful to be able to separate the management of the data from the management of those assumptions: we can then layer on assumptions over time as we reach consensus (or remove them if that consensus dissolves). Hopefully the shapes we're publishing will also be useful for projects using PeriodO data and wanting a "schema."

</section>
