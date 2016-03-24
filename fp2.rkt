#lang racket
(require graphics/turtles)

(turtles #t)

(define (make-image dist angle iterations)
  (move-offset -75 -75)
  (define (iter dist angle iterations)
    (draw dist)
    (turn angle)
    (if (<= iterations 0)
        (display "")
        (iter dist (+ angle 0.00) (- iterations 1))))
  (iter dist angle iterations))

(define (make-collage dist angle iters1 iters2)
  (cond ((> iters2 0)
         (make-image dist angle iters1)
         (make-collage dist angle iters1 (- iters2 1)))
        (else
         (display "Complete!\n"))))
      
  
;(make-image 300 281 300)