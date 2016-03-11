## My Library: turtles
My name: Jason Downing

## What I did
I used turtles, a racket library for drawing shapes on the screen in different colors.

##Example images

![Image 1](https://github.com/JasonD94/FP2/blob/master/image1.png?raw=true)

![Image 2](https://github.com/JasonD94/FP2/blob/master/image2.png?raw=true)

![Image 3](https://github.com/JasonD94/FP2/blob/master/image3.png?raw=true)

## Example code
```
;; Spiral code from the example page.
(define (spiral a x times)
  (if (< times 0)
      empty
      (append (list (forward x)(turn-right a))
              (spiral a (+ x 2)(sub1 times)))))


;; This image is a modified version of the example found here:
;; https://docs.racket-lang.org/racket_turtle/racket_turtle_examples_with_recursion.html
(define spiral-image
  (list (change-pen-size 1)         ;; I made this smaller.
        (change-bg-color "black")   ;; Background for the window is black.
        (change-color COLORS1)      ;; I changed the colors around.
        (spiral 911 11 1512)))      ;; Honestly I just tweaked this until it was cool.
(draw spiral-image)                 ;; Draw the image.
```
