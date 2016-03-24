#lang racket
(require 2htdp/image
         (planet dsheap/color-utils))

;; these graphics tools were downloaded PLaneT and were used in conjuntion
;; with the standard image library to perform standard color encryption on
;; an image. The set of tutorials I found are at the following URL:
;; http://www.cdf.toronto.edu/~heap/Racket/encryption.html

; mult-mod : Number Number Number -> Number
; Remainder of xy divided by z
(define (mult-mod x y z)
  (remainder (* x y) z))

; obscure-intensity: Number Number -> Number
; One less than the remainder of [n+1]
; times c divided by 257
(define (obscure-intensity n c)
  (sub1 (mult-mod (add1 n) c 257)))

; image from: https://www.pinterest.com/pin/12173861463144574
(define beach insert-pic-here) ; <- this is where beach.png is pasted, file is too large for GitHub when included


(define scrambled-red
  (for/image ([old ])
    (red+color (obscure-intensity (color-red old) 31) old)))

(define scrambled-blue
  (for/image ([old scrambled-red])
    (blue+color (obscure-intensity (color-blue old) 31) old)))

(define scrambled-green
  (for/image ([old scrambled-blue])
    (green+color (obscure-intensity (color-green old) 31) old)))

; calling these in sequence will fully encrypt the image

(define unscrambled-blue
  (for/image ([old scrambled-green])
    (blue+color (obscure-intensity (color-blue old) 199) old)))

(define unscrambled-red
  (for/image ([old unscrambled-blue])
    (red+color (obscure-intensity (color-red old) 199) old)))

(define unscrambled-green
  (for/image ([old unscrambled-red])
    (green+color (obscure-intensity (color-green old) 199) old)))

; calling these in sequence will fully decrypt the image
    

