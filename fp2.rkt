#lang racket


(require simple-qr)

; simple qr experiment make some qr codes!
;
; files are created in the local directory. 
; if you would like to move the file somewhere else
; change the second argument of the procedure
; to the desired path. 
;
(qr-code "Hello World!" "hello.png") 
(qr-code "http://www.cs.uml.edu" "uml.png")
(qr-code "http://www.espn.go.com" "espn.png" #:module_width 10)
(qr-code "http://www.google.com" "google.png" #:module_width 7)
(qr-code "https://github.com/oplS16projects" "github.png" #:module_width 9)