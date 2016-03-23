#lang racket/base
 
(define (my-+ a b)
  (if (zero? a)
      b
      (my-+ (sub1 a) (add1 b))))
 
(define (my-* a b)
  (if (zero? a)
      b
      (my-* (sub1 a) (my-+ b b))))

(provide my-+
         my-*)

(define a (list 1 2))
(define b '(1 2))
(define c a)
(define d (car a))
(define e 1)

(provide a
         b
         c
         d
         e)