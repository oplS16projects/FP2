#lang racket
(require teachpacks/racket-turtle)

;; I found some random colors to try out at this URL:
;; https://docs.racket-lang.org/draw/color-database___.html
(define COLORS1 (list "red" "green" "yellow" "purple"))
(define COLORS2 (list "green" "yellow" "blue" "purple" "red"
                      "orange" "MediumBlue" "white" "Orchid"))
(define COLORS3 (list "red" "yellow" "green" "RoyalBlue" "MediumBlue"
                      "Magenta" "black"))
(define COLORS4 (list "red" "yellow" "orange" "RoyalBlue" "MediumBlue"
                      "Magenta" "purple" "black"))

;; Spiral images.
(define (spiral a x times)
  (if (< times 0)
      empty
      (append (list (forward x) (turn-right a))
              (spiral a (+ x 2) (sub1 times)))))

;; This image is a modified version of the example found here:
;; https://docs.racket-lang.org/racket_turtle/racket_turtle_examples_with_recursion.html
(define spiral-image
  (list (change-pen-size 1)         ;; I made this smaller.
        (change-bg-color "black")   ;; Background color is black.
        (change-color COLORS1)      ;; I changed the colors around.
        (spiral 911 11 1512)))      ;; I tweaked this so it looks like a star.
;(draw spiral-image)

;; This image is just a bunch of random changes to see what pops up.
;; It kind of does a octogon type shape, with different colors on each section.
(define spiral-image2
  (list (change-pen-size 3)         ;; I made this larger so the lines are bigger.
        (change-bg-color "black")   ;; Background still black.
        (change-color COLORS2)      ;; I added tons of colors
        (spiral 50 11 102)))        ;; Made it into an polygon looking shape.

;; It seems like the last number controls the depth it recurses.
;; The first two numbers seem to adjust how it draws the image.
;; The first number adjusts how much it spirals.
;; The middle number seems to center the image.
;(draw spiral-image2)

;; Another image to mess around with.
(define spiral-image3
  (list (change-pen-size 7)         ;; I made this larger so the lines are bigger.
        (change-bg-color "white")   ;; Background white instead.
        (change-color COLORS3)      ;; I added tons of colors
        (spiral 100 0 1022)))       ;; Tweaked this so it looks like a spiral.

;; Third image to print.
;(draw spiral-image3)

;; Let's modify the spiral function now.
(define (spiral2 a x times)
  (if (< times 0)
      empty
      ;; This part is tweaked to do some random stuff.
      (append (list (turn-right x) (forward x) )
              (spiral a (+ x 1) (sub1 times)))))

;; This image should look like a star as well.
(define spiral-image4
  (list (change-pen-size 2)         ;; Make this smaller.
        (change-bg-color "white")   ;; Background white as well.
        (change-color COLORS4)      ;; I added tons of colors
        (spiral2 500 11 200)))      ;; Tweaked it so its like a star.

;; Fourth image to print.
(draw spiral-image4)
