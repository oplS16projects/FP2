#lang racket
(require plot)
(plot (function sqr -2 2))

(plot (contours (λ (x y) (- (sqr x) (sqr y)))
                  -4 2 -4 2 #:label "z"))

(plot (list (function sqr 0 30)
              (point-label (vector 22 22))
              (point-label (vector 22 240))
              (point-label (vector 22 420))))
