# Final Project Assignment 2: Exploration (FP2)

## My Library: SGL or OpenGL
My name:Behailu Tekletsadik

So I have some pretty good experience with OpenGL in C with respect to the SDL library and Java with respect to LWJGL library.
I remembered that I really liked the pain of OpenGL so I figured why not try it out in Racket and see what I can do with it.
Might be a good idea to figure it out if I decide to do complex resource intensive tasks for whatever I decide to do for my prjoect.

It ended up being not as esoteric to manage as I expected. When it comes to OpenGL there are a ton of functions and procedures to build everything up. The documentation for SGL had an excellent start for figuring out OpenGL.

I did it stepwise:

```
(define win (new frame% (label "OPEN GL") (min-width 500) (min-height 500)))
```
So this initializes a window frame of a set width and height. 

The next part of the code is the canvas. The canvas sets the functions to be called in GL. From here, it updates and renders based on what you give it which can be anything.
```
(define my-canvas%                            ; I have no idea what these three lines 
  (class* canvas% ()                          ; are doing from a racket perspective.
    (inherit with-gl-context swap-gl-buffers) ; Good thing the template is pretty helpful.

   (define/override (on-paint) ;general body of openGL contexts has inner function calls for drawing.
      (with-gl-context
        (lambda ()
          (update)
          (swap-gl-buffers)
        )
      )
    )

    (define/override (on-size width height) ;nice for resizing
      (with-gl-context
        (lambda ()
          (resize width height)
        )
      )
    )

    (super-instantiate () (style '(gl))) ;another racket mystery. 
  )
)
```

And here's just the update method. It's fairly straightforward once you get more experience with it. Got to think of everything that needs to be refreshed or deallocated from memory otherwise you get artifacts and/or growing resource usage.
```
(define (update)
  (glClearColor 0.0 0.0 0.0 0.0) ;clears scene for every refresh
  (glClear GL_COLOR_BUFFER_BIT) ;
  (glColor3d 1.0 1.0 1.0) ;sets a back color. OpenGL draws bottom up. First thing drawn is in the back
                          ;unless you do some glblending wizardry
  (glMatrixMode GL_PROJECTION)
  (glLoadIdentity)
  (glOrtho 0.0 1.0 0.0 1.0 -1.0 1.0) ;orthographic projection. Simply just 2D rendering focus
  (glMatrixMode GL_MODELVIEW)
  (glLoadIdentity)
  (glBegin GL_QUADS) ;drawing a rectangle. 
  (glVertex3d 0.25 0.25 0.0);notice the values? 
  (glVertex3d 0.75 0.25 0.0);they're in context to the window size
  (glVertex3d 0.75 0.75 0.0);problem with opengl is that it has no idea of a 'camera' or viewing distance
  (glVertex3d 0.25 0.75 0.0);unless you specify it. If you change window size, the rectangle
  (glEnd))                  ;will stay the same size relative to the window its in.
                            ;OpenGL wrappers all account for this. I'm not building one so I'll
                            ;leave it as is.
```

The window with the rectangle being drawn.
![Image](https://raw.githubusercontent.com/OhBehive/FP2/master/SimpleBox.png)

Resize function. Basically allows fullscreening. It's a native ability of GL enabled windows.

```
(define (resize w h)
  (glViewport 0 0 w h)
  #t
  )
```
Resize in action.
![Image](https://raw.githubusercontent.com/OhBehive/FP2/master/FullscreenBox.png)



Thanks for reading,
Hope you enjoyed!
