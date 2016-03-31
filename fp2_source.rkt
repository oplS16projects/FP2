#lang racket
(require pict3d pict3d/universe)
(current-material (material #:ambient 0.1 #:diffuse 0.5 #:specular 0.01 #:roughness 0.2))

(define lights
  (combine (light (pos 0 1 2) (emitted "Thistle"))
           (light (pos 0 -1 -2) (emitted "PowderBlue"))))
(define (camera n)
  (basis 'camera (point-at (pos 1 1 0) origin)))

(define myCube (rotate-x (cube origin 1/2) -2))
(define floor (rectangle origin (dir 10 10 5) #:inside? #t))

(define (on-draw s n t)
  (combine (rotate-y myCube (/ t 20)) lights (camera (/ t 40)) floor))

(big-bang3d 0 #:on-draw on-draw)