#lang racket
(require data/ring-buffer)
(define rb (empty-ring-buffer 3))

;;This function will return the location of the first occurence of the value. If no value found
;; Then return false.
(define (ring-buffer-find rb val)
    (define (ring-helper i)
         (cond
           [(> i (ring-buffer-length rb)) #f]
           [(equal? (ring-buffer-ref rb i) val) i]
           [else (ring-helper (+ i 1))]
         )
     )
   (ring-helper 0)
)

(ring-buffer-push! rb 3)
(ring-buffer-push! rb 2)
(ring-buffer-push! rb 1)

;To print out contents of rb
;(for/list ([and rb]) and)



;(define myRing (fill (empty-ring-buffer 10) ) );Create empty ring buffer of size 10 & fill it from 1 to 10.
;(ring-buffer-ref myRing1 3);
;(ring-buffer-set! myRing1 3 5);

(define (ring-buffer-pop rb i)
     (ring-buffer-set! rb i '()))






;(define (swap rb1)
 ;   (define (swap-helper rb2 i k holder)
  ;    (cond
   ;     [(= i k) rb2]; Odd number of elements
    ;    [(< k i) rb2]; Even number of elements
     ;   [else 
      ;       (ring-buffer-set! rb2 k (ring-buffer-ref rb2 i))
      ;       (ring-buffer-set! rb2 i holder)
      ;       (swap-helper rb2 (+ i 1) (- k 1) (ring-buffer-ref rb2 (- k 1)))]
;       )
 ;     )
 ;  (swap-helper rb1 0 (- (ring-buffer-length rb1) 1) (ring-buffer-ref rb1 (- (ring-buffer-length rb1) 1)))
;)