#lang racket


;;must run raco pkg install simple-qr to install package
(require simple-qr)

;QR code for this repo
(qr-code "https://github.com/jwerardi/FP2" "fp2Git.png")

;procedure which will create a user requested QR code
;example usage: (qrGenerator "www.google.com" "Google)
(define (qrGenerator urlstring qrcodename)
  (qr-code urlstring (string-append qrcodename ".png")))
