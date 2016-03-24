## My Library: racket/stream, racket/file
My name: Kenneth Sanders

I created a simple psuedorandom generator using racket streams to create a variable length list of ones and zeros.
Then, I iterated through the list and used the and from the bit to the lef and right to determine the new value of the current bit.
The new value of the list is then displayed in the repl.
I did this repeatedly, and returned the string of bits after the last iteration. This should create a psuedo-random number dependent upon the initial bit sequence and the number of iterations.
The final value also stored to the file test.txt so that a new random number may be generated using the old one as a seed. This allows a static random number to be generated on the system.

The code for the new seed from given seed and previous value (initially 0)
```racket
(define (newiter seed prev)
    (if (empty? (cdr seed) )
        (cons (if (equal? (car seed) 0) 1 0) '())
        (cons (if (equal? prev (cadr seed)) 1 0) (newiter (cdr seed) (car seed)))))
```

The code to create a seed (list of 1 or 0) from streams.
```racket
(define one (stream-cons "1" one))
(define onezero (stream-add-between one "0"))
(define (make-stream-list length strm)
  (if(equal? 0 length)
     '()
     (cons (stream-first strm) (make-stream-list (- length 1) (stream-rest strm)))))
```
A screenshot of the iterations in the repl
![alt text](https://github.com/kennysandbum/FP2/blob/master/Screenshot.png)
