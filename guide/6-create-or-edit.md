---
title: Create or edit your own periods
slug: create-or-edit
---

<figure>
<img class="screenshot"
     src="/images/add-editable-data-source.png"
     alt="Adding an editable in-browser dataset"
     width="800"
     height="395">
<figcaption>
Adding an editable data source in which to create a description of<br>the period “Age of Fracture”—also the title of historian<br>Daniel Rodgers' 2011 book, in which he defines it
</figcaption>
</figure>

To edit or create new periods and authorities, you must create a local, in-browser database. To do this, first navigate to **Home > Data sources**. Under **Add data source**, set the **Type** to **In-browser (editable)**, give your data source a label and (optionally) a description, and click **Add**.

You will see the **Browse periods** page, but there will be no periods to browse because initially your data source will be empty. Before you can add a new period, you first need to create an *authority* or source for the definition of the period. Every period belongs to an authority, even if it was informally published. Navigate to **Data source > Add authority** to create a new authority.

First you need to provide some a citable description of the authoritative source—information that could be used to find it online or in a library. 

<figure class="right">
<img class="screenshot"
     src="/images/copy-permalink.png"
     alt="Copying a permalink from WorldCat catalog"
     width="672"
     height="256">
<figcaption>
Copying the permalink for <span style="font-style: normal">Age of Fracture</span> from the WorldCat catalog
</figcaption>
</figure>

