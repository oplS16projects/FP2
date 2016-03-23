# Final Project Assignment 2: Exploration (FP2)
## My Library: Rackunit
My name: John Perkins

Originally I was going to do the net/url library, but I dropped this as it was confusing for me. I instead switched to the rackunit or racket unit testing library. The library seemed pretty simple and focused, introducing three basic concepts: checks, test cases, and test suites. 
The first real introduction to unit testing comes in the form of basic eq? eqv? equal? procedures. This was pretty similar to a worksheet a while back and I tried it out with other types of data than what was given on that worksheet. 
Here is testing two numbers
```racket
(check-eq? 4 4)
(check-eqv? 4 4)
(check-equal? 4 4)
```
The results of this is that it is all true. And then testing two lists of the same number,
```racket
(check-eq? (list 4) (list 4))
(check-eqv? (list 4) (list 4))
(check-equal? (list 4) (list 4))
```
The results of which is that equal? Is the last test is only one that is true.

These most of the time are expanded to be in the form of check-eq?, check-not-equal?, and many others. The one that I liked the most from this is the simple check-= this can be used, for example, to see if a number is within a certain amount of another number. 
```racket
(check-= 5 4 1 "within 1")
(check-= 5 3 1 "not within 1")
```
These concepts form the base blocks of building test cases. Test cases are basically a series of checks which can be named and will also short circuit if a single test fails. These test cases also have a lot of built in functionality such as test-equal automatically including check-equal as shown below.
```racket
(test-begin
    (check-equal? 50 50))
(test-equal? "test if 50 and 50 are equal." 50 50)
```
Finally these both are combined to make test-suites which can have a before and after messages. These test-suites are simply larger amounts of related checks and test cases.

The aspect about this I like the most I think is the fact that the results of these three types of tests can be displayed in easier-to-read formats such as windows which have all the data related to the tests included inside of them.

![Test Case GUI](https://github.com/raghnall6402/FP2/blob/master/fp2-rackunit-example-v2.png)

Overall I didn’t expect to get that much out of this library but it turned out to be pretty interesting to know how to implement some form of unit testing in my final project.
