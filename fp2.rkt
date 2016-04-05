#lang racket
(require data/spmatrix)

(define x (build-matrix 2 2 +))

(define y (build-matrix 2 3 +))

(define z (build-matrix 3 2 +))

(define (can-mult m1 m2)
  (if (= (matrix-cols m1) (matrix-rows m2))
      #t
      #f))
      