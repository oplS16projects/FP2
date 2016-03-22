# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

Exactly like Exploration 1: https://github.com/oplS16projects/FP1. Do a different library. Explore something different, either related or completely not. Try something else out. This is also an individual assignment. 
Be sure to do your write up in the FP2 repository, and pull request against it to turn in.

##DELETE THIS AND EVERYTHING ABOVE IT BEFORE SUBMITTING

## My Library: (plot)
My name: Ryan Cauble

The second library I selected was the plot library. This library offers lots of really cool 2D and 3D graphing functions. 
I will show as many graphs as I can, but keep in mind some of these requrie time for the program to produce and its slow.

I am going to start by showing what I can do with a 3D graph of a Sphere:

![sphere1](https://cloud.githubusercontent.com/assets/17748575/13971541/686c5424-f067-11e5-90dd-cd6e1f67e90b.png)


I just made a minor change and produced a shap similar to the nose of a plane.
The really cool thing is you can click and drag and rotate the image.

``
(plot3d (isosurface3d
           (λ (x y z) (sqrt (+ x (sqr y) (sqr z)))) 1
           -1 1 -1 1 -1 1)
          #:altitude 25)
``          

