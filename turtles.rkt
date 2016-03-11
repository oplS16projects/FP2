#lang racket
(require teachpacks/racket-turtle)

(define COLORS1 (list "red" "green" "yellow" "purple"))

(define (spiral a x times)
  (if (< times 0)
      empty
      (append (list (forward x)(turn-left a))
              (spiral a (+ x 2)(sub1 times)))))

(define spiral-image
  (list (change-pen-size 2)
        (change-bg-color "black")
        (change-color COLORS1)
        (spiral 91 1 152)))
(draw spiral-image)
