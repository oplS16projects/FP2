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

