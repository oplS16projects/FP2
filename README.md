## My Library: spmatrix
My name: Harrison Desjardins

I started by messing around with how the matrix was created.  At first I wasn't really sure what the final argument was for in build-matrix.  I finally realized as I was messing around with it is that it seems to be used in filling in the matrix.  The following code is what I used to create it:

```
#lang racket
(require data/spmatrix)

(define x (build-matrix 2 2 +))
```

By using '+' I saw that the created matrix fills itself with the value created when the row number and column number is added together.

```
> (display-matrix x)
01
12
```

I then went on to see what other things I could do with the matrices.  I tried to see how hard it would be to create a matrix multiply procedure and realised that it is kind of hard to do.  I then created a simple checker for if two matices can be multiplied together called can-mult.  The following code is that procedure:

```
(define (can-mult m1 m2)
  (if (= (matrix-cols m1) (matrix-rows m2))
      #t
      #f))
```

This would be needed to create the matrix multiplication function because the only time two matrices can be multiplied together if the number of columns in the first matrix is equal to the number of rows in the second matrix.
