

## My Library: 2htdp/universe
My name: Michael Antrobus


I met will my partner John Brown on Friday and we decided that we wanted to at least make our program an interactive program that would allow the user to communicate via mouse clicks/keyboard types. After googling around for a bit trying to find out how to make a program interactive most people used functions from the 2htdp/universe library so i decided to make it my second library to help out with the project. 2htdp/universe is a big library and pretty difficult to wrap my head around so i was only focusing on making a program interactive and skipped over worlds interacting with a server.

#Code

I created three 'Worlds' (a world is what the user interacts with, it's basically just a new window that the program pops up) the first one is not interactive which is me just trying to get used to the supporting 2htdp/image library it's an animation where a UFO is just traveling in a downwards direction. 

This is where all the magic happens:

```racket
(big-bang '(150 . 150)
          (to-draw ball-image)
          (on-key change)) 

```

The big-bang function is the function that creates our world, this is just a simple world that acts on key strokes. The list of numbers (150 . 150) is the current worldstate, the world state is the function keeping track of what the world looks like. The worldstate currently is '(150 . 150) this will place our ball image at that location in our world. to-draw is a function that is called whenever our world needs to be redrawn, anytime our ball moves. on-key is a function that will process our arrow keys and the change function changes the world based on what key is pressed.

Change:

```racket
(define (change w a-key) 
  (cond 
    [(key=? a-key "left")  (cons (sub1 (car w)) (cdr w))]
    [(key=? a-key "right") (cons (add1 (car w)) (cdr w))];
    [(key=? a-key "up")    (cons (car w) (sub1 (cdr w)))]
    [(key=? a-key "down")  (cons (car w) (add1 (cdr w)))]
    [else w])) 

```
This is the change function, it takes w which is the world state and a-key which is the key to process, both of these parameters are passed to it by the on-key function whenever it's called. Whenever a key is hit, unlike in C/C++ where the action is considered a Hex number, in 2htdp/universe (and i assume scheme aswell?) it's labeled as a string which is what is being compared by Key=? and the key passed to the function. We either subtract or add 1 to either the car w or cdr w depending if we affect the x or y coordinate of the ball. I'm still a bit uneasy about why (car w) affects the x-coordinate and (cdr w) affects the y-coordinate.

on-mouse:

```racket
(define (change2 w x-mouse y-mouse a-key)
  (cond 
    [(mouse=? a-key "button-down")  (cons (sub1 (car w)) (cdr w))]
    [(mouse=? a-key "drag")  (cons (add1 (car w)) (cdr w))]
    [else w])) 
                   

(big-bang '(150 . 150)
          (to-draw ball-image)
          (on-mouse change2))
```
Basically does the same thing as above but with mouse clicks and can only go left and right. This change takes two additional parameters being the x/y coordinate of the mouse.

#Output:

The output is the big-bang function returning the state of the world after everything (the position of the red ball and UFO).

```racket
52
'(106 . 76)
'(230 . 150)
> 
```

#Picture

It wouldn't let me screen shot my world, so i just found a picture of flappy bird cause that interactive.

![alt text](https://raw.githubusercontent.com/Aurelas/FP2/master/FP2Image.jpg)

#NOTE:

If you are running this program you must close the previous window to get the next window to appear.

