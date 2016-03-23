#lang racket
(require racket/tcp)

(define my-port 1337)
(define my-listener (tcp-listen my-port))
;;(tcp-accept my-listener)
(if (tcp-accept-evt my-listener) 1 0)