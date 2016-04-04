#lang racket

;;(require pict)
(require pict3d)

;; identical to the code in the "Quick Start" section of the documentation,
;; except using cube instead of sphere (sphere doesn't seem to work on my computer)
(define (quick-test)
  (list
   (cube origin 1/2)
   (combine (cube origin 1/2) (light (pos 0 1 1)))
   (combine (cube origin 1/2)
            (basis 'camera (point-at (pos 0 0 2) origin)))))

;; running this before running the previous function doesn't work on my computer;
;; something seems to be wrong with how it converts to bitmaps if it hasn't
;; displayed anything yet
(define (bitmap-test)
  (list
   (pict3d->bitmap (cube origin 1/2))
   (pict3d->bitmap
    (combine (cube origin 1/2)
             (light (pos 0 1 1))))))

;; for some reason running a transformation on the sphere causes it to display correctly.
;; I can take advantage of the existence of an identity transformation to get the sphere
;; to show up on my computer
(define (sphere-test)
  (list
   (adaptive-deform (sphere origin 1/2) identity-linear)
   (combine (adaptive-deform (sphere origin 1/2) identity-linear)
            (light (pos 0 1 1)))
   (combine (adaptive-deform (sphere origin 1/2) identity-linear)
            (basis 'camera (point-at (pos 0 0 2) origin)))))

;; cylinders, cones, and pipes
(define (test-circle-based)
  (list
   ;; displays a cylinder with a pac-man shaped ellipse as its base
   (combine (cylinder origin (dir 1/4 1/2 3/4) #:arc (arc 135 45))
            (with-color (rgba "red" 0.5)
                        (rectangle origin (dir 1/4 1/2 3/4))))
   ;; displays a cone with the same-shaped base
   (combine (cone origin (dir 1/4 1/2 3/4) #:arc (arc 135 45))
            (with-color (rgba "red" 0.5)
                        (rectangle origin (dir 1/4 1/2 3/4))))
   ;; pipe with variable thickness
   ;; notice that the radius > 1 results in the base exceeding the bounds
   ;; of the rectangle
   (combine (pipe origin (dir 1/4 1/2 3/4)
                  #:arc (arc 135 45)
                  #:top-radii (interval 1 1)
                  #:bottom-radii (interval 1/2 3/2))
            (with-color (rgba "red" 0.5)
                        (rectangle origin (dir 1/4 1/2 3/4))))))

;; simulating an object that emits light
(define (test-light)
  (map pict3d->bitmap
       (list
        ;; An emissive cylinder. Note that this does not effect the lighting of
        ;; the surrounding scene.
        (combine (rectangle (pos 0 0 -1) (dir 2 2 1))
                 (transform
                  (combine (with-emitted (emitted "plum" 2)
                                         (cylinder origin 1)))
                  (affine-compose
                   (rotate-z 30)
                   (move-z 1/4)
                   (rotate-x 90)
                   (scale (dir 1/8 1/8 1)))))
        ;; The same cylinder, but with no emissive property. A light source in
        ;; the same location provides lighting to the surrounding scene but
        ;; does not light up the cylinder.
        (combine (rectangle (pos 0 0 -1) (dir 2 2 1))
                 (transform
                  (combine (cylinder origin 1)
                           (light origin (emitted "plum" 5)))
                  (affine-compose
                   (rotate-z 30)
                   (move-z 1/4)
                   (rotate-x 90)
                   (scale (dir 1/8 1/8 1)))))
        ;; Putting the two together creates the effect of the cylinder being
        ;; lit up.
        (combine (rectangle (pos 0 0 -1) (dir 2 2 1))
                 (transform
                  (combine (with-emitted (emitted "plum" 2)
                                         (cylinder origin 1))
                           (light origin (emitted "plum" 5)))
                  (affine-compose
                   (rotate-z 30)
                   (move-z 1/4)
                   (rotate-x 90)
                   (scale (dir 1/8 1/8 1))))))))

;; same as above, but the object is bent
;; note that the lighting is done not with a single distorted light source,
;; as before, but rather with a collection of smaller lights
(define (test-deformed-light)
  (map pict3d->bitmap
       (list
        ;; Emissive shape with no effect on surrounding scene
        (combine (rectangle (pos 0 0 -1) (dir 2 2 1))
                 (deform
                   (with-emitted (emitted "plum" 2)
                                 (tessellate
                                  (scale (cylinder origin 1) (dir 1/8 1/8 1))))
                   (smooth-compose
                    (rotate-z 30)
                    (move-z 1/4)
                    (rotate-x 90)
                    (bend 135 (interval -1 1)))))
        ;; Non-emissive shape with extra lighting
        (combine (rectangle (pos 0 0 -1) (dir 2 2 1))
                 (deform
                   (combine (tessellate
                             (scale (cylinder origin 1) (dir 1/8 1/8 1)))
                            (for/list ([z  (in-range 0 17)])
                              (light (pos 0 0 (- (* 2 (/ z 16)) 1))
                                     (emitted "plum" 1/150))))
                   (smooth-compose
                    (rotate-z 30)
                    (move-z 1/4)
                    (rotate-x 90)
                    (bend 135 (interval -1 1)))))
        ;; Putting the two together
        (combine (rectangle (pos 0 0 -1) (dir 2 2 1))
                 (deform
                   (combine (with-emitted (emitted "plum" 2)
                                          (tessellate
                                           (scale (cylinder origin 1) (dir 1/8 1/8 1))))
                            (for/list ([z  (in-range 0 17)])
                              (light (pos 0 0 (- (* 2 (/ z 16)) 1))
                                     (emitted "plum" 1/150))))
                   (smooth-compose
                    (rotate-z 30)
                    (move-z 1/4)
                    (rotate-x 90)
                    (bend 135 (interval -1 1))))))))

;; gives a better viewing angle than default
(current-pict3d-auto-camera (λ (_) (print _) (point-at (pos 1 1 1) origin)))
