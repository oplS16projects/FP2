## My Library: (plot)
My name: Ryan Cauble

The second library I selected was the plot library. This library offers lots of really cool 2D and 3D graphing functions. 
I will show as many graphs as I can, but keep in mind some of these requrie time for the program to produce and its slow.

I am going to start by showing what I can do with a 3D graph of a Sphere:

![sphere1](https://cloud.githubusercontent.com/assets/17748575/13971541/686c5424-f067-11e5-90dd-cd6e1f67e90b.png)


I just made a minor change and produced a shap similar to the nose of a plane. To do this I inserted x as a variable 
instead of the square root of x.
The really cool thing is you can click and drag and rotate the image.

```
(plot3d (isosurface3d
           (λ (x y z) (sqrt (+ x (sqr y) (sqr z)))) 1
           -1 1 -1 1 -1 1)
          #:altitude 25)
```          

![plane_nose](https://cloud.githubusercontent.com/assets/17748575/13971705/c3baf460-f068-11e5-8d17-2a4d9b5336b7.png)

Then the same image rotated after I clicked and draged it around. 

![plane_nose_rotated](https://cloud.githubusercontent.com/assets/17748575/13971758/3ed95d1c-f069-11e5-8855-d794538be413.png)


The next thing I will show you is the 3D histogram graph. This can be very useful in displaying data on a webpage or something.

```
(define data '(#(a a (1 1 1)) #(a b (1.5 3)) #(b b ()) #(b a (1/2)))) ;; data 
 (plot3d (stacked-histogram3d data #:labels '("Red" #f "Blue")        ;; labels 
                                   #:alphas '(2/3 1 2/3)))            ;; makes some layers transparent.
```

![histo_graph1](https://cloud.githubusercontent.com/assets/17748575/13971873/1f14abe8-f06a-11e5-9075-93716f6b36ee.png)



Below is code similar to above but changed around to show customizations. As you can see many ways to display your 
data depending on your needs.

```
 (define data '(#(a a (1 1 1 1 1)) #(a b (1.5 3 1 .5 .5 .5))))
 (plot3d (stacked-histogram3d data #:labels '("Red" "Green" "Blue" "Yellow" "Teal" "Purple")
                                   #:alphas '(2/3 1 2/3)))

 (define data2 '(#(a a (1 1 1 1 1)) ))
 (plot3d (stacked-histogram3d data2 #:labels '("Red" "Green" "Blue" "Yellow" "Teal" "Purple")
                                   #:alphas '(2/3 1 2/3)))
```

![histo_graph2](https://cloud.githubusercontent.com/assets/17748575/13971976/f89e0c38-f06a-11e5-9212-26352885fe55.png)

If I have more time I will come back to this and think about applying some advanced equations to 
this and see what kind of graphs I could get. I hope you enjoyed seeing what can be done with plot
in racket. 

Thank you for stopping in!!!

