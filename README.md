## My Library: Rackunit
My name: John Perkins

Originally I was going to do the net/url library as I had little experience in anything related to that subject. I quickly realized after it that I had absolutely zero clue what was going on with it so I switched over to the rackunit or racket unit testing. Overall the library seems pretty simple and focused on its topic of unit testing. Some concepts that I learned more directly through this although I was exposed to them through the various test files located for assignments are: file linking, test suites, and so forth.

The first new keyword or whatever they are called in racket introduced is the provide keyword. This keyword from what I can gather is the opposite of the require procedure in which whatever arguments that it has are items being exported vs imported.

The first real introduction to unit testing comes in the form of basic eq? eqv? equal? procedure. This was pretty fun to mess with as we had that worksheet a while back that asked about the same concepts and here it was to mess with directly.

Here is testing two numbers
'''racket
(check-eq? 4 4)
(check-eqv? 4 4)
(check-equal? 4 4)
'''

And then testing two lists of the same numbers
'''racket
(check-eq? (list 4) (list 4))
(check-eqv? (list 4) (list 4))
(check-equal? (list 4) (list 4))
'''

After those basic concepts come more complex forms of a list of tests which is useful if you want something to short circuit, such as testing a predecate such as odd? or even? The last idea of rackunit introduced in the quick-start guide are test suites which are pretty self explainatory, but generally they are tests which are combined into a whole that usually would test one specific piece of code in immense detail.

The test resuits of these unit tests are also displayed in a nicer to read format for me where it will display a given error message and formatting with lines.
