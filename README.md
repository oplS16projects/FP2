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

## My Library: (library name here)
My name:
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


Conor Finegan

conor_finegan@student.uml.edu

3/30/2016

For my second exploration, I used the Racket class library. My group's final project is a Chess simulator, a program that lends itself to an imperative, object-oriented approach to problem solving. Thus, I set out to create several simple classes that use inheritance and polymorphism to organize the behaviors that different chess pieces have. To that end, I created `coord%`, `piece%`, `king%`, and `pawn%` classes, as well as a `piece/c` contract that acts as an interface for them.

The `coord%` class is a simple data structure that binds an a pair of X and Y coordinates together. In our final implemenation, we will probably use a "tile" class that will expand the functionality of `coord%`.

`piece%` and `piece/c` offer implementation and interface for our chess piece type, respectively. `piece%` contains data and methods that are common to all chess pieces. `piece/c` contains a set of contracts that ensure that a method expecting a `piece%` (or an object derived from `piece%`) will fail gracefully if given the wrong data type. Strangely, while the `racket/class` library does contain an `interface` keyword, I found that class contracts offer more of the functionality that I tradionally associate with interfaces in object-oriented programming.

The `pawn%` and `king%` classes are example implementations of individual chess pieces. Both inherit from the `piece%` base class, as well as extend the `get-valid-moves` method to return a list of all coordinates representing valid moves for that piece. I should note that neither of the `get-valid-moves` implementations for `pawn%` or `king%` are actually correct (they don't check for bounds, and `king%` doens't provide diagonal moves), but they are sufficient for a proof of concept for polymorphism.

Along with these two class definitions, I have provided a `make-piece` constructor that takes a concrete piece type, along with a coordinate (and, eventually, more information like team color) and returns a piece.

Given the following input:
```
> (define k (make-piece king% (make-coord 3 3)))
> (display-coord-list (send k get-valid-moves))
```

My program gives the follwing output:
`[3,4] [3,2] [4,3] [2,3]`

Whereas given the follwing input:
```
> (define p (make-piece pawn% (make-coord 3 3)))
> (display-coord-list (send p get-valid-moves))
```

My program gives the follwing output:
`[3,4]`

Here is a small diagram illustrating how this polymorhpism will be useful in designing the overall chess simulation. Being able to abstract away the complexity of implementing individual chess pieces will be a huge boon to our organization, as we'll only need to query a given piece for its valid moves; the piece itself it will responsible to knowing what is and isn't a valid move.

