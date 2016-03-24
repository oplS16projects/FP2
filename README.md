
## My Library: (trigonometric-plots.rkt)
My name: Ebenezer Ampadu
Write what you did!
I implemented trigonometric functions using the library racket library plot by setting trigonometric limits for these functions for the code to properly run, since if a limit is out of range, an exception would be thrown.

Highlights of Code: 
...Racket
#lang racket

(require plot)
(plot (function cos (- pi) pi #:label "y = cos(x)"))
(plot (function sin (- pi) pi #:label "y = sin(x)"))
(plot (function tan 0 (/ pi 2) #:label "y = tan (x) "))

Output:

Please see attached graphs.
