# Kinds of changes

This document describes the kinds of changes that may be made to the canonical PeriodO dataset. Note that any of these allowed changes will trigger new versions of the period collections or period definitions that they modify. In addition to the changes described below, new properties using predicates *not* listed below may be added at any time. 

## Changes to period collections

### `dcterms:source`

There must be one `dcterms:source` value. The value of `dcterms:source` must be a bibliographic description. It should change only if it is determined that a spelling, punctuation, or other clerical error was made when creating the bibliographic description of the original source, or if additional bibliographic information is added (e.g. a DOI is assigned to a journal article that previously did not have one).

## Changes to period definitions

### `skos:prefLabel`

There must be one `skos:prefLabel` value. The value of `skos:prefLabel` should change only if it is determined that a spelling, punctuation, or other clerical error was made when transcribing the name of the period exactly as given in the original source.

### `skos:altLabel`

There must be one or more `skos:altLabel` values. New `skos:altLabel` values may be added at any time. Existing `skos:altLabel` values should not be removed except to correct spelling, punctuation, or other clerical mistakes.

### `skos:note`

There may be one `skos:note` value. If there is not a `skos:note` value, one may be added at any time. The value of `skos:note` should change only if it is determined that a spelling, punctuation, or other clerical error was made, or to add more notes taken from the source.

### `skos:editorialNote`

There may be one `skos:editorialNote` value. If there is not a `skos:editorialNote` value, one may be added at any time. The value of `skos:editorialNote` may change at any time.

### `skos:inScheme`

There must be one `skos:inScheme` value, and it must never change.

### `dcterms:source`

There may be one `dcterms:source` value. The value of `dcterms:source` should change only if it is determined that a spelling, punctuation, or other clerical error was made when specifying bibliographic information specific to an individual definition.

### `time:intervalStartedBy` and `time:intervalFinishedBy`

There must be one `time:intervalStartedBy` value and one `time:intervalFinishedBy` value. These values must be temporal intervals. See below for policy on changes to temporal intervals.

### `periodo:spatialCoverageDescription`

There may be one `skos:spatialCoverageDescription` value. If there is not a `skos:spatialCoverageDescription` value, one may be added at any time. The value of `skos:spatialCoverageDescription` should change only if it is determined that a spelling, punctuation, or other clerical error was made when transcribing the spatial coverage description from the original source.

### `dcterms:spatial`

There must be at least one `dcterms:spatial` value.  New `dcterms:spatial` values may be added, and existing ones may be removed, at any time.

## Changes to temporal intervals of period definitions

### `skos:prefLabel`

There must be one `skos:prefLabel` value. The value of `skos:prefLabel` should change only if it is determined that a spelling, punctuation, or other clerical error was made when transcribing the description of the interval exactly as given in the original source.

### `time:hasDateTimeDescription`

There must be one `time:hasDateTimeDescription` value. This value must be a date-time description. See below for policy on changes to date-time descriptions.

## Changes to date-time descriptions of temporal intervals

Typically the values of `time:year`, `periodo:earliestYear`, and `periodo:latestYear` will not change. However, in the future PeriodO curators may decide that it necessary to make a systematic change to the way textual descriptions of temporal intervals are interpreted as structured date-time descriptions. Such a systematic change could cause these values to change. However, the PeriodO curators will not make such a change without first consulting with the PeriodO board of advisors and other interested parties.
