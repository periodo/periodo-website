---
title: Get periods as structured data
slug: get-structured-data
---

The canonical PeriodO dataset can be downloaded as a JSON-LD file:

[`http://n2t.net/ark:/99152/p0d.json`](http://n2t.net/ark:/99152/p0d.json)

As a Turtle file:

[`http://n2t.net/ark:/99152/p0d.ttl`](http://n2t.net/ark:/99152/p0d.ttl)

Or as a CSV file:

[`http://n2t.net/ark:/99152/p0d.csv`](http://n2t.net/ark:/99152/p0d.csv)

You can also download individual authorities and periods as structured data: navigate to any individual period or authority and use the **Download** links.

Depending on how they are followed, PeriodO permalinks will lead either to a structured data representation of the linked period or authority, or to a view of that data loaded in the PeriodO client.

For example:

* Following the permalink for `Energy epoch four: flesh` ([`http://n2t.net/ark:/99152/p0323gxv8wc`](http://n2t.net/ark:/99152/p0323gxv8wc)) in a browser will open the **Period > View** page in the client showing the the details of that period.

* Specifying an `accept: application/json` HTTP header and requesting the same permalink will return a JSON-LD representation of the period:

    ````
    curl -s -L -H 'accept: application/json' \
    http://n2t.net/ark:/99152/p0323gxv8wc \
    | riot --syntax=jsonld --count

    stdin           : Triples = 22
    ````

* Specifying an `accept: text/turtle` HTTP header and requesting the same permalink will return a Turtle representation of the period:

    ````
    curl -s -L -H 'accept: text/turtle' \
    http://n2t.net/ark:/99152/p0323gxv8wc \
    | riot --syntax=turtle --count

    stdin           : Triples = 22
    ````

* To link directly to the JSON-LD representation of the period, append `.json` to the end of the permalink: [`http://n2t.net/ark:/99152/p0323gxv8wc.json`](http://n2t.net/ark:/99152/p0323gxv8wc.json)

* To link directly to the Turtle representation of the period, append `.ttl` to the end of the permalink: [`http://n2t.net/ark:/99152/p0323gxv8wc.ttl`](http://n2t.net/ark:/99152/p0323gxv8wc.ttl)

* To see a syntax-highlighted view of the JSON-LD or Turtle representation of the period, append `.html` to the end of the permalink: [`http://n2t.net/ark:/99152/p0323gxv8wc.ttl.html`](http://n2t.net/ark:/99152/p0323gxv8wc.ttl.html)
