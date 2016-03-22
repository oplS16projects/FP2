## My Library: Racket Turtle
My name: Jason Downing

## What I did
I used [Racket Turtle](https://docs.racket-lang.org/racket_turtle/index.html),
a racket library for drawing shapes on the screen in different colors.
I created four images using recursion, based on the example code listed on the
Racket documentation page
([found here](https://docs.racket-lang.org/racket_turtle/racket_turtle_examples_with_recursion.html)).
The images look like stars, squares and spirals, as the main function listed on the Turtles
documentation page creates spiral shapes.
This function basically draws forward and to the right, and varying the amount
that the line moves and the amount of recursion I was able to create different images.
I also found some different colors to use that were listed on a
[Racket color database page](https://docs.racket-lang.org/draw/color-database___.html),
which makes the images look different depending on which colors I used and which
background color I decided to use.

##Example images
These are the four images that my racket file
[turtles.rkt](https://github.com/JasonD94/FP2/blob/master/turtles.rkt) creates.

![Image 1](https://github.com/JasonD94/FP2/blob/master/image1.png?raw=true)

![Image 2](https://github.com/JasonD94/FP2/blob/master/image2.png?raw=true)

![Image 3](https://github.com/JasonD94/FP2/blob/master/image3.png?raw=true)

![Image 4](https://github.com/JasonD94/FP2/blob/master/image4.png?raw=true)

## Example code
This is the main spiral code. It takes three arguments, **a** (the angle of the turn-right),
**x** (how far the line gets moved forward), and **times** (how many times the function recurses).

```
(define (spiral a x times)
  (if (< times 0)
      empty
      (append (list (forward x) (turn-right a))
              (spiral a (+ x 2) (sub1 times)))))
```

This is an example for printing out an image. It prints out the "image 1", an image
with circles in the middle and star like shape on the outside.

**change-pen-size** changes how large the lines are - in this case I made them smaller.
**change-bg-color** changes the background color - I made it black for this image.
**change-color** determines which color list is used. I made several of these to vary
the colors.
**spiral** just calls the spiral function, which the parameters 911, 11 and 1512.
911 is the angle of the turn, 11 is how far the line moves and 1512 means it will
recurse 1512 times.

```
(define spiral-image
  (list (change-pen-size 1)
        (change-bg-color "black")
        (change-color COLORS1)
        (spiral 911 11 1512)))
(draw spiral-image)
```
