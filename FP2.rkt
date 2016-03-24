#lang racket
(require simple-qr)

;; #:module_width To control size of the image

;; Standard size QR code
(qr-code "https://github.com/oplS16projects/FP2/pulls/aboutkrin"     ;; Your data
         "FP2-standard.png")                                         ;; Output file name

;; Small size QR code
(qr-code "https://github.com/oplS16projects/FP2/pulls/aboutkrin"     ;; Your data
         "FP2-small.png" #:module_width 2)                           ;; Output file name

;; Large size QR code
(qr-code "https://github.com/oplS16projects/FP2/pulls/aboutkrin"     ;; Your data
         "FP2-large.png" #:module_width 10)                          ;; Output file name

