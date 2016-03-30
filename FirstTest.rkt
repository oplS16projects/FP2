#lang racket
(require pprint)

(pretty-print
   (vb-append
    (nest 4 (vb-append (text "while (true) {")
                      (text "f();")
                      (nest 4 (vb-append (text "if (done())")
                                        (text "exit();")))
                      (nest 4 (vb-append (text "else {")
                                        (text "printf(\"foo bar\");")))
                      (text "}")
                      ))
    (text "}")
    (char #\a)
    break
))


(define (empty-xexpr? x)
  (or (null? x) (equal? x "")))
 
(define (combine x1 x2)
  (cond
    [(empty-xexpr? x1) x2]
    [(empty-xexpr? x2) x1]
    [else (list x1 x2)]))

(pretty-print (markup (λ (x) (list 'em x)) (text "hi!")))
(pretty-markup (markup (λ (x) (list 'symbol x)) (text "hi!")) combine)

(pretty-print
   (hs-append
    (text "let")
    (align (vb-append (hs-append (fill 10 (text "empty"))
                                 (text "::")
                                 (text "Doc"))
                      (hs-append (fill 8 (text "nest"))
                                 (text "::")
                                 (text "Int -> Doc -> Doc"))
                      (hs-append (fill 6 (text "linebreak"))
                                 (text "::")
                                 (text "Doc"))
                      ))
    ))