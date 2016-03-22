# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016


## My Library: racket/math (require math)
My name: Huy Huynh

  For my FP2 I chose to fiddle around with the math library of racket. The math library itself is very big so I decided to focus mostly on the matrix portion of the library. There I fiddled around with the idea of converting a list into a matrix, a matrix to a list, and also the basic mathematic operators for the matrix. 
```racket
  #lang racket
  (define matrix-test
 (make-matrix 4 1 1)) 
```
This portion here is just me testing out the make-matrix operator and I am here making a 4x1 matrix with all 1s. Basically it would look like [ 1 ] 
          [ 1 ]
          [ 1 ]
          [ 1 ]
```racket
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
```
  For this chunk of code, I am basically first defining a list, I then use the (list->matrix m n xs) operator that is part of the math library. Where the 'm' and 'n' determines my row and columns and the 'xs' is the list of numbers. Thus, what this is doing is it is taking in my list that I created, and I am making a 2x4 matrix and a 4x2 matrix using the same list. I then used the (matrix->list M) operator which takes a matrix and generates a list given the matrix. I first made a matrix1 and then fed that into the operator. I then continued this pattern of converting a list to a matrix, and a matrix to a list for two more times making two addional lists and matrices. The other two lists and matrices can be seen in the racket file.
 I then also fiddled a bit with the basic operators for matrices like addition, subtraction and multiplication that was already available in the math library. These were pretty simple, the matrix+ operator takes in two matrices it can be the same one, but both must have the same dimensions. The same goes for the matrix- operator. The matrix* was a bit tricky/odd as you must need the columns of one matrix be the same as the number of rows for the second matrix. My matrix1 was a matrix of 2 rows and 4 columns and the matrix-test was a matrix of 4 rows and 1 columns. 
 ```racket
 ;this is me trying out the '+' '-' and '*' operators for matrices
(matrix+ matrix1 matrix1) 
(matrix- matrix1 matrix1)
(matrix* matrix1 matrix-test)
```

I also hand wrote some of the steps and its outputs out which can be seen here:

![Alt Text](https://github.com/HuyH0114/FP2/blob/master/Example%20Diagram1.jpg)
![Alt Text](https://github.com/HuyH0114/FP2/blob/master/Example%20diagram2.jpg)

Here is an image showing the program working and creating these lists, and matrices. 
![Alt Text](https://github.com/HuyH0114/FP2/blob/master/Output.PNG)

<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
