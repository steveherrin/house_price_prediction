# House Price Prediction

I would like to buy a house at some point. I'd like to
be able to figure out an appropriate amount to offer,
based on recent comparable sales, using a little machine
learning.

Getting Data
------------

1. Go to RedFin, search for sales records
2. Draw a boundary around the area of interest
   (ideally, use local knowledge to keep to to
    roughly similar neighborhoods).
3. In Developer Tools, look for a query to the
   `www.redfin.com/stingray/api/gis` endpoint
4. Right click, "Copy as cURL"
5. Paste the command to `queries/<id>.query`
6. Run `make data`
