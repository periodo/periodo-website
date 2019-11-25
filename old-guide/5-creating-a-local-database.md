---
title: Creating a local database
slug: creating-a-local-database
---
!
To edit periods and period collections, you must create a local database. To do this, first **Switch backends**, and then under **Add backend** select **IndexedDB (editable, stored locally)**, write in a name for your local database, and click **Add**.

<img class="screenshot left" alt="Switching backends via the menu." src="/images/switching-backends.png" width="205">

<img class="screenshot" alt="Adding a local, editable backend." src="/images/adding-a-backend.png" width="321" style="margin-top: 0">

You should see your newly added IndexedDB backend appear in the list of backends. Click the name of your backend to switch to it.

<img class="screenshot center" alt="Listing all available backends." src="/images/listing-backends.png" width="474">

Initially your new local database (the backend you just created) will be empty, to fill it with some period definitions, go to the upper-right **Menu** drop-down and select **Get data from server or file**.

<img class="screenshot center" alt="Getting period data from a server or file." src="/images/getting-data.png" width="756">

<img class="screenshot right" alt="Fetching period data from the canonical server." src="/images/fetch-data.png" width="386">

Next you should see the **Sync** window. With `https://test.perio.do/` supplied as the **server URL** option, click **Fetch** which will retrieve all the period collections from the PeriodO server. From this list of **New period collections**, find your desired collection(s) and check the box to the left of their listing. Checking one or more boxes enables the **Continue** button at the top of the window. Click this button to confirm your selection.

<img class="screenshot" alt="New period collections fetched from a server or file." src="/images/new-period-collections.png" width="738">

The next screen displays your selected collections; ensure all that you need are listed and then under **Accept changes?** click **Yes**. 

<img class="screenshot" alt="Accepting new period collections fetched from a server or file." src="/images/accept-changes.png" width="742">

You have now made a local, editable database containing the periods in the selected collections. Next, at the top beside **Current backend** click **switch** to return to the backend selection page. Click on the name of your local database, and you will see a list of all the periods in the database. From here, you can click the **Browse by Collection** tab to make edits or additions. Click the collection you wish to edit. You will see the collection page, now with two new options to **Edit collection details** (this will edit the collection-level description) or **Add period** (to add a new period definition to this particular collection). 

<img class="screenshot center" alt="Viewing an editable period collection." src="/images/editable-collection.png" width="743">

You can also edit existing periods: locate the desired period in the collection, click on its row to expand the data entry, and find the blue **Edit** button beside the period. Clicking on this button will open a form using which you can edit the period definition. 

<img class="screenshot center" alt="Viewing an editable period definition." src="/images/editable-definition.png" width="737">

Once you have completed your edits, click the blue **Save** button at the bottom left and you will return to the collection. At any time, you can export your local database as a file by clicking **switch** at the top of the browser window to return to the backend selection screen, and clicking the "disc with a down arrow" icon to download the structured data as a JSON-LD file.

