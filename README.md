## Problem Description
The project will support two types of users: Buyers and Sellers of Widgets. The project is to build the ecommerce experience for WidgetCorp which operates a marketplace for Widgets.

### Posting Widgets
Sellers must be able to advertise their Widgets to Buyers by posting about them on the WidgetCorp site. A widget listing should have at least the following fields:
- Title
- Description
- Image
- Price

When a Seller posts a new item, WidgetCorp must check that the widget isn't counterfeit. This process takes up to 10 seconds and must happen in a background process (We simulate this work by sleeping for 10 seconds). While the counterfeit check runs, the Seller's browser should poll for status and show a progress icon.

### Browsing & Purchasing Widgets
Buyers must be able to browse through the selection of available Widgets and notify the widget's Seller that they are interested in purchasing it.

### Confirming Purchases
A Seller must be able to see all the Buyers that have expressed interest in a certain Widget. The WidgetCorp website **does not** handle any payment information - it is up to the Seller to negotiate with her potential Buyers offline. Once sold, the Seller must be able to mark her Widget as sold by entering the specified price and the user she sold it to. Marking a Widget as sold removes the Widget from the browsing page but preserves the sold Widget as an item in the Seller's history.

