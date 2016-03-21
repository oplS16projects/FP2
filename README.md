## My Library: Racket Turtle
My name: Jason Downing

## What I did
I used [Racket Turtle](https://docs.racket-lang.org/racket_turtle/index.html),
a racket library for drawing shapes on the screen in different colors.
I created four images using recursion and modifiying the examples code listed on the
Racket documentation page ([found here](https://docs.racket-lang.org/racket_turtle/racket_turtle_examples_with_recursion.html)). The images vary from looking like stars
and spirals, as the main function listed on the Turtles documentation page creates spiral
shapes. I also found some different colors to use that were listed on a
[Racket color database page](https://docs.racket-lang.org/draw/color-database___.html).

##Example images

![Image 1](https://github.com/JasonD94/FP2/blob/master/image1.png?raw=true)

![Image 2](https://github.com/JasonD94/FP2/blob/master/image2.png?raw=true)

![Image 3](https://github.com/JasonD94/FP2/blob/master/image3.png?raw=true)

![Image 4](https://github.com/JasonD94/FP2/blob/master/image4.png?raw=true)

## Example code
This is the main spiral code. It takes three arguments, a (the angle of the turn-right),
x (how far the line gets moved forward), and times (how many times the function recurses).

```
(define (spiral a x times)
  (if (< times 0)
      empty
      (append (list (forward x) (turn-right a))
              (spiral a (+ x 2) (sub1 times)))))
```

This is an example code for printing out an image. It prints out the "image 1", a spiral
looking image with circles in the middle from all the recursion.

```
(define spiral-image
  (list (change-pen-size 1)         ;; I made this smaller.
        (change-bg-color "black")   ;; Background for the window is black.
        (change-color COLORS1)      ;; I changed the colors around.
        (spiral 911 11 1512)))      ;; Honestly I just tweaked this until it was cool.
(draw spiral-image)                 ;; Draw the image.
```
