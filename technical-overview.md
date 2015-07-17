---
title: Technical Overview
technical-overview: true
---

<!-- note: MUST leave blank lines after paragraphs -->

<section>
## Linked Data

The PeriodO period gazetteer documents definitions of historical period names. Each entry of the gazetteer identifies the definition of a single period. To be included in the gazetteer, a definition must

* give the period a name,
* impose some temporal bounds on the period,
* have some implicit or explicit association with a geographical region, and
* have been formally or informally published in some citable source.

Much care has been put into giving period definitions stable identifiers that can be resolved to [RDF representations](/data-model/) of period definitions. PeriodO models period definitions as [SKOS][skos] concepts. These are grouped into concept schemes sharing the same bibliographic source. Temporal extent is expressed via a direct textual quotation from the source, as well as via a structured approximation of this expression modeled using the [OWL-Time][owltime] ontology. Similarly spatial extent is represented both by a textual quote (where one was given) and a set of identifiers referring to spatial entities in external resources such as [DBpedia][dbpedia].

Examples:

* <p>[`http://n2t.net/ark:/99152/p05krdxmkzt`](http://n2t.net/ark:/99152/p05krdxmkzt) identifies the "Dark Age" as defined by Davis and Alcock on page 97 of [*Sandy Pylos: an archaeological history from Nestor to Navarino*](http://www.worldcat.org/oclc/37663433) (see the [JSON representation](http://n2t.net/ark:/99152/p05krdxmkzt.json)).</p>
* <p>[`http://n2t.net/ark:/99152/p06v8w4`](http://n2t.net/ark:/99152/p06v8w4) identifies all the period definitions from the [FastiOnline](http://fastionline.org) database of archaeological excavations (see the [JSON representation](http://n2t.net/ark:/99152/p06v8w4.json)).</p>

</section>

<section>
## Identifiers

Each period definition is given its own Web-based, resolvable [Uniform Resource Identifier][uri] (URI) in the form of a [Archival Resource Key][ark] (ARK), minted through the [EZID][ezid] system of the California Digital Library. These ARKs are resolvable to structured, machine-readable representations of individual period definitions.

Wherever possible bibliographic sources are identified with [WorldCat][worldcat] URIs or [CrossRef][crossref] DOIs, and creators are identified with [Virtual International Authority File][viaf] URIs. 

</section>

<section>
## Data Serialization

Period definitions in the PeriodO gazetteer are published as [JSON-LD][jsonld], a serialized form of the [Resource Description Format][rdf] (RDF) used to describe Linked Data. The [entire dataset](http://n2t.net/ark:/99152/p0d.json) is available for download as a single JSON file, so that it can be more easily reused by other projects.

</section>

<section>
## User Interface

A [browser-based client](http://n2t.net/ark:/99152/p0) provides search, visualization, and data entry tools. It also provides an interface for managing distributed versioning and collaborative development of the PeriodO dataset. The entire editorial history of the PeriodO gazetteer is published as a separate dataset using the [PROV][prov] ontology.

</section>


[arena]: http://ads.ahds.ac.uk/arena/search/period.cfm
[ark]: https://tools.ietf.org/html/draft-kunze-ark-18
[ato]: http://en.wikipedia.org/wiki/Allen's_interval_algebra
[cdl]: http://www.cdlib.org/
[crossref]: http://www.crossref.org
[csv]: http://en.wikipedia.org/wiki/Comma-separated_values
[dbpedia]: http://wiki.dbpedia.org
[doi]: http://en.wikipedia.org/wiki/Digital_object_identifier
[ezid]: http://ezid.cdlib.org/
[ghub]: https://github.com
[jday]: http://en.wikipedia.org/wiki/Julian_day
[json]: http://www.json.org/
[jsonld]: http://json-ld.org/
[orc]: http://orcid.org
[owltime]: http://www.w3.org/TR/owl-time/
[ple]: http://pleiades.stoa.org/
[pel]: http://pelagios-project.blogspot.com/p/about-pelagios.html
[prov]: http://www.w3.org/TR/prov-primer/
[rdf]: http://www.w3.org/RDF/
[skos]: http://www.w3.org/TR/skos-primer/
[star]: http://reswin1.isd.glam.ac.uk/STAR/UI/timelineclient.html
[uri]: http://en.wikipedia.org/wiki/Uniform_resource_identifier
[viaf]: http://viaf.org
[wdata]: https://www.wikidata.org
[worldcat]: http://www.worldcat.org
