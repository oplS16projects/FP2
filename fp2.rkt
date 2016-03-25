#lang racket
(require plot)
(plot-new-window? #t)

(plot (function sin (- pi) pi #:label "y = sin(x)"))

(parameterize ([plot-title "My graph"]
               [plot-x-label "Time Spent looking at it (s)"]
               [plot-y-label "Enjoyment level"])
  (plot (function exp 0 5)))

(plot (list (axes)
            (function log -1 5 #:color "green" #:label "y = ln(x)")
            (function sqr -5 5 #:color "blue"  #:label "y = x^2")))

(plot3d (surface3d (λ (x y) (* (cosh x) (sinh y)))
                     (- pi) pi (- pi) pi #:color "orange" #:style 'bdiagonal-hatch))
              
                                    
               