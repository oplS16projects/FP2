#lang racket

(require math)

(define _bruins_goals (list 34 28 27 15 13 13 12 12 9 8 6 6 5 5 3 3 2 2 2 2 1 1 1 1 1))

;Using the Math Library for Statistics

(display "Mean:")
(mean _bruins_goals)

(display "Standard Deviation:")
(stddev _bruins_goals)

; Turning a list of numbers into a string and back again using the number->string function



(number->string (first _bruins_goals))
(string->number (number->string (first _bruins_goals)))

; A matrix representing an ajacency network
(define m1 (matrix [[0 1 1 0][1 1 0 0][1 0 1 0] [0 0 0 0]]))
; By "squaring" the matrix you get everywhere you could go in two steps
(matrix* m1 m1)
(matrix-rows m1)
