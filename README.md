# Final Project Assignment 2: Exploration (FP2)

## My Library: SGL (OpenGL and Racket/GUI)

I wanted to further explore the capabilities of graphics in Racket, therefore I decided to explore the OpenGL package. Having no previous exposure to OpenGL I searched around for a starting point and found this "Hello World" file to use as a starting point.

```
(define (draw-opengl)
  (glClearColor 0.0 0.0 0.0 0.0)
  (glClear GL_COLOR_BUFFER_BIT)
  (glColor3d 1.0 1.0 1.0)

  (glMatrixMode GL_PROJECTION)
  (glLoadIdentity)
  (glOrtho 0.0 1.0 0.0 1.0 -1.0 1.0)
  (glMatrixMode GL_MODELVIEW)
  (glLoadIdentity)

  (glBegin GL_QUADS)
  (glVertex3d 0.25 0.25 0.0)
  (glVertex3d 0.75 0.25 0.0)
  (glVertex3d 0.75 0.75 0.0)
  (glVertex3d 0.25 0.75 0.0)
  (glEnd)
)
```
*Note: This tutorial can be found at: https://lists.racket-lang.org/users/archive/2010-October/042474.html*

The square being output to the screen gets formed by the code above, which calls glVertex3d inside of glBegin/glEnd to define each of the four corner's in the square. This produces the following output:

![Square Output](https://github.com/olearyevan/FP2/blob/master/square.png?raw=true)

Next, I wanted to extended the previous example by displaying a 3 dimensional cube on screen. I searched for another tutorial in Racket, but was unsuccessful. This lead me to a tutorial in C and all that was left to do was translate it into the scheme language, which was trival. In addition, this tutorial allowed the cube to be rotated by using the keys WASD, which I did not include in my code and I'm currently figuring out how to implement this function to make it interactive. I think the ability to manipulate images through keystokes could be useful for rotating objects, as was demonstrated in the C example code I found. Also, this could be combined with playing music to manipulate images while a song plays.

```

  (glRotatef 25.0 1.0 0.0 0.0)
  (glRotatef 25.0 0.0 1.0 0.0)

  ;;Multi-colored side - FRONT
  (glBegin GL_POLYGON)
  (glColor3f 1.0 0.0 0.0)
  (glVertex3f 0.5 -0.5 -0.5)
  (glColor3f 0.0 1.0 0.0)
  (glVertex3f 0.5 0.5 -0.5)
  (glColor3f 0.0 0.0 1.0)
  (glVertex3f -0.5 0.5 -0.5)
  (glColor3f 1.0 0.0 1.0)
  (glVertex3f -0.5 -0.5 -0.5)
  (glEnd)
```
*Note: This tutorial can be found at: http://www.wikihow.com/Make-a-Cube-in-OpenGL*

To make the cube a slightly different approach is taken, which uses glRotate to make the image more clear by displaying it at an angle. Then, glVertex is used inside of GL_POLYGON to create each side, which is a square, of the cube. This yields the following image:

![3-Dimensional Cube Output](https://github.com/olearyevan/FP2/blob/master/3d_cube.png?raw=true)
