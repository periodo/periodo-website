---
title: Open the canonical periods
slug: open-the-canonical-dataset
---

The [PeriodO client](https://client.perio.do) runs in your browser. You can use it to browse or edit any dataset that conforms to the PeriodO data model. But most people are probably interested in looking at the *canonical* dataset of periods curated by the PeriodO project.

When you first open the client, you are prompted to select an existing data source or specify the location of a new data source. The client supports loading data from three kinds of sources:

  * A *web* source is a URL (web address starting with `https`). Data loaded from the web (including the canonical dataset) can only be browsed, not directly edited.
  
  * A *file* source is a local (on your computer) JSON file. Data loaded from files are also browse-only.
  
  * An *in-browser* source is a [database](#create-or-edit) running in your browser. Data from an in-browser source can be edited as well as browsed.

Initially you should see only one data source: the canonical PeriodO dataset (the one downloadable at [`http://n2t.net/ark:/99152/p0d.json`](http://n2t.net/ark:/99152/p0d.json)).

<figure>
<img class="screenshot"
     src="/images/select-data-source.png"
     alt="Selecting a data source"
     width="800">
<figcaption>

</figcaption>
</figure>

Clicking on the name of the data source (**Canonical**) will load its data into the client and show the **Browse periods** page.
