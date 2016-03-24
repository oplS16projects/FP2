#lang racket
(require cpuinfo)
(define my-cpu (get-cpuinfo))
(define (cpuinfo-corecount cpu)
  (cdr
   (car
    (cdr
     (cdr
      (cdr
       (cdr
        (cdr
         (cdr
          (cdr
           (cdr (cdr (cdr (cdr (cdr
            (car cpu))))))))))))))))
(define (cpuinfo-MHz cpu)
  (cdr
   (car
    (cdr
     (cdr
      (cdr
       (cdr
        (cdr
         (cdr
          (cdr
           (car cpu)))))))))))