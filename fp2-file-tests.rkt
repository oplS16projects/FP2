#lang racket/base
 
(require rackunit
         "fp2-file.rkt")
(require rackunit/text-ui)
(require rackunit/gui)

(define file-tests
  (test-suite
   "Tests for fp2-file.rkt"
 
   (check-equal? (my-+ 1 1) 2 "Simple addition")
 
   (check-equal? (my-* 1 2) 2 "Simple multiplication")
 
   (test-case
    "List has length 4 and all elements even"
    (let ([lst (list 2 4 6 12)])
      (check = (length lst) 4)
      (for-each
        (lambda (elt)
          (check-pred even? elt))
      lst)))))

(define eq-eqv-equal-tests
  (test-suite
   "Tests for eq/eqv/equal"

   (check-eq? a b "two lists eq?")
   (check-eqv? a b "two lists eqv?")
   (check-equal? a b "two lists equal?")
   (check-eq? a c "same list eq?")
   (check-eqv? a c "same lists eqv?")
   (check-equal? a c "same lists equal?")
   (check-eq? d e "numbers eq?")
   (check-eqv? d e "numbers eqv?")
   (check-equal? d e "numbers equal?")))

(define other-tests
  (test-suite
   "Other Tests"

   (check-= 5 4 1 "within 1")
   (check-= 5 3 1 "not within 1")

   (test-case
    "tests if 50 50 and equal, and if '(1) '(1) is eq or equal."
    (check-equal? 50 50)
    (check-eq? '(1) '(1))
    (check-equal? '(1) '(1)))
   (test-equal? "test if 50 and 50 are equal." 50 50)
   ))

(test/gui other-tests)