If the source is a book or some other kind of artifact held by a library anywhere in the world, you can easily provide this information by looking it up in the [WorldCat](https://worldcat.org/) catalog. Search for the item in WorldCat, and navigate to the item’s catalog page. Copy the **Permalink** in the upper right-hand corner.

<figure>
<img class="screenshot"
     src="/images/linked-data-1.png"
     alt="Loading a citable description of a source from WorldCat"
     width="800"
     width="395">
<figcaption>
Pasting the permalink for <span style="font-style: normal">Age of Fracture</span>into the PeriodO client
</figcaption>
</figure>

Paste the link you copied from WorldCat into the **Most published sources** tab in the PeriodO client interface. Then click the **⟳** button to load a citable description directly from WorldCat.

<figure>
<img class="screenshot"
     src="/images/linked-data-2.png"
     alt="Loading a citable description of a source from WorldCat"
     width="800"
     height="338">
<figcaption>
Confirming a citable description loaded from WorldCat
</figcaption>
</figure>

If the source is a scholarly article or other artifact that has been assigned a [digital object identifier](https://en.wikipedia.org/wiki/Digital_object_identifier) or DOI, you can also copy and paste the DOI into the **Most published sources** tab to load a citable description directly from the [CrossRef](https://search.crossref.org/) database.

If the source is something less formally published, such as a web page, you'll need to enter a citable description manually. Click the **Other sources** tab to do this. Try to enter as much descriptive information as possible.

<figure>
<img class="screenshot"
     src="/images/not-linked-data.png"
     alt="Manually entering a citable description of an authority"
     width="800"
     height="720">
<figcaption>
Manually entering a citable description of an authority
</figcaption>
</figure>

If the source is a page-numbered text, and all of the periods that it defines are on a single page (for example in a table), you can also put that page number in the **Locator** field (whether or not you manually entered the other citable information). If the periods defined by the authority are on different pages, don't put that information here—put it with the description of each period.

If there is anything to else important to note about the authority that isn’t specific to one of the periods it defines, put it in the **Editorial notes**.

Press **Save** to create your new authority. You will be navigated to **Authority > View** and should see your new authority with no periods in it.

<figure>
<img class="screenshot"
     src="/images/new-empty-authority.png"
     alt="Viewing a new, empty authority"
     width="800"
     height="413">
<figcaption>
Viewing a new, empty authority
</figcaption>
</figure>

To add a period to the empty authority, navigate to **Authority > Add period**.

<figure>
<img class="screenshot"
     src="/images/edit-period-labels.png"
     alt="Editing period labels"
     width="800"
     height="275">
<figcaption>
Editing period labels
</figcaption>
</figure>

Under **Original label**, give the name of the period as it is given in the authoritative source. If the original label is in English, you needn't provide any **Alternate labels** unless alternate names are given in the source. 

If the original label is not in English, you should add at least one alternate label in English. You can specify the language for each label, and if the language is one with multiple written scripts, you should specify the script as well.

<figure>
<img class="screenshot"
     src="/images/broader-narrower-periods.png"
     alt="Specifying relations to broader and narrower periods"
     width="800"
     height="554">
<figcaption>
Specifying relations to broader and narrower periods:<br>
the Early Minoan Period is part of the Bronze Age Period and has parts I, II, and III
</figcaption>
</figure>

Periods are commonly arranged into hierarchies. You can create hierarchies when adding or editing a period either by referencing a broader period that the currenrt one is **Part of**, or by listing narrower periods that the current one contains (**Has parts**). (You need not do both; indicating a relationship pointing from broader to narrower will also establish a relationship from narrower to broader, and vice versa.) Note that hierarchies can only contain periods from the same authority, so it is only possible to add broader or narrower links once you have added at least one other period to an authority.

<div id="derived-from" class="anchor"></div>

Periods are often defined as modifications of periods defined by others. PeriodO records these relationships as **Derived from** links. Unlike broader and narower relations, derivation relations can (and usually should) relate periods from different authorities. To add derivation relations to periods from a different authority, that authority needs to be [included in your editable data source](#import-changes).

To remove any related period, click the **X** beside its name.

<figure>
<img class="screenshot"
     src="/images/spatial-coverage.png"
     alt="Describing the spatial coverage of a period"
     width="800"
     height="692">
<figcaption>
Describing the spatial coverage of a period
</figcaption>
</figure>

The **Spatial coverage** of a period can be described in two complementary ways. Under **Description**, give the spatial coverage as it is described in the source. This description should be taken verbatim from the text of source, in whatever form it may appear: table header, figure caption, etc. If there is absolutely no mention in the source of a spatial region to which the period is relevant, you can leave the description blank.

Under **Coverage area**, you can select (from [placename gazetteers](https://en.wikipedia.org/wiki/Gazetteer)) specific places that correspond to the description you entered. Even if there is no mention in the source of a spatial region to which the period is relevant, you still should be able to infer such a region from what you know about the source: select places that correspond to this inferred region. The places you have selected will appear as a list of gray boxes labeled with place names. To remove a place from the list, click the **X** on the box. 

If you cannot find a place you would like to add to the coverage area, please [contact us](/contact/) and we’ll add it to our placename gazetteers.

<figure>
<img class="screenshot"
     src="/images/parsed-dates.png"
     alt="Describing the temporal coverage of a period"
     width="800"
     height="444">
<figcaption>
These descriptions of when the period starts and stops<br>have been automatically parsed into standardized forms.
</figcaption>
</figure>

To describe the **Temporal coverage** of a period, first look at how it is described in the source. Typically, periods will be defined as extending from some (possibly vague) **Start** time to some (possibly vague) **Stop** time. For example, a source might defined a period as extending from “1000 BCE” to “500 BCE”, or from the “end of the 1st century AD” to the “start of the 5th century”. In such cases, you would enter each part of the description—taken verbatim from the source—as the **Label** for the start and stop, respectively.

After you have entered a label for the start or stop of the period, the interface will attempt to automatically translate what you’ve entered into a range of standardized year values. For example, a label of “1000 BCE” would be translated to the standardized year `-0999`, while a label of “start of the 5th century” would be translated to the range of standardized years from `0401` to `0434`.

Depending on what the label is, the interface may not be able to translate it into a standardized form. In that case, uncheck the **Parse dates automatically** box and enter the standardized forms yourself. If either the start or the stop of the period is a range of dates—expressing some uncertainty or vagueness about when it started or stopped—check the **Year range (not a single year)** box to enter that range.

<figure>
<img class="screenshot"
     src="/images/temporal-coverage.png"
     alt="Describing the temporal coverage of a period"
     width="800"
     height="444">
<figcaption>
Manually entering standardized year values<br>inferred from a description of temporal coverage.
</figcaption>
</figure>

In some cases a source will describe the temporal coverage of a period using a single phrase, rather than separately describing the start and the stop. In a case like this, enter the description as the label for the start, but leave the label for the stop blank. Then turn off automatic date parsing, and fill in the standardized values for the start and the stop. For example a period described as covering the “last quarter of the twentieth century” would correspond to a range from starting in `1975` and stopping in `1999`, even though the textual description does not explicitly distinguish these two endpoints.

If the period is defined at a particular location in the authoritative source—for example a specific page or figure in a text—put that information in the **Locator** field. If the authoritative source is a website, and period is defined on a particular page in that website, put the URL of that page in the **URL** field.

Finally, you can add explanatory notes about the period. The **Note** field is for explanatory text taken directly from the source.

<figure>
<img class="screenshot"
     src="/images/edit-note.png"
     alt="Text excerpted from a source document into a note"
     width="800"
     height="242">
<figcaption>
Text excerpted from a source document<br>that helps one better understand the period definition
</figcaption>
</figure>

 The **Editorial note** field is for explaining decisions made by the author of the PeriodO record (that's you!). For example, explanations of judgment calls about alternate labels, spatial coverage, or temporal coverage could go here.

Click the **Save** button to finish adding your new period. You will be navigated to the authority view, which should now list your single new period.

<h3 id="import-changes">Editing existing periods</h3>

Rather than creating your own periods and authorities from scratch, you may want to edit periods from the canonical dataset or from a file that someone shared with you. Or you may want to [derive](#derived-from) new periods from canonical ones.

To work from a file, you first need to add the file as a (read-only) data source. Navigate to **Home > Data sources** and under **Add data source** set the **type** to **File**. Give your data source a name, click **Choose File**, and select the file with the dataset you wish to load. Click **Add** and your new data source will be created.

Now you will import into your editable, in-browser database the periods you want to edit or from which you want to derive new periods. (See [how to create an editable database](#create-or-edit).) Navigate to **Data source > Import changes**. Select from which of the **Available data sources** you would like to import data. If you created a new data source from a file, or if you created other in-browser data sources, you should see them listed here; otherwise you can import changes from the canonical dataset.

After you've made your selection, you will see a list of the differences or *changes* between the data source you're currently editing and the data source from which you want to import data. If the data source you're editing is empty, these changes will look like a list of new authorities.

<figure>
<img class="screenshot"
     src="/images/selecting-changes.png"
     alt="Importing authorities and periods from the canonical dataset"
     width="800"
     height="884">
<figcaption>
Importing authorities and periods from the canonical dataset.<br>
The “Life in biblical Israel” authority is selected to be imported,<br>
and it is expanded to show the details of the authority description.
</figcaption>
</figure>

Select the changes you would like to add to the data source you’re editing, scroll down to the bottom, and click **Continue**. You will see a summary with only the changes you selected. Click **Accept changes** to confirm, and the changes will be applied. Now you can edit any period by first browsing to it and then navigating to **Period > Edit**. If you add a new period to this data source, you will be able to refer to the imported periods as sources from which the new period is [derived](#derived-from).

