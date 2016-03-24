#lang racket

(require plot)
(require (only-in plot/utils 3d-polar->3d-cartesian))

(parameterize ([plot-width    150]
                 [plot-height   150]
                 [plot-x-label  #f]
                 [plot-y-label  #f])
    (define xs (build-list 20 (λ _ (random))))
    (define ys (build-list 20 (λ _ (random))))
    (list (plot (points (map vector xs ys)))
          (plot (points (map vector xs ys)
                        #:x-min 0 #:x-max 1
                        #:y-min 0 #:y-max 1))))

(plot (function sqr -2 2))

(plot3d (parametric3d (λ (t) (3d-polar->3d-cartesian (* t 80) t 2))
                        (- pi) pi #:samples 3000 #:alpha 0.5)
          #:altitude 25)

(plot3d (discrete-histogram3d '(#(a a 1) #(a b 2) #(b b 3))
                                #:label "Missing (b,a)"
                                #:color 2 #:line-color 4))