#lang racket

(require graphics/turtles)
(turtles #t)

;; broken code but cool output when manually stopped
;(define (square x)
;  (draw x)
;  (turn 90)
;  (draw x)
;  (turn 90)
;  (draw x)
;  (turn 90)
;  (draw x)
;  (turn 90)
;  (move x)
;  (square (- x 10))
;  )
;
;(square 100)




(define (square x)
  (draw x)
  (turn 90)
  (draw x)
  (turn 90)
  (draw x)
  (turn 90)
  (draw x)
  (turn 90)
  (move x)
  )

(define (triangle x)
  (draw x)
  (turn 135)
  (draw (* 1.414 x))
  (move x)
  )

(square 100)
(triangle 100)



  