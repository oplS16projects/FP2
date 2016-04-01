## My Library: avl-tree
Joel Cruz

I used the avl package to create an avl-tree full of random numbers i selected. I tried then to manipulate the tree to test out the different functions the package provides. I got to test out a few things that werent exclusive to the avl package, such as for/list, which travels down the list you provide. I gave for/list the avl tree i created in acsending order and manipulated the value shown.

```racket
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
```
and it produced the following output:
![alt text](http://i.imgur.com/YSLj9ll.png)


* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work
*


## How to Prepare and Submit this assignment

1. To start, [**fork** this repository][forking]. 
  2. (This assignment is just one README.md file, so you can edit it right in github)
1. Modify the README.md file and [**commit**][ref-commit] changes to complete your report.
1. Add your racket file to the repository. 
1. Ensure your changes (report in md file, and added rkt file) are committed to your forked repository.
1. [Create a **pull request**][pull-request] on the original repository to turn in the assignment.


