# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

#My Library: automata
My Name: David Benoit

What I did:

I created a Non-Deterministic Finite Automaton that accepts valid harmonic progressions.  

Here are some code examples:

```

;; Make a chord progression from
;; strings of chord symbols
(define make-prog list)

;; Determine if a chord progression is valid
;; Print and return result
(define (valid-prog? prog)
  (define prog-is-valid
    (machine-accepts? chord-machine prog))
  (display prog)
  (display " ")
  (cond (prog-is-valid
         (display "is a valid harmonic progression.")
         (newline)
         #t)
        (else
         (display "is not a valid harmonic progression.")
         (newline)
         #f))) 

```

Here is a code fragment of just the beginning of the automaton:

```
(define chord-machine
  (nfa/ep (s1 s2 s5) (s1)
       ;; Root Position Triads
       [s1 (["I" (s1 s2 s3 s4 s5 s6 s7 s8 s9
                  s10 s11 s12 s13 s14 s15 s16
                  s17 s18 s19 s20 s21 s22 s23
                  s24 s25 s26 s27 s28 s29 s30
                  s31 s32 s33 s34 s35 s36 s37
                  s38 s39 s40 s41 s42 s43)])]
       [s2 (["II" (s5 s12)])]
       [s3 (["III" (s4 s5 s6)])]
       [s4 (["IV" (s2 s5 s7 s9 s16)])]
       [s5 (["V" (s1 s6)])]
       [s6 (["VI" (s2 s4 s5)])]
       [s7 (["VII" (s1 s3)])]
       
```

Here is some of the test code:

```

;; Test whether the automaton works on
;; a particular progression.
(define (test-prog prog result)
  (display "Expexcting result: ")
  (display result)
  (newline)
  (display "Testing... ")
  (newline)
  (cond ((eq? (valid-prog? prog) result)
         (display "Test Succeeded")
         (newline)
         #t)
        (else
         (display "Test Failed")
         (newline)
         #f)))
```

```
;; Make some progressions
(define prog1 (make-prog "I" "VII-6" "I-6" "I"))

```

```

;; Test the progressions
(newline)
(display "Testing prog1")
(newline)
(test-prog prog1 #t)
(newline)

```

Here is a screenshot of the program output:
![Program Output Screenshot](https://github.com/benoid/FP2/blob/master/output-screenshot.png)
