## My Library: Leftist Trees
My name: Sridhar Rangan

For my second exploration I decided to play around with the leftist trees library.  Leftist trees are immutable priority queues.  I first played around with the idea of having a empty tree of strings and a tree with strings.  Below is the code defining an empty tree of strings and a tree of strings.

```racket
#lang racket

(define empty-tree-of-strings (leftist-tree string<=?))
(define tree-of-strings (leftist-tree string<=? '("once" "upon" "a" "time")))

```

Once I defined them, in the REPL I ran empty-tree-of-strings which returned #<leftist-tree [empty]>.  This tells me that the empty-tree-of-strings is actually empty.  Also I ran tree-of-strings in the REPL which returned #<leftist-tree [count=4; min="a"]>.  This tells me the number of elements in the tree as well as the min value of just "a".

In addition to determining emptiness, I also played around with the idea of adding two leftist trees together via the leftist-tree-add-all procedure.  To go a step further, I decided to return the values (strings).  The code below demonstrates as such. Both x and y are combined via the leftist-tree-add-all procedure and then a for loop helps to display all the elements in this case a couple of moods such as happy, angry, sad and estatic.

```racket
#lang racket

(define x (leftist-tree string<=?))
(define y '("happy" "angry" "sad" "estatic"))
(define z (leftist-tree-add-all x y))
(for ([y (in-leftist-tree z)])
  (displayln y))

```
After playing with a couple of the features of leftist trees, it seems as though the main advantage of them comes from the ability to merge quickly together.  This could come in useful for the main finance project as it would be helpful to merge sets of financial data as well as use the graph library I explored in my first exploration.
