#lang racket

(require math)

(define matrix-test
 (make-matrix 4 1 1))


;THIS IS TURNING LIST INTO MATRIX
; this will output '(1 2 3 4 5 6 7 8)
(define list1
  (list 1 2 3 4 5 6 7 8))

(list->matrix 2 4 list1)               
(list->matrix 4 2 list1)

;THIS IS TURNING MATRIX INTO LIST
(define matrix1
  (matrix [[1 2 3 4]
           [5 6 7 8]]))
(matrix->list matrix1)

; this will output this '((1 2 3 4) (3 4 5 6))
(define list2
  (list (list 1 2 3 4) (list 5 6 7 8))) 

(list->matrix 1 2 list2)
(list->matrix 2 1 list2)

;THIS IS TURNING MATRIX INTO LIST
(define matrix2
  (matrix [['(1 2 3 4) '(5 6 7 8)]]))
(matrix->list matrix2) ; this will become '((1 2 3 4) (5 6 7 8))

;This list will output '((1 2) (3 4) (4 5) (6 7) (8 9) (10 11))
(define list3
  (list (list 1 2) (list 3 4) (list 4 5) (list 6 7) (list 8 9) (list 10 11)))

(list->matrix 2 3 list3) 

(list->matrix 3 2 list3)
;THIS IS TURNING MATRIX INTO LIST
(define matrix3
  (matrix [['(1 2) '(3 4)] ['(4 5) '(6 7)] ['(8 9) '(10 11)]]))
(matrix->list matrix3) ; this will output '((1 2) (3 4) (4 5) (6 7) (8 9) (10 11))

;this is me trying out the '+' '-' and '*' operators for matrices
(matrix+ matrix1 matrix1)
(matrix- matrix1 matrix1)
(matrix* matrix1 matrix-test)


  
