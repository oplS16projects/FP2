#lang racket
(require racket/stream)

(define one (stream-cons "1" one))
(define onezero (stream-add-between one "0"))
(define (make-stream-list length strm)
  (if(equal? 0 length)
     '()
     (cons (stream-first strm) (make-stream-list (- length 1) (stream-rest strm)))))
      
(if (not (file-exists? "test.txt"))(display-to-file (cons 1 (make-stream-list 100 onezero)) "test.txt" #:exists 'replace) '())
(display (make-stream-list 100 onezero))
;(display (newline))

(define (patterns seed length)
  (define (newiter seed prev)
    (if (empty? (cdr seed) )
        (cons (if (equal? (car seed) 0) 1 0) '())
        (cons (if (equal? prev (cadr seed)) 1 0) (newiter (cdr seed) (car seed)))))
  
  (display (newiter seed 0))
  (display-to-file (newline) "test.txt" #:exists 'update)
  
  (if (equal? length 0)
      (newiter seed 0)
      (patterns (newiter seed 0) (- length 1))
  
  
  
  ))
(display-to-file (patterns (cons 1 (make-stream-list 80 onezero)) 10) "test.txt" #:exists 'update)

  ;(print lines)
  
  ;(display-lines-to-file lines path #:exists 'replace))