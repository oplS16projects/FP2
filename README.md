## My Library: csv-reading
My name: John Kilgo

For this example I chose the csv-reading library. Here, I created a simple csv-reader which I then fed in to my own procedures. I created a sample data file consisting of some data that could be from a store:

data.csv
```
Name,ID,Quantity
chocolate,209137,12
sugar,213423,23
candy,132131,321
good food,232111,0
```

I then utilized some of the examples to make a procedure that would read an entire csv file and return a list. I created a wrapper for this procedure where the user could give the procedure a key (as a string) and that procedure would either return an error message if the particular key was not found or it would return a list containing the matched entries. The key was hardcoded to the 'Name' column of the csv.

```
;; Wrapper for my-filter
(define (filter-wrapper key)
  (if (null? (my-filter key)) "Sorry, no matching item(s) in database" (my-filter key)))
```

An example run and two different queries are below. I'm not entirely sure how this would work in a larger project, but I'm thinking about doing something with parsing and intepreting data; this is a very basic start.

![Example Query](https://raw.githubusercontent.com/john-kilgo/FP2/master/example.png)
