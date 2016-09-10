---
title: Browse the canonical dataset
slug: browse-the-canonical-dataset
---

The [PeriodO client](http://n2t.net/ark:/99152/p0) is an application that runs in your browser. It can be used to browse and edit any dataset that conforms to the PeriodO data model. But most people are probably interested in looking at the *canonical* dataset curated by the PeriodO project.

When you first load the client, you are prompted to select a *backend*. A backend is simply a location from which the client will load data. The client supports three kinds of backends:

  * A *web* backend loads data from a specified URL. Data loaded from a web backend can only be browsed, not edited.
  
  * A *file* backend loads data from a local file. Data loaded from a file backend is also browse-only.
  
  * An *IndexedDB* backend loads data from a [local database](#creating-a-local-database) running in your browser. Data in an IndexedDB backend can be edited as well as browsed. (Note that Safari does not yet have full support for IndexedDB.)

Initially you should see only one backend, a web backend pointing to the canonical PeriodO dataset (at [`http://n2t.net/ark:/99152/p0d.json`](http://n2t.net/ark:/99152/p0d.json)).

<img class="screenshot center" alt="Selecting a backend for the PeriodO client." src="/images/select-backends.png" width="738">

Clicking on the "disc with a down arrow" icon will download the data from the canonical web backend to a local file. Clicking on the name of the backend ("Canonical") will load the data from the canonical backend into the client, and you should see a browsing interface like this:

<img class="screenshot" alt="Selecting a backend for the PeriodO client." src="/images/browse-canonical-dataset.png" width="768">

