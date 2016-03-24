#lang racket

(require data/leftist-tree)

(define empty-tree-of-strings (leftist-tree string<=?))
(define tree-of-strings (leftist-tree string<=? '("once" "upon" "a" "time")))

;;After defining both the empty tree and the tree of strings
;; in the REPL I ran the code "empty-tree-of-strings" and "tree-of-strings"
;; the empty tree of course returned empty while the tree of strings returned
;; the number of strings and the smallest string (min) which was "a"

(leftist-tree? (leftist-tree <=))
;; This returned #t (True) since it is a leftist tree
(leftist-tree? "This is not a leftist tree!")
;; This returned #f (False) since the above was not a leftist tree


(define a (leftist-tree string<=?))
(define b '("bad" "average" "great" "excellent"))
(leftist-tree-add-all a b)

(define x (leftist-tree string<=?))
(define y '("happy" "angry" "sad" "estatic"))
(define z (leftist-tree-add-all x y))
(for ([y (in-leftist-tree z)])
  (displayln y))