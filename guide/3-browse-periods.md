---
title: Browse selected periods
slug: browse-periods
---

The currently selected set of periods is displayed both as regions on a map and as as spans on a timeline.

<figure>
<img class="screenshot"
     src="/images/map-view.png"
     alt="Seeing the spatial coverage of a set of periods"
     width="800">
<figcaption>
Looking at the combined spatial coverage of periods defined by the Levantine Ceramics Project
</figcaption>
</figure>

Use the map to get a sense of the combined spatial coverage of the selected periods, as specified by the Wikidata places they are linked to. The regions highlighted in purple indicate the spatial extents of all the Wikidata places linked to by the selected set of periods. 

The map display should be interpreted cautiously, as not all periods are linked to Wikidata places, and not all Wikidata places are currently mappable (meaning we do not yet have an authoritative source for the geometry of their spatial extents.) Learn more about the [PeriodO place name gazetteers](https://github.com/periodo/periodo-places#readme).

The map can be zoomed using the **+** and **-** buttons or keys and panned by dragging. Hide the map by clicking the **Spatial coverage** header.

<figure>
<img class="screenshot"
     src="/images/timeline-styles.png"
     alt="Comparing timeline styles"
     width="800">
<figcaption>
Comparing periods' temporal extents<br>as a histogram (top) or stacked bars (bottom)
</figcaption>
</figure>

Use the timeline to compare the temporal extents of the selected periods. There are two styles of timeline. The histogram style shows, for each unit of time, how many of the selected periods include that unit. The stacked bars style shows the temporal extent of each period as a horizontal bar.

Hide the timeline by clicking the **Temporal coverage** header.

<figure>
<img class="screenshot"
     src="/images/browse-period-list.png"
     alt="Browsing a list of selected periods"
     width="800">
<figcaption>
Browsing periods linked to the Wikidata record for Syria
</figcaption>
</figure>

Below the timeline you will see a scrollable list of the currently selected **Periods**. The list can be sorted by clicking on the column headers.

<figure>
<img class="screenshot"
     src="/images/period-details.png"
     alt="Viewing detailed information about a selected period"
     width="800">
<figcaption>
Selecting the “Доба пізньої бронзи” (Late Bronze Age) period to view its details
</figcaption>
</figure>

 Hovering over a period in the list will display (below the list) detailed information about that period and the authority that defined it. Clicking on a period to select it will keep the detailed view focused on it. You can then use the up and down arrow keys to change the selected period.

<figure>
<img class="screenshot"
     src="/images/map-focus.png"
     alt="Focusing on the spatial extent of a period"
     width="800">
<figcaption>
Looking at the spatial extent of the “Early Urnfield” period in Hungary (highlighted in red),<br>in the context of the spatial extents of other periods from the same authority (highlighted in purple)
</figcaption>
</figure>

When you have a period selected in the period list, it will be highlighted in red in both the map and the timeline view.

<figure>
<img class="screenshot"
     src="/images/timeline-focus.png"
     alt="Focusing on the temporal extent of a period"
     width="800">
<figcaption>
Looking at the temporal extent of the “Early Urnfield” period in Hungary (highlighted in red),<br>in the context of the temporal extents of other periods from the same authority
</figcaption>
</figure>

Following the **view** link for a period in the **Periods** list will take you to the **Period > View** page for that period.

<figure>
<img class="screenshot"
     src="/images/period-view.png"
     alt="Viewing an individual period"
     width="800">
<figcaption>
Viewing an individual period
</figcaption>
</figure>

 Viewing a period shows some key points about it: preferred label, temporal extent, and spatial coverage, all as given by the source authority, to which a **Defined by** link is provided. Any notes from the original author or the editors who added the period are shown here too.

Every period in the canonical dataset has been assigned a stable, permanent URL, also known as a **Permalink**. Right-click on this link to copy it. You should always use the permalink when referring to a period or sharing it with others—URLs displayed in the browser address bar may change over time, but permalinks are (relatively) guaranteed to be resolvable for the long term.

Following a PeriodO period permalink in a web browser should lead to the **Period > View** page for that period.

To **Download** the period as structured data (JSON or Turtle), click on the appropriate link.

When viewing a period, click the name of the authority that defined the period (after **Defined by**) or click on **Authority > View** in the navigation menu to navigate to the authority.
