---
title: Narrative
narrative: true
---

<!-- note: MUST leave blank lines before </section> end tags -->

<section>
## Linked Data for the Humanities

In the last few years, the possibilities for digital humanities
research have expanded enormously, not only as a result of the
exponential increase in the amount of humanities data freely available
online, but also through the development of digital tools that allow
the automated, computer-mediated extraction and visualization of
information from texts and databases. Yet the humanities are generally
much more diverse and idiosyncratic in their terminologies and
ontologies than other areas of inquiry, and as the data increase, it
becomes harder to find the information we need. One solution to this
proliferation of data has been the movement toward the establishment
of generally-accepted controlled vocabularies and standardized lists
of entities such as people or places. The creation of centralized
gazetteers that list geographic locations together with coordinates
and alternate names, for example, has made it possible to extract maps
from textual references to places [@Grover2010]. While such
centralization has worked well with geography, it has proven difficult
to implement in many other areas of the humanities, especially those
that deal with extremely diverse and heterogeneous datasets across
national boundaries. Some disciplines, like archaeology, have been
especially slow to adopt standardized terminology, even with the rise
of digital data-management systems. There has therefore been a recent
movement toward approaches that involve "loose coupling" of
archaeological datasets: that is, the use of semantic formats to
describe information so that relationships between objects can be seen
even when the terminologies and metadata schemata used to describe
them are different. Relationships are established through the use of
common reference points rather than shared vocabularies. The
information described in this manner is known as [Linked
Data][ldata]. The reference points are provided by [Uniform Resource
Identifiers][uri], or URIs.

</section>

[uri]: http://en.wikipedia.org/wiki/Uniform_resource_identifier
[ldata]: http://www.w3.org/DesignIssues/LinkedData.html

<section>
## The Problem of Time

Linked Data approaches have already been very successful in creating
tools for the discovery and visualization of geographically coded
data. Geographic gazetteers have allowed scholars and information
scientists who manage metadata to point to shared identifiers for
places, so that even if one database calls a site "Athens" and another
"Athina", someone looking for information from that site can find
records in both databases with a single search (cf. the [Pelagios
project][pel]). They also make it easy to use automated tools to attach
coordinates to place-names. But for historical disciplines, another
major axis of research has been more resistant to such tools:
time. Scholarship on the ancient world, in particular, uses conceptual
rather than quantitative language to refer to time. Instead of
referring to dates, it refers to periods---but different scholars can
use the same period terms to mean widely different
things. Furthermore, period concepts are entangled with space: they
are different from place to place, as they are from scholar to
scholar. These factors make it effectively impossible to create a
gazetteer of stable, globally-citable, temporally specific period
concepts. But without a shared reference point, it is difficult for
scholars to find information from the same time-range in different
datasets; it is difficult for automated tools to extract and aggregate
temporal information from texts and databases for visualization and
analysis; and it is difficult for students and the public to
understand the chronological nuances of historical interpretation. The
need for a flexible, robust common reference point for periods has
recently been highlighted [@Berman2011; @Elliott2013; @Grossner2013],
but no such resource has yet emerged.

</section>

[pel]: http://pelagios-project.blogspot.com/p/about-pelagios.html

<section>
## PeriodO: A Gazetteer of Period Assertions

The PeriodO project proposes a solution to this problem through the
creation of a gazetteer that documents specific sets of statements
made about periods by authoritative sources ("assertions"), rather
than globally-recognized period concepts. This gazetteer will allow
historical and archaeological periods to be integrated more fully into
the Linked Data ecosystem. Periods have been very difficult to model
as Linked Data, since there is no middle ground between the very broad
period definitions provided by existing general thesauri and
controlled vocabularies and the very specific chronological and
spatial attributes associated with periods as they are used in
individual datasets and publications. General period thesauri do not
correspond to the period definitions used by many individual
researchers, projects, or institutions. On the other hand, there is
currently no way to reconcile the very specific period vocabularies
deployed in different individual datasets with each other, in order to
allow a search across those datasets to return all records associated
with a date range of interest or with the same general period concept.

