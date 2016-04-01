#lang racket
(require avl)

(define avl (make-avl <=))

(avl-add! avl 33)
(avl-add! avl 133)
(avl-add! avl 73)
(avl-add! avl 88)
(avl-add! avl 11)
(avl-add! avl 53)
(avl-add! avl 100)
(avl-add! avl 13)
(avl-add! avl 22)
(avl-add! avl 48)
(avl-add! avl 264)
(avl-add! avl 202)
(avl-add! avl 133)
(avl-add! avl 123)
(avl-add! avl 173)
(avl-add! avl 188)
(avl-add! avl 111)
(avl-add! avl 153)
(avl-add! avl 300)
(avl-add! avl 123)
(avl-add! avl 221)
(avl-add! avl 481)
(avl-add! avl 24)
(avl-add! avl 22)

(for/list ((value (in-avl avl)))
    (cond [(< value 50) (* value value)]
          [(< value 100) (* value 8)]
          [(> value 300) (* value 2)]
          [else (* value 30)]))