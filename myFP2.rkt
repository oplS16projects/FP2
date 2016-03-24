#lang racket
;; Name: Rotana Nou
;; FP2
;; Library: net/url
;; Date: 03/23/16
(require net/url)
;; HTTP request
;; To do this we require net/url
;; First, creates a function to retrieve a link or url
;; After that we will get a request of HTTP
;; Then it will response as string
;; Excetpion handling: to handle in the case of if the url is
;; fail to retrieve then it would just close input port.
;; begin0 will return the resource and close the resource. 
(define (retrieve link)
  (define urlin (get-pure-port link))
  (with-handlers ([exn:fail? (lambda (x)
                               (displayln "Cannot retrieve the URL")
                               (close-input-port urlin)
                               (raise x))])
    (begin0
      (port->string urlin)
      (printf "Fatch the URL")
      (close-input-port urlin))))