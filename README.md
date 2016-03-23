## My Library: Math

My name: Connor McLaughlin


Part 3:

I used the math library in FP2. I started by making a list of the goals scored by Bruins players this season (> 0) so I could use it in other functions.

```
(display "Mean:")
(mean _bruins_goals)
```
This ouputed 8 12/25. I also found the standard deviation using:

```
(display "Standard Deviation:")
(stddev _bruins_goals)
```
This outputed 9.007... I used other functions such as string->number and number->string which would be useful for ripping numerical information from websites because they would likely be read in as a string.

Finally I used the matrices in the math library to solve a problem that we learned about back in Discrete Structures II. The problem talks how certain trains only connect to certain towns. With this information you can make an adjacency matrix displaying the information. If you square this matrix you can get every place you can get in two steps. Here is the out I used. 

```
; A matrix representing an ajacency network
(define m1 (matrix [[0 1 1 0][1 1 0 0][1 0 1 0] [0 0 0 0]]))
; By "squaring" the matrix you get everywhere you could go in two steps
(matrix* m1 m1)
(matrix-rows m1)
```
![output](https://github.com/CJMcLaughlin/FP2/blob/master/output2.png)
