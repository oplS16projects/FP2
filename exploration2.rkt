#lang racket

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
