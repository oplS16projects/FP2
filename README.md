# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016


## My Library: tzinfo
My name:Yusuf Mulyo
(require tzinfo)
(all-tzids)
This was the first thing I did since this procedure allows me, as the user, to indicate which cities are listed in the list of timezones.
With this knowledge, I chose my home city as an input to the next procedure.
(tzid->country-codes "Asia/Jakarta")
Which returns "ID", the country code for the city Jakarta.
From there I was able to find out other cities that are listed in the list that are from Indonesia ("ID).
(country-code->tzids "ID")

For this part of the project, I decided to use tzinfo library. This library has a list of timezones of cities all around the world. Though it might not be entirely complete, it covers the major cities in the major countries all around the world. It is useful as it is easily organized by country code and is able to show which timezone a specific country belongs in.
