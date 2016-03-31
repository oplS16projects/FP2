# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

## My Library: Pict3d
My name: Rob Russell

### 3D stuff is cool
So I downloaded the Pict3d package and started reading into the documentation.  I wanted to use the Pict3d/Universe package, as I used the 2D universe package for FP1, and wanted to explore how things were different in 3D.  There's a lot less documentation on the 3D version of Universe though, so this exploration made me determine that I'll definitely be using 2d for the final project.

#### Here are some highlights:
* I started with just `Pict3d`, and that was cool because it already has controls setup like an FPS game
* I moved on to check out `Pict3d/universe` and started reading the (one page of) documentation
* I got the basic example of a spinning cube to work, with their cool materials and flashly lights
* The example gives the lights and camera as one combined scene object, and I didn't like that as I wanted to alter their positions over time, so I separated those out and combined them in the last part.
```scheme
(define lights
  (combine (light (pos 0 1 2) (emitted "Thistle"))
           (light (pos 0 -1 -2) (emitted "PowderBlue"))))
(define camera
  (basis 'camera (point-at (pos 1 1 0) origin)))

(define myCube (rotate-x (cube origin 1/2) -2))
(define floor (rectangle origin (dir 10 10 5) #:inside? #t))

(define (on-draw s n t)
  (combine (rotate-y myCube (/ t 20)) lights (camera (/ t 40)) floor))
```
* I realized how they were making the cube spin, by passing `t` as the time since `big-bang3d` was called in milliseconds.
* I tried using the same principle to get the camera to zoom out slowly
```scheme
(define (camera n)
  (basis 'camera (point-at (pos (/ n 2) (/ n 2) 0) origin)))
```
* Couldn't get the camera to move, got an error saying I had to use a non-zero position for the second argument to `point-at`
* made the cube spin in a couple different directions before giving up and deciding on 2d



* at least one diagram or figure showing your work


