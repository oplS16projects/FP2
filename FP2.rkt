#lang racket

(require plot)
(plot (function sqr -2 2))

(printf "\n")
(printf "\n")
(printf "\n")

(define (funct1 θ) (+ 1/2 (* 1/6 (cos (* 5 θ)))))
(define (funct2 θ) (+ 2 (* 1/4 (cos (* 10 θ)))))
(plot (list (polar-axes #:number 10)
              (polar-interval funct1 funct2 #:label "[f1,f2]")))

(printf "\n")
(printf "\n")
(printf "\n")

(plot (vector-field (λ (x y) (vector (+ x y) (- x y)))
                      -4 4 -3 3))

