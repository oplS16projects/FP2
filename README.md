# Final Project Assignment 2: Exploration (FP2)

## My Library: Ring Buffer
My name: Christian Everett

For the final project exploration 2 assignment I explored a racket library that implements a ring buffer. The demo code shows how to define a ring buffer in racket and push elements into the buffer. I've also implemented a function that iterates through the ring buffer and prints the contents.

```racket
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
```
###Output
```
Length of Buffer: 5

10
11
text
#f
#f
```
###Ring buffer
![Alt text](https://github.com/ChristianEverett/FP2/blob/master/README.PNG "title")
