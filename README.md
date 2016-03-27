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

## My Library: pprint
My name: Kevin Dibble
Write what you did!

I chose the PPrint: A Universal Pretty-Printer because it looked interesting and more involved than my FP1 library. Additionally, I remember working on some pretty printing work during my Computing IV course.
I started working through the documentation page (http://docs.racket-lang.org/pprint/index.html) and put together several of the examples with my own additions. This library is quite large and I have only scratched the surface.

Basic pretty print functionality consists of the doc structure which is the backbone of the system. Basic prodecures for creating docs include text, char, and more. Combining these docs is where the power of this library comes in. Combination procedures include the append set, the concat set, nest, fill, markup, and more. Defined docs like line and break are also built in for ease of use.
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
