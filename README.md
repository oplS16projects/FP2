# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

## My Library: 2htdp/image
My name: Laura Lucaciu


I have played around with this library. 
The original code was displaying a triangle.

This block of code is installing the library 2htdp/image, and Draws the Sierpinski triangle. The triangle is created by multiple triangles, made of different shape and color.
First draw the cropped red solid triangle into the bitmap and then uses the bitmap to draw that image afterwards.
It is displayed a list of mini triangles placed in a horizontal and vertical, and is drawn multiple times.
The condition to display the list of the triangles is that n not to be zero.
```
#lang racket  ; A picture
(require 2htdp/image)

(let sierpinski ([n 6])
   (cond
    [(zero? n) list(triangle 4 'solid 'red)]
          [else (define t (sierpinski (- n 1)))
          (freeze (beside t (above t t)))]))
```

This block represents a line of multiple blue triangles with the size changed. 
This time is created only horizontal.

```
(let sierpinski ([n 4])
  (cond
    [(zero? n) list(triangle 8 'solid 'blue)]
        [else (define t (sierpinski (- n 1)))
          (freeze (beside t (beside t t)))]))
          
```

This block displays a green solid triangle made of circles rotated.
```
(let sierpinski ([n 2])
  (cond
    [(zero? n) list(circle 10 'solid 'green)]
        [else (define t (sierpinski (- n 1)))
          (freeze (beside t (above t t)))]))
```

This block of code is displaying a solid magenta triangle made of mini triangles.
```
(let sierpinski ([n 3])
  (cond
    [(zero? n) list(triangle 20 'solid 'magenta)]
    
    [else (define t (sierpinski (- n 1)))
          (freeze (above t (beside t t)))]))
```
Original
![alt tag](https://raw.githubusercontent.com/LauraLucaciu/FP2/master/OriginalTriangle.jpg)

Modified
![alt tag](https://raw.githubusercontent.com/LauraLucaciu/FP2/master/Modified1.jpg)
