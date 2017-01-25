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

There may be one `skos:note` value. If there is not a `skos:note` value, one may be added at any time. The value of `skos:note` should change only if it is determined that a spelling, punctuation, or other clerical error was made when transcribing the note from the original source.

### `skos:editorialNote`

There may be one `skos:editorialNote` value. If there is not a `skos:editorialNote` value, one may be added at any time. The value of `skos:editorialNote` may change at any time.

### `skos:inScheme`

There must be one `skos:inScheme` value, and it must never change.

### `dcterms:source`

There may be one `dcterms:source` value. The value of `dcterms:source` should change only if it is determined that a spelling, punctuation, or other clerical error was made when specifying bibliographic information specific to an individual definition.

### `time:intervalStartedBy` and `time:intervalFinishedBy`

There must be one `time:intervalStartedBy` value and one `time:intervalFinishedBy` value. These values must be temporal intervals. See below for policy on changes to temporal intervals.

### `periodo:spatialCoverageDescription`

There must be one `skos:spatialCoverageDescription` value. The value of `skos:prefLabel` should change only if it is determined that a spelling, punctuation, or other clerical error was made when transcribing the spatial extent of the period exactly as given in the original source.

### `dcterms:spatial`

There must be at least one `dcterms:spatial` value.  New `dcterms:spatial` values may be added, and existing ones may be removed, at any time.

## Changes to temporal intervals of period definitions

### `skos:prefLabel`

There must be one `skos:prefLabel` value. The value of `skos:prefLabel` should change only if it is determined that a spelling, punctuation, or other clerical error was made when transcribing the description of the interval exactly as given in the original source.

### `time:hasDateTimeDescription`

There must be one `time:hasDateTimeDescription` value. This value must be a date-time description. See below for policy on changes to date-time descriptions.

## Changes to date-time descriptions of temporal intervals

The values of `time:year`, `periodo:earliestYear`, and `periodo:latestYear` may change at any time that a PeriodO curator decides it necessary to change the structured interpretation of a temporal interval.
