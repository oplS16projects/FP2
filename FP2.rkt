#lang racket
(require plot)

(define (make-square-graph x) (plot (function sqr (- x) x #:label "square of x")))
(define (make-linear-graph y) (plot (function (λ (x) x) #:color 0 #:style 'dot)))
(define (make-multi-graph a . b) (plot (list (axes) a b)))

(define a (function sqr (- 2) 2 ))
(define b (inverse sqr (- 2) 2 ))

;;(make-multi-graph (list a b))     Is how you use the procedure.