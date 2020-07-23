---
title: Select periods of interest
slug: select-periods
---

At the top of the **Browse periods** page you can set some filters to select the set of periods you're interested in looking at. Each filter changes the currently selected set of periods.

To select periods by name or label, enter some text in the search box under **Filter periods > By label**. If the **Match labels** option is selected, only periods with preferred (original) labels matching the entered text will be selected. If the **Match labels + alternate labels** option is selected, periods with alternate (translated) labels matching the entered text will also be selected.

<figure>
<img class="screenshot"
     src="/images/search-by-name.png"
     alt="Selecting periods by label"
     width="800">
<figcaption>
Selecting periods with <code>bronz</code> in their labels
</figcaption>
</figure>

You can also use regular expressions to select periods by label.

<figure>
<img class="screenshot"
     src="/images/search-by-name-regex.png"
     alt="Selecting periods using a regular expression"
     width="800">
<figcaption>
Selecting periods with either <code>plague</code> or <code>pandemic</code> in their labels
</figcaption>
</figure>

To select periods that start within a specific range of time, you can use the **By time** filter. By default **Browse periods** only shows periods that start after 50,000 BC, since the very long time periods of the distant past are difficult to visualize alongside the shorter periods of human history. Drag the slider handles at each end of selected range to change it.

<figure>
<img class="screenshot"
     src="/images/select-by-time.png"
     alt="Selecting periods that start within a specific range"
     width="800">
<figcaption>
Selecting periods that start between 0 and 1950 AD
</figcaption>
</figure>

To select periods related to specific places, you have two options. The first option is to select periods that PeriodO curators have explicitly linked to places identified in [Wikidata](https://www.wikidata.org/). The second option is to select periods based on how the of the period was described by the source authority.

To select periods that PeriodO curators have linked to Wikidata places, click or tap **Select places** under **Filter periods > By place**. A map and a search box will appear.

<figure>
<img class="screenshot"
     src="/images/filter-by-place.png"
     alt="Selecting periods by linked place"
     width="800">
<figcaption>
Selecting periods linked with the Wikidata records for Spain or France
</figcaption>
</figure>

Enter some text to see a list of matching place names. Select a place name to add it to the selection. Adding multiple places to the selection will show periods linked to *any* of those places. To remove a place from the selection, click the **X** following the place name, or use `Tab` to highlight the place name and then press `Delete`. The spatial coverage of the places in the selection will be shown on the map until you click **Done**. 

To select periods based on how the spatial coverage of the period was described by the source authority, use the **Spatial coverage** facet list under **By authority, language or spatial coverage**. These three facet lists all work similarly. Each facet list shows—with respect to some property (or *facet* ) of the PeriodO data model—all the different values that the periods in the currently selected set have associated with that property. 

The number or *count* before each value shows the number of periods in the currently selected set that have that particular value associated with them. Clicking on a value in the list will narrow the currently selected set of periods to show only the periods having that value. Clicking multiple values will select periods having *any* of the selected values. If any values in a facet list are selected, the count before each *un*selected value is the number of periods that would be added to the selected set if that value were to be selected. Click a selected value again to unselect it. Click **Clear** to unselect all the selected values.

<figure>
<img class="screenshot"
     src="/images/using-facet-lists.png"
     alt="Selecting periods using facet lists"
     width="800">
<figcaption>
Looking at Priestley's descriptions of his periods' spatial coverages
</figcaption>
</figure>

For example, if `Joseph Priestley. A new chart of history` is selected in the **Authority** facet list, the **Spatial coverage** facet list will show all the different ways that Priestley described the spatial coverages of the periods in his chart. The list is ordered by *count*, with the most common spatial coverage description first and the least common one last. 

<figure>
<img class="screenshot"
     src="/images/spatial-coverage-no-value.png"
     alt="Some periods do not have a spatial coverage description"
     width="800">
<figcaption>
The British Museum does not specify the spatial coverage of most of its periods
</figcaption>
</figure>

Note that the most common spatial coverage description is `(no value)`! Some source authorities, such as the British Museum, do not explicitly describe the spatial coverage of their periods. This is one reason why PeriodO curators augment the source authority's spatial coverage description with links to Wikidata places.

To look for a specific value in a facet list, it is easier if the list is ordered alphabetically: click the **⚙** button at the top of the list and select **Order by label**. 

The **Spatial coverage** facet can also be used to select periods that PeriodO curators have linked to Wikidata places. To see all the different Wikidata places linked to periods in the currently selected set, click the **⚙** button at the top of the list and select **Use spatial coverage linked places**.

<figure>
<img class="screenshot"
     src="/images/filter-by-authority.png"
     alt="Selecting periods by authority"
     width="800">
<figcaption>
Selecting periods from the ARIADNE and FASTI authorities
</figcaption>
</figure>

To select periods defined by specific authorities, locate and select them in the **Authority** facet list. In addition to ordering the authorities by count or by label, you can also order them by publication year. Click the **⚙** button at the top of the list and select **Order by publication year**.

If you just want to look at the periods from a single authority, it is easier to [browse authorities](#browse-authorities).

<figure>
<img class="screenshot"
     src="/images/filter-by-language.png"
     alt="Selecting periods by language"
     width="800">
<figcaption>
Selecting periods with Turkish or Ukrainian names
</figcaption>
</figure>

Selecting periods by language works just like the other facet lists: click on one or more languages in the **Language** facet list to show only periods with preferred labels in those languages.

Multiple filters can be set simultaneously, and only periods that match *all* of the filters will be selected. For example on may select periods that **1)** have `bronz` in their labels, **2)** are linked with the Wikidata records for Spain or France, and **3)** are defined by the ARIADNE authority. The results will include only periods that satisfy all three of these criteria.

<figure>
<img class="screenshot"
     src="/images/multiple-selection-criteria.png"
     alt="Using multiple criteria to select periods"
     width="800">
<figcaption>
Using multiple criteria to select periods 
</figcaption>
</figure>

The current selection filters are reflected in the URL. This means that after using the filters to select a set of periods, the URL in the browser's address bar can be copied and pasted to share the selected set of periods with someone else. (Note that this will only work if you are browsing the canonical PeriodO dataset or another web source.)

To reset all the selection filters to their default values, click the PeriodO logo at the top of the page.

To collapse and hide the selection filter controls, click the **Filter periods** header.
