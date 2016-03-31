# Final Project Assignment 2: Exploration (FP2)


## My Library: (Rsound)
My name: Lokesh Manchi

I played around with different sounds that could be created using Rsound. For the adventure game that we are creating Rsound would make it more lively with the noises for example when the player hits something a noise will play. I programmed a couple of noises that can be used in the main program.
```
#lang racket
 
 (define sound
  (network ()
       [E2 <= sine-wave 2]
       [B2 <= sine-wave 100]
 ```
 This code creates a vibrating noice and the pitch can be changed by playing around with A and B
 ```
#lang racket
 [looper <= (loop-ctr change-interval 1)]
 
  ```
   This is the second noise that is on a loop. The loop and the frequency can be changed based on the values on the pitch. This runs on a high to low frequency.

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
