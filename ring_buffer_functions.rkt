#lang racket

(require data/ring-buffer)

(define rb (empty-ring-buffer 8))

(ring-buffer-push! rb 3)
(ring-buffer-push! rb 7)
(ring-buffer-push! rb 5)
(ring-buffer-push! rb 1)
(for/list ([v rb]) v)

(ring-buffer-push! rb 'a)
(ring-buffer-push! rb 'b)
(ring-buffer-push! rb 'c)
(ring-buffer-length rb)
(for/list ([v rb]) v)

(ring-buffer-push! rb 'd)
(ring-buffer-set! rb 2 'e)
(ring-buffer-ref rb 2)
(for/list ([v rb]) v)