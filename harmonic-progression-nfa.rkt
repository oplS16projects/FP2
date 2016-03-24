;; Copyright (C) David Benoit 2016
;;
;; Author: David Benoit
;;
;; File: harmonic-progression-nfa.rkt
;;
;; Description: A Non-Deterministic Finite
;;              Automaton which accepts valid
;;              harmonic progressions
;;
;;              This automaton is a work in progress,
;;              and does not accept all valid
;;              harmonic progressions
;;
;;        Note: Roman Numerals represeprent
;;              harmonic function, and arabic
;;              numerals represent figured bass
;;              in the style of classical music.
;;              This automata will not accept 
;;              valid jazz progressions unless they
;;              are converted to figured bass.
;;               
;;              

#lang racket

(require automata/nfa)
(require automata/nfa-ep)
(require automata/machine)

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

;; This is the automaton.  
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
       
       ;; Root Position Sevenths
       [s8 (["I-7" (s4)])]
       [s9 (["II-7" (s5 s12)])]
       [s10 (["III-7" (s5 s6 s12 s13)])]
       [s11 (["IV-7" (s5 s12)])]
       [s12 (["V-7" (s1 s6)])]
       [s13 (["VI-7" (s3 s10)])]
       [s14 (["VII-7" (s1)])]
       
       ;; First Inversion Triads
       [s15 (["I-6" (s1 s4 s5 s18 s19)])]
       [s16 (["II-6" (s5 s2 s9 s42)])]
       [s17 (["IV-6" (s5 s18)])]
       [s18 (["V-6" (s1 s5)])]
       [s19 (["VII-6" (s1 s15)])]
       

       ;; First Inversion Sevenths
       [s20 (["I-6/5" (s4)])]
       [s21 (["II-6/5" (s5 s12)])]
       [s22 (["III-6/5" (s6 s13)])]
       [s23 (["IV-6/5" (s7 s14)])]
       [s24 (["V-6/5" (s1)])]
       [s25 (["VI-6/5" (s3 s10)])]
       [s26 (["VII-6/5" (s1 s3 s8 s10)])]
       
       
       ;; Second Inversion Sevenths
       [s27 (["I-4/3" (s4)])]
       [s28 (["II-4/3" (s5)])]
       [s29 (["III-4/3" (s6)])]
       [s30 (["IV-4/3" (s7)])]
       [s31 (["V-4/3" (s1)])]
       [s32 (["VI-4/3" (s2)])]
       [s33 (["VII-4/3" (s3)])]
       
       ;; Secondary Chords
       [s34 (["V/V" (s5)])]
       [s35 (["V/VI" (s6)])]
       [s36 (["V/III" (s3)])]
       [s37 (["VII-dim7/V" (s5)])]
       [s38 (["VII-half-dim/V" (s5)])]
       [s39 (["VII-dim7/VI" (s6)])]
       [s40 (["VII-half-dim/VI" (s6)])]
       

       ;; Pedal 6/4
       [s41 (["I-6/4" (s1)])]
       
       ;; Cadential 6/4
       [s42 (["V-6/4" (s5)])]

       ;; Passing 6/4
       [s43 (["II-6/4" (s1 s3)])]

       ;; Neopolitan 6
       [s44 (["N-6" (s5 s12)])]

       ;; Fail state
       [fail-state ([epsilon (fail-state)])]
       ))

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


;; Make some progressions
(define prog1 (make-prog "I" "VII-6" "I-6" "I"))
(define prog2 (make-prog "I" "VII-6" "I-6" "V-6"
                         "I" "IV" "II-6" "V-6/4"
                         "V" "I"))
(define prog3 (make-prog "V" "I"))
(define prog4 (make-prog "III" "IV" "II" "V" "I"))
(define prog5 (make-prog "I" "II-6"))

;; Test the progressions
(newline)
(display "Testing prog1")
(newline)
(test-prog prog1 #t)
(newline)
(display "Testing prog2")
(newline)
(test-prog prog2 #t)
(newline)
(display "Testing prog3")
(newline)
(test-prog prog3 #t)
(newline)
(display "Testing prog4")
(newline)
(test-prog prog4 #f)
(newline)
(display "Testing prog5")
(newline)
(test-prog prog5 #f)

