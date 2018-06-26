---
title: Motivation
motivation: true
es: /motivacion/
---

<!-- note: MUST leave blank lines after paragraphs -->

<section>
## Linked Data for the Humanities

In the last few years, the possibilities for digital humanities research have expanded enormously, not only as a result of the exponential increase in the amount of humanities data freely available online, but also through the development of digital tools that allow the automated, computer-mediated extraction and visualization of information from texts and databases. Yet the humanities are generally much more diverse and idiosyncratic in their terminologies and ontologies than other areas of inquiry, and as the data increase, it becomes harder to find the information we need. One solution to this proliferation of data has been the movement toward the establishment of generally-accepted controlled vocabularies and standardized lists of entities such as people or places. The creation of centralized gazetteers that list geographic locations together with coordinates and alternate names, for example, has made it possible to extract maps from textual references to places [@Grover2010]. While such centralization has worked well with geography, it has proven difficult to implement in many other areas of the humanities, especially those that deal with extremely diverse and heterogeneous datasets across national boundaries. Some disciplines, like archaeology, have been especially slow to adopt standardized terminology, even with the rise of digital data-management systems. There has therefore been a recent movement toward approaches that involve "loose coupling" of archaeological datasets: that is, the use of semantic formats to describe information so that relationships between objects can be seen even when the terminologies and metadata schemata used to describe them are different. Relationships are established through the use of common reference points rather than shared vocabularies. The information described in this manner is known as [Linked Data][ldata]. The reference points are provided by [Uniform Resource Identifiers][uri], or URIs.

</section>

[uri]: https://en.wikipedia.org/wiki/Uniform_Resource_Identifier
[ldata]: https://en.wikipedia.org/wiki/Linked_data

<section>
## The Problem of Time

Linked Data approaches have already been very successful in creating tools for the discovery and visualization of geographically coded data. Geographic gazetteers have allowed scholars and information scientists who manage metadata to point to shared identifiers for places, so that even if one database calls a site "Athens" and another "Athina", someone looking for information from that site can find records in both databases with a single search (cf. the [Pelagios project][pel]). They also make it easy to use automated tools to attach coordinates to place-names. But for historical disciplines, another major axis of research has been more resistant to such tools: time. Scholarship on the ancient world, in particular, uses conceptual rather than quantitative language to refer to time. Instead of referring to dates, it refers to periods---but different scholars can use the same period terms to mean widely different things. Furthermore, period concepts are entangled with space: they are different from place to place, as they are from scholar to scholar. These factors make it effectively impossible to create a gazetteer of stable, globally-citable, temporally specific period concepts. But without a shared reference point, it is difficult for scholars to find information from the same time-range in different datasets; it is difficult for automated tools to extract and aggregate temporal information from texts and databases for visualization and analysis; and it is difficult for students and the public to understand the chronological nuances of historical interpretation. The need for a flexible, robust common reference point for periods has recently been highlighted [@Berman2011; @Elliott2013; @Grossner2013], but no such resource has yet emerged.

</section>

[pel]: http://commons.pelagios.org/about/

<section>
## A Gazetteer of Period Definitions

The PeriodO project proposes a solution to this problem through the creation of a gazetteer that documents definitions of periods by authoritative sources, rather than globally agreed-upon period concepts. The gazetteer allows historical and archaeological periods to be integrated more fully into the Linked Data ecosystem. Periods have been very difficult to model as Linked Data, since there is no middle ground between the very broad period definitions provided by existing general thesauri and controlled vocabularies and the very specific chronological and spatial attributes associated with periods as they are used in individual datasets and publications. General period thesauri do not correspond to the period definitions used by many individual researchers, projects, or institutions. On the other hand, before PeriodO there was no way to reconcile the very specific period vocabularies deployed in different individual datasets with each other, in order to allow a search across those datasets to return all records associated with a date range of interest or with the same general period concept.

The PeriodO gazetteer of period definitions provides a middle ground between general and specific period vocabularies. Period definitions in the gazetteer are modeled in a way that corresponds closely to traditional scholarly practice, which differs significantly from the use of controlled vocabularies favored by libraries and archives. Careful scholarship will generally qualify the use of a period term like "the Early Iron Age" with either a spatio-temporal definition ("that is, the period between roughly 1100 and 750 BCE in the Aegean area") or a reference to a previous study ("as defined by Mazarakis Ainian [1997]"). A period definition therefore consists of a statement by an authoritative source, in print or online, that associates a period name or term ("Archaic") with chronological coordinates of greater or less precision ("700-480 BCE", "late eighth to early fifth century BC") and with particular modern geographic boundaries ("Greece", "Turkey", "Sicily", etc.) or ancient or modern sites ("Athens").

</section>

<section>
## Contributing Partners

Our partners and data contributors include the [British Museum][bri], the [German Archaeological Institute][gai], the [Archaeology Data Service][ads] (UK), [English Heritage][eng], the [Hypermedia Research Unit][hru] at the University of South Wales, the [Pleiades][ple] spatial gazetteer, the [Pelagios][pel] project, [Fasti Online][fas], the [ArcheoInf][arc] project, the University of Oxford's [CLAROS][cla] project, the UCLA [Encyclopedia of Egyptology][uee], and the [Levantine Ceramics Project][lcp].

[adm]: http://www.utexas.edu/cola/depts/classics/faculty/atr253
[ryn]: http://aeshin.org/
[erc]: https://twitter.com/ekansa
[ctx]: http://opencontext.org/
[bri]: https://www.britishmuseum.org/
[gai]: http://www.dainst.org/
[ads]: http://archaeologydataservice.ac.uk/
[eng]: http://www.english-heritage.org.uk/
[hru]: http://hypermedia.research.southwales.ac.uk/
[ple]: http://pleiades.stoa.org/
[pel]: http://pelagios-project.blogspot.com/p/about-pelagios.html
[fas]: http://www.fastionline.org/
[arc]: http://www.ub.tu-dortmund.de/archeoinf/
[cla]: http://www.clarosnet.org/
[uee]: http://www.uee.ucla.edu/
[lcp]: http://www.levantineceramics.org/

</section>

<section>
## References
</section>
