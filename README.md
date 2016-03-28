

## My Library: graphics/turtle
My name: Patrick Donegan
Write what you did!
Remember that this report must include:

I worked with the graphics/turtle library to draw shapes.
The following code drew a square and triangle which shared a side.
Note that 1.414 is my approximation for root 2.
```
(define (square x)
  (draw x)
  (turn 90)
  (draw x)
  (turn 90)
  (draw x)
  (turn 90)
  (draw x)
  (turn 90)
  (move x)
  )

(define (triangle x)
  (draw x)
  (turn 135)
  (draw (* 1.414 x))
  (move x)
  )

(square 100)
(triangle 100)

```
This produced the following output



![output]
(http://imgur.com/SMeksAI.png)

Another more interesting image that I created came about by mistake.
When I made a programming error which led to an infinite loop I stopped it
about 5 minutes in and this is the image that was created



![output]
(http://i.imgur.com/7Vk0LuJ.png)

The code that created this interesting image was the following

```
;(define (square x)
;  (draw x)
;  (turn 90)
;  (draw x)
;  (turn 90)
;  (draw x)
;  (turn 90)
;  (draw x)
;  (turn 90)
;  (move x)
;  (square (- x 10))
;  )
;
;(square 100)
```

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
