#lang racket

(require graphics/turtles)

(turtles #t)

(define (draw-px-dir px dir)
  (turn dir)
  (draw px))

(define (draw-cool-thing px dir)
 (if (and (> px 0) (> dir 0))
     (draw-px-dir px dir)
     0)
  (draw-cool-thing (- px 1) (- dir 1)))

(draw-cool-thing 100 100)