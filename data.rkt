#lang racket

(require csv-reading)

;; the reader maker
(define make-data-reader
  (make-csv-reader-maker
   '((separator-chars            #\,)
     (strip-leading-whitespace?  . #t)
     (strip-trailing-whitespace? . #t))))

;; helper procedure to go through row by row
(define next-row
  (make-data-reader (open-input-file "data.csv")))

;; get the data from a csv as a list
(define get-data-list
  (csv->list (make-data-reader (open-input-file "data.csv"))))

;; data format assumed is Name,ID,Quantity

;; Filter over based on phrase given
;; usage is (my-filter "key")
(define (my-filter key)
  (filter (lambda(x)(if (equal? (car x) key) #t #f)) get-data-list))

;; Wrapper for my-filter
(define (filter-wrapper key)
  (if (null? (my-filter key)) "Sorry, no matching item(s) in database" (my-filter key)))




