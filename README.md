## My Library: tzinfo
My name: Kyle Jolicoeur

Background:
I originally tried to use the library rsound, however I think something was wrong with my laptop, as after awhile the sounds
started screeching and I wasnt able to do meaningful work with it. After scrolling down the different libraries on the 
documentation page, I became interested in the time zone library because of a recent conversation I had with someone 
about timezones. I was curious what Racket could do with them.

What I did:
I split up my program into 5 different sections (1 line of code each), all unrelated to each other. Section 1 and 2 cause an immense amount of REPL spam, so I commented them out. I explained what each of those 2 lines of code does in a comment to compensate. It was 
interesting to see what Unix systems saw timezones as.

Highlights:
I think my most interesting code was in section 5 of my program. If you know the country code that you are interested in,
you can lookup every Unix recognized timezone that exists inside of the country. The largest amount of timezones I could find is 
when I lookup the timezones of Russia (country code: RU). I decided not to use RU as one of the country codes in the section to avoid
a lot of REPL spam. As an example, ```(country-code->tzids "ES") ``` checks the timezones which are found in Spain. This produces 
the list ``` (Africa/Ceuta Europe/Madrid Atlantic/Canary) ```. 

Another somewhat less interesting part of my code is in section 4 where I check the Unix database to see if certain timezones
exist. (tzid-exists? <string>) takes the string timezone format and compares it with the database. It returns true if there is an
exact match, or false if there isn't. I used an if statement with each itteration of the procedure to make the output look more user friendly. Code: 

``` 
(display (list "\nDoes EST exist on this computer: "

                   (if (tzid-exists? "US/Eastern")
                   
                        "yes\n"
                        
                        "no\n" ))) 
```
