#lang racket
(require racket/tcp)

(define my-port 1337)
(define my-host "localhost")
;;(define my-connection (tcp-connect my-host my-port))
(tcp-connect my-host my-port)