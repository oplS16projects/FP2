## My Library: cpuinfo
My name: Michael Bowe
I played with all the functions provided by cpuinfo. Seeing no useful way to access most of the information programmatically, I wrote accessors for some of the more interesting cpu statistics. Since the cpuinfo obect is implemented as a list of cons cells, I replaced the outermost cdr with a car until I found the correct key cdr'ing down the list to make sure I was getting the correct information. For example:

```
#lang racket
;get just the number of cpu cores w/o extaneous info
(define (cpuinfo-corecount cpu)
  (cdr
   (car
    (cdr
     (cdr
      (cdr
       (cdr
        (cdr
         (cdr
          (cdr
           (cdr (cdr (cdr (cdr (cdr
            (car cpu))))))))))))))))

```
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
