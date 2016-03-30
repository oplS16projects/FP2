
## My Library: Racket Turtle
My name: Ian Roberts 
Write what you did!
Remember that this report must include:

First I started by playing around with the basic functions, the idea of turtle can be generalized as a pointer 
that has a move x forward and a turn x degrees
There are of course more features than that but its the basic concept
I began by making movements to write out the letters OPL

to write the 'O' I wrote a primitive proc to that takes 2 args for run and angle to turn
This could be optimized by using the mirror feature as also noted it will not properly function
with all angles

```
    (define (circ run ang numdegrees );will work with most angles


          (define (helper run ang )
      (list

       (forward run)
            (turn-left ang)))

      
      (repeat (/ numdegrees ang) (helper run ang)))



```




for the 'P' i used the mirror function and it looks like this
```

(define upperP 

(list 

(mirror-x-on) 
       (circ  1 3 110)
(mirror-x-off)
(turn-left 70)
(forward 75)
       ))

```

The L was pretty straight forward I started the draw-custom procedure which allowed me to specify the window size
this proc mainly consisted of toggling settling like pen-up, pen-down, change-color, calling procs eg upperP
and stamper, which allowed for each movement instead of drawing a line would allow me to draw a shape/pattern


```
(stamper-on circshapes) n")))

(if (<= size 0)
        empty
        (cons (pulled-regular-polygon size 4 2 52 "solid" (make-color (random 255)
                                                      (random 255)
                                                      (random 255))   )
      
    (polygons (sub1 size)))))


  (define (fakemoves moves)
  (define helper 
   
      (list (forward .01)
            (turn-left 180)))
               (repeat moves helper )) 
```

The above is the pattern on the second  'O'  in the output image


the bottom left polygon was implemented with a fake moves proc, where it would move .01 forward and 180 I also had it recursively draw on top of itself while changing colors randomly this resulted in the design. Below is the code used  
```

 (define (polygons size)
     
    (if (<= size 0)
        empty
        (cons (pulled-regular-polygon size 4 2 52 "solid" (make-color (random 255)
                                                      (random 255)
                                                      (random 255))   )
    (polygons (sub1 size)))))



```

I then drew a clover using mirror and pulled-regular-polygon.
```
(stamper-on (list (pulled-regular-polygon 100 4 5 30 "solid" "black")
                  (pulled-regular-polygon 98 4 5 30 "solid" "green")))
(go-to 900 300)
(pen-down)
(fakemoves 1 )
(change-color "black")
(stamper-off)

;below draws the 'x' on the clover
(mirror-x-on)
(turn-right 225 )
(pen-up)
(go-to 812 388)
(pen-down)
(forward 250)
(mirror-x-off)
 ```

  ![alt tag](https://raw.githubusercontent.com/ia-n/FP2/master/f2pout.png)
