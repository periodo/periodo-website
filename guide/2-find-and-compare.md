---
title: Find and compare periods
slug: find-and-compare
---

After [opening a dataset](#browse-the-canonical-dataset) you can get back to the dataset browsing interface by clicking **Dataset > Browse** in the navigation menu.

You can search for periods by label, and you can find sets of periods defined by specific authorities, having preferred labels in specific languages, or having specific spatial coverage.

<figure class="left">
<img class="screenshot"
     src="/images/search-by-name.png"
     alt="Searching for periods by name"
     width="320">
<figcaption>
Searching for periods with <code>bronz</code> in their labels
</figcaption>
</figure>

To search for periods by label, enter some text in the search box. If the **Labels** option is selected, the search will be restricted to the preferred (original) label of each period. If the **Labels + alternate labels** option is selected, the search will also include the alternate (translated) labels of each period.

<div class="clear"></div>

<figure class="right">
<img class="screenshot"
     src="/images/filter-by-authority.png"
     alt="Filtering periods by authority"
     width="390">
<figcaption>
Filtering for periods from the ARIADNE authority
</figcaption>
</figure>

To filter for periods defined by specific authorities, locate the desired authorities in the **Authority** list: these are listed in descending order by the number of periods they contain (indicated to the left of the authority's name). You can use `Ctrl+F` to search for an authority by name. 

Clicking on an authority filters the list of periods to include only periods belonging to that authority, and moves the selected authority to the top of the **Authority** list. Selecting multiple authorities will show all the periods defined by those authorities. Clicking **Clear** at the top of the authority list will show all the periods again.

<div class="clear"></div>

<figure class="left">
<img class="screenshot"
     src="/images/filter-by-language.png"
     alt="Filtering periods by language"
     width="210">
<figcaption>
Filtering for periods in<br>Albanian or Macedonian
</figcaption>
</figure>

Filtering by language works just like filtering by source: click on one or more languages in the **Language** list to show only periods with preferred labels in those languages.

<div class="clear"></div>

The spatial coverage of a period in PeriodO can be specified in two ways: **1)** as a string of text (usually a place name, but sometimes a description of multiple places) quoted from the source authority, and **2)** as a set of links to places identified in [Wikidata](descriptions of https://www.wikidata.org/). As a result there are two ways to filter periods by spatial coverage.

<figure class="right">
<img class="screenshot"
     src="/images/filter-by-spatial-coverage-description.png"
     alt="Filtering periods by spatial coverage description"
     width="210">
<figcaption>
Filtering for periods described<br>as covering “Holy Land”
</figcaption>
</figure>

The first way to filter periods by spatial coverage uses the descriptions quoted from the source authorities, and works just like filtering by language or authority. Locate the desired spatial coverage description in the **Spatial coverage** list, and select it by clicking. Again, you can use `Ctrl+F` to search for a specific place name in a spatial coverage description.

<div class="clear"></div>

The second way to filter periods by spatial coverage uses the links to Wikidata places. Under **Filter by place**, click **Select places**. A map and a search box will appear.

<figure class="center" style="width: 600px">
<img class="screenshot"
     src="/images/filter-by-place.png"
     alt="Filtering periods by place"
     width="600">
<figcaption>
Filtering for periods linked with the Wikidata records for Spain or France
</figcaption>
</figure>

 Enter some text to see a list of matching place names. Select a place name to add it to the filter. Adding multiple places to the filter will show periods linked to *any* of those places. The spatial coverage of the places in the filter will be shown on the map, until you click **Done**. To remove a place from the filter, click the **X** following the place name, or use `Tab` to highlight the place name and then press `Delete`.

Searches and filters can be combined; for example you might search for periods that **1)** have `bronz` in their labels, **2)** are linked with the Wikidata records for Spain or France, and **3)** are defined by the ARIADNE authority. The resulting list will include only periods that satisfy all three of these criteria.

<figure>
<img class="screenshot"
     src="/images/period-list.png"
     alt="Viewing a filtered set of periods"
     width="815">
<figcaption>
Viewing the set of periods with <code>bronz</code> in their labels
</figcaption>
</figure>

The periods satisfying the current search and filter criteria are visualized as spans on a timeline and as regions on a map.

<figure class="left">
<img class="screenshot"
     src="/images/timeline-styles.png"
     alt="Comparing timeline styles"
     width="400">
<figcaption>
Comparing periods' temporal extents<br>as a histogram (top) or stacked bars (bottom)
</figcaption>
</figure>

Use the timeline to compare the temporal extents of the selected periods. There are two styles of timeline. The histogram style shows, for each unit of time, how many of the selected periods include that unit. The stacked bars style shows the temporal extent of each period as a horizontal bar.

Use the map to get a sense of the combined spatial coverage of the selected periods, as specified by the Wikidata places they are linked to. The regions highlighted in purple indicate the spatial extents of all the Wikidata places linked to by the selected set of periods. If you focus on a period by clicking on or hovering over it in the tabular list of periods, the the spatial extents of the Wikidata places linked with that one period will be highlighted in red.

<figure>
<img class="screenshot"
     src="/images/map-focus.png"
     alt="Focusing on the spatial extent of a period"
     width="815">
<figcaption>
Looking at the spatial extent of the “Early Urnfield” period in Hungary (highglighted in red),<br>in the context of the spatial extents of other periods from the same authority (highlighted in purple).
</figcaption>
</figure>

The map display should be interpreted cautiously, as not all periods are linked to Wikidata places, and not all Wikidata places are currently mappable (meaning we do not yet have an authoritative source for the geometry of their spatial extents—learn more about the [PeriodO place name gazetteers](https://github.com/periodo/periodo-places#readme).) 

