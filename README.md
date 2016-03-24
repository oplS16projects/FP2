# My Name: Yusuf Yildiz
My Library: turtles

I created a cool circular image by creating a "draw-cool-thing" procedure.

The procedure works by calling another proc called draw-px which takes a pixel to move by and the angle to move at and does so accordingly.
```racket
(define (draw-px-dir px dir)
  (turn dir)
  (draw px))
```
![cool looking image thing]
(http://i.imgur.com/urCYsoZ.png?1)

This library was really cool to work with and test as it showed the recursive drawing capabilities of scheme/racket.
