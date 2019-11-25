---
title: Open and browse the canonical periods
slug: open-and-browse
---

The [PeriodO client](http://n2t.net/ark:/99152/p0) runs in your browser. You can use it to browse or edit any dataset that conforms to the PeriodO data model. But most people are probably interested in looking at the *canonical* dataset of periods curated by the PeriodO project.

When you first open the client, you are prompted to select an existing data source or specify the location of a new data source. The client supports loading data from three kinds of sources:

  * A *web* source is a URL (web address starting with `http`). Data loaded from the web (including the canonical dataset) can only be browsed, not directly edited.
  
  * A *file* source is a local JSON file. Data loaded from files are also browse-only.
  
  * An *in-browser* source is a [database](#create-an-editable-dataset) running in your browser. Data from an in-browser source can be edited as well as browsed.

Initially you should see only one data source: the canonical PeriodO dataset (at [`http://n2t.net/ark:/99152/p0d.json`](http://n2t.net/ark:/99152/p0d.json)).

<figure>
<img class="screenshot"
     src="/images/select-data-source.png"
     alt=""
     width="815">
<figcaption>

</figcaption>
</figure>

Clicking on the name of the data source (**Canonical**) will load its data into the client, and you should see an interface for browsing it:

<figure>
<img class="screenshot"
     src="/images/browse-canonical-dataset.png"
     alt="Browsing the canonical PeriodO dataset"
     width="815">
<figcaption>
Browsing the canonical PeriodO dataset
</figcaption>
</figure>

At the bottom you will see a scrollable list of periods. Initially, this list will include all of the periods in the dataset. The periods in the list can be sorted by clicking on the column headers. Hovering over a period in the list will display, below the list, detailed information about the selected period and the authority that defined it. Clicking on a period to select it will keep the detailed view focused on it. You can use the up and down arrow keys to change the selected period.

<figure>
<img class="screenshot"
     src="/images/period-details.png"
     alt="Viewing detailed information about a selected period"
     width="815">
<figcaption>
Selecting the “Доба пізньої бронзи” (Late Bronze Age) period to view its details.
</figcaption>
</figure>

<h3 id="browse-period" class="clear">Navigate to a period</h3>

<figure class="right">
<img class="screenshot"
     src="/images/period-link.png"
     alt="Navigating to an individual period page"
     width="300">
<figcaption>
Click the blue number to navigate to that period.
</figcaption>
</figure>

The rows in the period list are numbered. Click a row's number to navigate to that period.

<figure>
<img class="screenshot"
     src="/images/period-view.png"
     alt="Viewing an individual period"
     width="815">
<figcaption>
Viewing an individual period. Note the red triangle in the navigation menu.
</figcaption>
</figure>

Navigating to an individual period will show some key points about it: preferred label, temporal extent, and spatial coverage, all as given by the source authority, to which a **Defined by** link is provided. Any notes from the original author or the editors who added the period are shown here too.

Every period in the canonical dataset has been assigned a stable, permanent URL, also known as a **Permalink**. Right-click on this link to copy it. You should always use the permalink when referring to a period or sharing it with others—URLs displayed in the browser address bar may change over time, but permalinks are (relatively) guaranteed to be resolvable for the long term.

To **Download** the period as structured data (JSON or Turtle), click on the appropriate link.

From the period view you can [view its edit history](#view-history). If you're viewing a period from an in-browser data source, you can [edit](#editing-a-period) it as well.

<h3 id="browse-authority" class="clear">Navigate to an authority</h3>

When viewing a period, click the name of the authority that defined the period (after **Defined by**) or click on **Authority > View** in the navigation menu to navigate to the authority.

<figure>
<img class="screenshot"
     src="/images/authority-view.png"
     alt="Viewing an authority"
     width="815">
<figcaption>
Viewing an authority. Note the red triangle in the navigation menu.
</figcaption>
</figure>

Navigating to an individual authority will show its name, creators, and other citable information. Any notes from the original author or the editors who added the authority are shown here too, if they are relevant to the authority as a whole.

As with periods, every authority in the canonical dataset also has been assigned a **Permalink**. Again, you should always use the permalink when referring to an authority or sharing it with others.

To **Download** the authority as structured data (JSON or Turtle), click on the appropriate link.

From the authority view you can [view its edit history](#view-history). If you're viewing an authority from an in-browser data source, you can [edit](#edit-authority) it as well.
