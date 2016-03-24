#lang racket

(require plot)
(plot (function cos (- pi) pi #:label "y = cos(x)"))
(plot (function sin (- pi) pi #:label "y = sin(x)"))
(plot (function tan 0 (/ pi 2) #:label "y = tan (x) "))
