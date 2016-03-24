## My Library: cpuinfo
###My name: Michael Bowe
I played with all the functions provided by cpuinfo. Seeing no useful way to access most of the information programmatically, I wrote accessors for some of the more interesting cpu statistics. Since the cpuinfo obect is implemented as a list of cons cells, I replaced the outermost cdr with a car until I found the correct key cdr'ing down the list to make sure I was getting the correct information. For example:

```
#lang racket
;get just the number of cpu cores w/o extaneous info
(define (cpuinfo-corecount cpu)
  (cdr
   (car
    (cdr
     (cdr
      (cdr
       (cdr
        (cdr
         (cdr
          (cdr
           (cdr (cdr (cdr (cdr (cdr
            (car cpu))))))))))))))))

```

Below is a screenshot of the output of my code:
![figure1](http://cs.uml.edu/~mbowe/OPL/fp2/fig1.png)
