#lang racket

(require math)

;Makes a 3x3 matrix filled in with 5's
(define filledMatrix (make-matrix 3 3 5))

;Makes a custom matrix of 3x3
(define customMatrix (matrix [[1 2 3] [2 3 4] [3 4 5]]))

;Adds the two matixes together and prints to screen.
;This would add 5 to each element and is printed to the screen.
(matrix+ filledMatrix customMatrix)

;Subtracts the custom matrix from the filled in matrix so each element starts at 5 and subtracts
;the value in the cooresponding spot from the custom matrix and is printed to the screen.
(matrix- filledMatrix customMatrix)

;Scale multiplies each element by 2 and then by 3 so in my filledMatrix each element would be 30
(define thirdMatrix (matrix-scale (matrix-scale filledMatrix 2) 3))

;From this thirdMatrix I subtracted the custom matrix so now each
;element is 25 and is printed to the screen.
(matrix- thirdMatrix filledMatrix)


;Pick a random integer from 1 to 50
(random-integer 1 50)

;Prints out all factors of a given number.
(divisors 75)

;Prints out the next x amount of fibonacci numbers.
(map fibonacci (range 7))

