# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

Exactly like Exploration 1: https://github.com/oplS16projects/FP1. Do a different library. Explore something different, either related or completely not. Try something else out. This is also an individual assignment. 
Be sure to do your write up in the FP2 repository, and pull request against it to turn in.

During this assignment, start looking for teammates! Use the email list! 
When posting on the email list, be sure to include:
* what you're interested in doing
* what libraries you looked at for FP1 and FP2
* when you will be able to meet to work on project

### The following libraries are not allowed for project explorations:
* games/cards
* racket/gui
* racket/draw 

You can still use these in your project, but you must explore different libraries for this assignment.

##DELETE THIS AND EVERYTHING ABOVE IT BEFORE SUBMITTING

## My Library: racket/stream, racket/file
My name: Kenneth Sanders
I created a simple psuedorandom generator using racket streams to create a variable length list of ones and zeros.
Then, I iterated through the list and used the and from the bit to the lef and right to determine the new value of the current bit.
The new value of the list is then displayed in the repl.
I did this repeatedly, and returned the string of bits after the last iteration. This should create a psuedo-random number dependent upon the initial bit sequence and the number of iterations.
The final value also stored to the file test.txt so that a new random number may be generated using the old one as a seed. This allows a static random number to be generated on the system.

The code for the new seed from given seed and previous value (initially 0)
```racket
(define (newiter seed prev)
    (if (empty? (cdr seed) )
        (cons (if (equal? (car seed) 0) 1 0) '())
        (cons (if (equal? prev (cadr seed)) 1 0) (newiter (cdr seed) (car seed)))))
```

The code to create a seed (list of 1 or 0) from streams.
```racket
(define one (stream-cons "1" one))
(define onezero (stream-add-between one "0"))
(define (make-stream-list length strm)
  (if(equal? 0 length)
     '()
     (cons (stream-first strm) (make-stream-list (- length 1) (stream-rest strm)))))
```
A screenshot of the iterations in the repl
![alt text](https://github.com/kennysandbum/FP2/blob/master/Screenshot.png)
Write what you did!
Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.

Ask questions publicly in the email group.

## How to Prepare and Submit this assignment

1. To start, [**fork** this repository][forking]. 
  2. (This assignment is just one README.md file, so you can edit it right in github)
1. Modify the README.md file and [**commit**][ref-commit] changes to complete your report.
1. Add your racket file to the repository. 
1. Ensure your changes (report in md file, and added rkt file) are committed to your forked repository.
1. [Create a **pull request**][pull-request] on the original repository to turn in the assignment.

## Project Schedule
This is the first part of a larger project. The final project schedule is [here][schedule]

<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
