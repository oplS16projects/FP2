

## My Library: (require plot)
My name: Aliyu Zakari

The libary i used and the following procedures to that library are as follows.

```
(require plot)  ;;; Library I used
(plot)          ;;; Procedure i played with

```

And listed below are the procedures that I created
```
(make-square-graph x) ;;; It makes a square graph that accepts an input that 
                      ;;; accepts an argument which is the lower bound and 
                      ;;; upper bound of the graph [x, x]

(make-linear-graph y) ;;; It makes a linear graph

(make-multi-graph a . b) ;;; Is a produre that accepts at least one arugments
                         ;;; Those arguments are function objects that you want
                         ;;; the procedure to plot. 

;; When using this procedure, I advice to pass your fuctions to be plotted
;; As a list. And Example of using such prodecure is as follows.

(define a (function sqr (- 2) 2 )) ;; Is the first function 
(define b (inverse sqr (- 2) 2 ))  ;; Is the second function

(make-multi-graph (list a b))      ;; Is how you use the procedure.

```

I personally wanted to make a better procedure 
that would check if what's is given is a list
or a single functions and would handle it from there.

<br>
<img height="1000" src="https://github.com/ABZaxxon/FP1/blob/master/FP2_Souce_Code.png"/>
<br>

<br>
<img height="1000" src="https://github.com/ABZaxxon/FP1/blob/master/FP2_Output_Picture.png"/>
<br>
