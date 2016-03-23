#lang racket
(require json)

(define x (string->jsexpr "{\"foo\": \"bar\", \"bar\": \"baz\"}"))
(for (((key val) (in-hash x)))
  (printf "~a = ~a~%" key val))

(open-input-file