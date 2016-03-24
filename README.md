My name: Jeremy Daigneau

For this exploration, I used the plot-gui-lib. This library provides procedures that can produce a large array of different data visualization models. These include simple two dimensional line graphs to more complex three dimensional sphere visualizations. The resulting models are interactable and can be zoomed in and out or rotated if the model is three dimensional. I first used the basic "plot" procedure. This takes a function to be plotted and the boundaries to set. It also takes a label to be used in the legend. The second procedure is "plot3d". This takes the function to be plotted and boundaries as well. Next, I use this procedure with the polar3d procedure to create a 3d sphere plot. This has a color, altitude, and line type settings. Next, I use "plot" with a list of axes and graphs them all on the same plane. This has the same customizeable attributes as the last one. Finally, I used plot3d and polar3d again with boundaries between -1 and 1. This created a sphere with different holes. The library is really interesting to use and has large collection of different visualization tool.

```
(require plot)

(plot (function sin (- pi) pi #:label "y = sin(x)")) ;Plots a two dimensional line graph. Sets -pi and pi as the boundaries

(plot3d (surface3d (λ (x y) (* (sin x) (sin y))) ;plots a three dimensional graph with use of the surface 3d procedure. -pi and pi are the boundaries horizontally and vertically
                   (- pi) pi (- pi) pi))

(plot3d (polar3d (λ (θ ρ) 1) #:color 5 #:line-style 'transparent) ;plots a three dimensional sphere with a color, line style, and altitude attributes.
        #:altitude 50)

(plot (list (axes) ;plots multiple two dimensional line graphs on a single coordinate plane.
            (function sqr -3 3)
            (function (λ (x) x) #:color 1 #:style 'dot)
            (inverse sqr -2 2 #:color 5)))

(plot3d (polar3d (λ (θ ρ) 1) #:color 9 #:line-style 'transparent) ;Another sphere plot. The bounds are between -1 and 1 which cut off the axial poles, creating a sphere with holes of different sizes.
          #:x-min -0.3 #:x-max 0.9
          #:y-min -0.2 #:y-max 0.8
          #:z-min -0.6 #:z-max 0.8
          #:altitude 40)
```
![alt tag](https://github.com/jdaigneau/FP2/blob/master/Screen%20Shot%202016-03-23%20at%2011.00.25%20PM.png)
![alt tag](https://github.com/jdaigneau/FP2/blob/master/Screen%20Shot%202016-03-23%20at%2011.00.54%20PM.png)
![alt tag](https://github.com/jdaigneau/FP2/blob/master/Screen%20Shot%202016-03-23%20at%2011.01.01%20PM.png)
![alt tag](https://github.com/jdaigneau/FP2/blob/master/Screen%20Shot%202016-03-23%20at%2011.01.08%20PM.png)
![alt tag](https://github.com/jdaigneau/FP2/blob/master/Screen%20Shot%202016-03-23%20at%2011.01.20%20PM.png)
