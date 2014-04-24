---
title: Specifications
narrative: specs
---

<!-- note: MUST leave blank lines after paragraphs -->

<section>
## Data Model

The data model for a period assertion in the PeriodO gazetteer
requires that a period assertion include a period term or name,
temporal coordinates in the form of a date range, geographic
coordinates in the form of an association with a polygon or point, and
a source in the form of an authoritative body and/or an author and
published work.

<figure>
§svg(figure, Diagram demonstrating the period assertion model, assertion-model)§
<figcaption>Data model for a period assertion</figcaption>
</figure>
</section>

<section>
## Identifiers

Each assertion will be given its own Web-based, resolvable [Uniform
Resource Identifier][uri] (URI) in the form of a [Document Object
Identifier][doi] (DOI), minted through the [EZID][ezid] system of the
California Digital Library. This will allow a period assertion to be
included in the Linked Data metadata of another record in the form
`http://dx.doi.org/xxxxx`, allowing dataset creators to situate their
references to periods unambiguously in space, time, and scholarly
discourse. The DOIs will be resolvable to structured, machine-readable
definitions for individual period assertions. In the initial stage of
the project, this DOI will resolve to a record from the open-source
repository [GitHub][ghub], while the dataset of assertions will also
be archived in the [California Digital Library][cdl] and other
institutional repositories. The use of the DOI format, rather than a
web domain, will ensure that the assertion URIs remain valid even if
the dataset must be moved to a different host.

The authority and the geographic elements will also be identified with
URIs that allow unambiguous references to people and places: these
will be drawn from resources such as the [Virtual International
Authority File][viaf], [ORCID][orc], [Wikidata][wdata], and
[Pleiades][ple]. We will record the general geographic coverage of a
period assertion in terms of modern national and administrative
boundaries, since these reflect the current context of scholarship,
but where assertions refer to archaeological remains at individual
sites, we will characterize these with URIs from Pleiades.



As the dataset grows, we will also encode information about the
relationship between period assertions, both in terms of [Allen
temporal operators][ato] (equals, during, before, after, overlaps) and
in terms of subsets within the same source citations (*Late Helladic
III* is a subset of *Late Helladic*, which is itself a subset of *Late
Bronze Age*).


</section>

<section>
## Data Serialization

Period assertions in the PeriodO gazetteer will be published as
[JSON-LD][jsonld], a serialized form of the [Resource Description
Format][rdf] (RDF) used to describe Linked Data. The entire dataset
will also be available for download as a single [CSV][csv] or
[JSON][json] file, so that it can be more easily reused by other
projects.

Date ranges will be entered in the form in which they appear in the
original assertion, but in order to normalize them within the dataset
and account for different levels of precision, start and end dates
will also be represented as a number of [Julian Days][jday] in
scientific notation, with the number of significant digits indicating
the degree of precision (two significant digits would indicate a
precision of +/- 150 years, four significant digits a precision of +/-
1.5 years). The assertion above, for example, would appear as follows:

<script src="https://gist.github.com/rybesh/11234337.js"></script>
</section>

<section>
## User Interface

An HTML5/Javascript interface will provide search, visualization, and
data entry tools, including map and timeline-based access to the
data. This will allow users to visually compare the date ranges of
various period assertions, in a more extensive and interactive version
of existing visualizations such as the European [ARENA portal period
search chart][arena] or the [STAR.Timeline client][star].

The interface will also allow the user to search for period assertions
by date range, by geographic association, by name, or---most
importantly---by a combination of some or all of those factors. This
will make it possible, for example, to explore chronological
disagreements even among those who use the same period term in the
same geographic area. For example, only by comparing several different
period assertions can one understand why archaeological remains dated
to ca. 550--525 BC are or are not classified as "Iron Age" in a
particular work---and that such classification can reveal the
scholarly orientation of the author.

</section>

<section>
## Application Programming Interface (API)

The structure of the data will make the same possibilities available
to automated tools, with the result that the gazetteer will be able to
be used to connect different terms in different databases that use
PeriodO URIs to make their temporal and geographic coverage
explicit. As the Pleiades gazetteer of ancient places has made it
possible for the [Pelagios] project to bring together disparate database
entries by their reference to the same Pleiades URI, the PeriodO
gazetteer would make it possible to bring together all database
entries associated, for example, with a period assertion that covers
the date-range 500--450 BC within the modern boundaries of Greece: a
query on these dates would return all records associated with diverse
terms like "Archaic", "Late Archaic", "Severe", "Early Classical",
"Classical", "Klassische", "Αρχαικη", etc., even when calendar dates
are not specified in those records.

</section>

[arena]: http://ads.ahds.ac.uk/arena/search/period.cfm
[ato]: http://en.wikipedia.org/wiki/Allen's_interval_algebra
[cdl]: http://www.cdlib.org/
[csv]: http://en.wikipedia.org/wiki/Comma-separated_values
[doi]: http://en.wikipedia.org/wiki/Digital_object_identifier
[ezid]: http://ezid.cdlib.org/
[ghub]: https://github.com
[jday]: http://en.wikipedia.org/wiki/Julian_day
[json]: http://www.json.org/
[jsonld]: http://json-ld.org/
[orc]: http://orcid.org
[ple]: http://pleiades.stoa.org/
[pel]: http://pelagios-project.blogspot.com/p/about-pelagios.html
[rdf]: http://www.w3.org/RDF/
[star]: http://reswin1.isd.glam.ac.uk/STAR/UI/timelineclient.html
[uri]: http://en.wikipedia.org/wiki/Uniform_resource_identifier
[viaf]: http://viaf.org
[wdata]: https://www.wikidata.org
