#lang racket  ; A picture
(require 2htdp/image)

(let sierpinski ([n 6])
   (cond
    [(zero? n) list(triangle 4 'solid 'red)]
          [else (define t (sierpinski (- n 1)))
          (freeze (beside t (above t t)))]))

(let sierpinski ([n 4])
  (cond
    [(zero? n) list(triangle 8 'solid 'blue)]
        [else (define t (sierpinski (- n 1)))
          (freeze (beside t (beside t t)))]))

(let sierpinski ([n 2])
  (cond
    [(zero? n) list(circle 10 'solid 'green)]
        [else (define t (sierpinski (- n 1)))
          (freeze (beside t (above t t)))]))

(let sierpinski ([n 3])
  (cond
    [(zero? n) list(triangle 20 'solid 'magenta)]
    
    [else (define t (sierpinski (- n 1)))
          (freeze (above t (beside t t)))]))

(let sierpinski ([n 3])
  (cond
    [(zero? n) list(triangle 5 'solid 'black)]
    [else (define t (sierpinski (- n 1)))
          (freeze (above t t t t (beside t t)))]))