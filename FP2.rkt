#lang racket
(require plot)
;(plot-new-window? #t)

;(plot (function sin (- pi) pi #:label "y = sin(x)"))

;(parameterize ([plot-title  "An R × R → R function"]
;                 [plot-x-label "x"]
;                 [plot-y-label "y"]
;                 [plot-z-label "cos(x) sin(y)"])
;    (plot3d (contour-intervals3d (λ (x y) (* (cos x) (sin y)))
;                                 (- pi) pi (- pi) pi)))

;(plot (list (axes)
;              (function sqr -2 2)
;              (function (λ (x) x) #:color 0 #:style 'dot)
;              (inverse sqr -2 2 #:color 3)))
;
;(plot (list (axes)
;              (function sqr -2 2 #:label "y = x^2")
;              (function (λ (x) x) #:label "y = x" #:color 0 #:style 'dot)
;              (inverse sqr -2 2 #:label "x = y^2" #:color 3)))

(define (make-square-graph x) (plot (function sqr (- x) x #:label "square of x")))
(define (make-linear-graph y) (plot (function (λ (x) x) #:color 0 #:style 'dot)))
(define (make-multi-graph a . b) (plot (list (axes) a b)))

(define a (function sqr (- 2) 2 ))
(define b (inverse sqr (- 2) 2 ))