The PeriodO gazetteer of period assertions will provide the middle
ground between general and specific period vocabularies. Assertions in
the gazetteer are modeled in a way that corresponds closely to
traditional scholarly practice, which differs significantly from the
use of controlled vocabularies favored by libraries and
archives. Careful scholarship will generally qualify the use of a
period term like "the Early Iron Age" with either a spatio-temporal
definition ("that is, the period between roughly 1100 and 750 BCE in
the Aegean area") or a reference to a previous study ("as defined by
Mazarakis Ainian [1997]"). A period assertion therefore consists of a
statement by an authoritative source, in print or online, that
associates a period name or term ("Archaic") with chronological
coordinates of greater or less precision ("700-480 BCE", "late eighth
to early fifth century BC") and with particular modern geographic
boundaries ("Greece", "Turkey", "Sicily", etc.) or ancient or modern
sites ("Athens")<!-- (see Appendix A, Fig. 1)-->. Assertions will be
recorded in their original languages. Each will be assigned a URI in
the form of an HTTP [Digital Object Identifier][doi] (DOI) minted by
the [EZID][ezid] system of the California Digital Library.

</section>

[doi]: http://en.wikipedia.org/wiki/Digital_object_identifier
[ezid]: http://ezid.cdlib.org/

<section>
## Initial Datasets

The project will begin with a trial dataset of period assertions
focused on the history and archaeology of the Classical world. This
focus will allow us to explore our approach in the context of a fairly
well- defined spatial and temporal area in which project staff members
have extensive expertise. The complexity of the periodization of the
Classical world also offers an excellent test-bed for the modeling of
disagreement, uncertainty, and local variation in terminology within
and across modern national, linguistic, and disciplinary
boundaries. Furthermore, a community of practice is already emerging
around Linked Ancient World Data, thanks in part to two NEH-sponsored
Linked Ancient World Data Institutes (2012 and 2013)
[@Elliott2012]. There has also been a very successful effort---the
[Pelagios Project][pel]---to use Linked Data principles to aggregate
data across diverse datasets using [Pleiades][ple], a spatial
gazetteer of the ancient world [@Simon2012]. As Pelagios enters its
next phase, it is particularly interested in incorporating temporal
information in connection with place names and locations. Finally, the
PeriodO team has already collected defined period vocabularies from an
international set of digital projects that deal with the history and
archaeology of the Classical world. These, together with the
assertions collected by co-PI Rabinowitz in the course of the
development of [GeoDia][gdia], an interactive spatial timeline of
ancient Mediterranean archaeology, will provide an extensive initial
dataset on which to build. The project will be overseen by an advisory
board consisting of representatives of the major Linked Ancient World
Data projects that are likely to be the first consumers of PeriodO
Linked Data, as well as specialists in metadata and the modeling of
geotemporal information within and beyond the ancient world.

</section>

[ple]: http://pleiades.stoa.org/
[gdia]: http://geodia.laits.utexas.edu/

<section>
## Planned Tools and Services

The initial dataset for the PeriodO gazetteer will be useful for
existing efforts to connect datasets related to the ancient world. The
[Open Context][octx] project will lead the way with the implementation
of PeriodO URIs in the archaeological datasets it contains, and we
expect other partners to add PeriodO URIs to their own period
vocabularies. This will facilitate the linking of periodized data in
different datasets through automated tools. Expected human users
include data managers seeking to use period URIs for Linked-Data
descriptions of their own datasets, just as they use Pleiades URIs for
places [@Gruber2013], and scholars and students who are seeking
clarification on the usage of period terms in different geographical
regions or academic traditions. In some cases, data managers or
scholars may not find a period assertion that matches their data in
PeriodO, and therefore we also plan to foster a community of
knowledgeable users who have permission to add new period assertions,
increasing the usefulness of the gazetteer and creating a framework
for future expansion to other times and places. For these users, we
will develop a graphic user interface with a suite of simple search,
visualization, and data entry tools that will interact with
machine-readable assertion records housed in a [GitHub][ghub]
repository<!--(see Appendix A, Fig. 2)-->. These tools, built using
the open-source Javascript library [D3.js][d3], will include text,
map, and timeline displays. They will allow scholars, students, and
the general public to choose appropriate period assertion URIs for
their own data and to visualize and compare the precision and
spatio-temporal extent of different period assertions<!-- (see
Appendix A, Fig. 3)-->. The same tools will allow registered
contributors to add their own authoritative period assertions, using
an interface that prompts them to enter a core set of required
information.

All data entered into the system will be version controlled through
GitHub versioning tools, allowing contributors to "undo"
mistakes. Contributions made to the period gazetteer will be linked to
a contributor account. This will help users make judgments about
period assertions by examining their provenance (i.e. who contributed
them, and when). In most cases, the contributor will not be the same
as the bibliographic source for the assertion, so this will provide a
secondary source of authority for evaluating period assertions. By
making it easy to find, use, and create period-assertion URIs, PeriodO
will substantially increase our ability to link and discover vast
quantities of semantically-related data that will never be brought
into a single unified schema or ontology. Moreover, the PeriodO
visualization tools will help students and the public understand the
complexities of scholary discussions of, and disagreements about,
historical and archaeological periods. This is increasingly important
as attractive, interactive timelines like [ChronoZoom][czoom] become
more widespread: such timelines present only one definition for a
period, oversimplifying (and sometimes distorting) our understanding
of the past.

</section>

[octx]: http://opencontext.org/
[ghub]: https://github.com/
[d3]: http://d3js.org/
[czoom]: http://www.chronozoom.com/

<section>
## References
</section>
