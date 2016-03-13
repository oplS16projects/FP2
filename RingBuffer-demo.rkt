#lang racket
(require data/ring-buffer)

; Create empty ring buffer of length 5
(define rb (empty-ring-buffer 5))

; Push value 10, 11 and the string "text" onto ring buffer (modifies state)
(ring-buffer-push! rb 10)
(ring-buffer-push! rb 11)
(ring-buffer-push! rb "text")

; Returns the length of the ring buffer
(begin
  (display "Length of Buffer: ")
  (ring-buffer-length rb)
  (display "\n"))

; Print the contents of the buffer
(define (printBuffer rb)
  (define (iter count)
    (if (= count (ring-buffer-length rb))
        (void)
        (begin
          (display (ring-buffer-ref rb count))
          (display "\n")
          (iter (+ 1 count)))))
  (iter 0))

(printBuffer rb)