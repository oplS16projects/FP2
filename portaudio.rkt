#lang racket
 
(require portaudio
         ffi/vector)

;gives the pitch of the note n semitones away from A4
(define (pitch n) (* 440 (expt 1.059463094359 n )))
;fn=f0*a^n where f0 is the frequency of the root note (using A4 = 440Hz)
;n is the number of half steps away from that note
;a is the 12th root of 2 which is approximately 1.059463094359

(define sample-rate 44100.0)
(define tpisr (* 2 pi (/ 1.0 sample-rate)))
(define (real->s16 x)
  (inexact->exact (round (* 32767 x))))
(define vec (make-s16vector (* 88200 2)))



;set the bpm here, this effects note/rest lengths
(define bpm 120)

;change this to modify note lengths (currently setn to 0.5 seconds)
(define (notelength t) (exact-round (+ resonance (* (/ 2 t) (/ 60 bpm) 88200))))

;just adds a bit to the note length, I thought it sounded a little stale
;before
(define resonance 15000)
;this plays a list of notes/rests, theoretically you could write a whole one part
;song in the form of a list and play it here if you're into that sort of thing
(define (playloop lst)
  (foldl (lambda (x y)
                (if (pair? x)
                     (and (play (car x) (cadr x)) (rest (cadr x)))
                     (rest x)))                     
                  (rest 4) lst))

;60/bpm gives you the number of seconds in a beat.  Since I'm using
;1 to represent whole notes, 4 to represent quarter notes and so on
;the length of the rest is 4/n * length of one beat for a whole note
;that's 4/1 beats, for a quarter note it's 4/4 = 1 beat of rest.
(define (rest n) (sleep (* (/ 4 n) (/ 60 bpm))))

;plays a note n semitones away from A4 with a notevalue of t
;(t=1->whole note t=2-> half note t=4-> quarter note t=3 works but 3rd notes aren't a thing)
(define (play n t)
                  (for ([i (in-range 88200)])
                    (define sample (real->s16 (* 0.2 (sin (* tpisr i (pitch n))))))
                    (s16vector-set! vec (* 2 i) sample)
                    (s16vector-set! vec (add1 (* 2 i)) sample))
                  (s16vec-play vec 0 (notelength t) sample-rate))


(define SongOfTime '((0 4) (-7 2) (-4 4) (0 4) (-7 2) (-4 4) (0 8)
                           (3 8) (2 4) (-2 4) (-4 8) (-2 8) (0 4) (-7 4)
                           (-9 8) (-5 8) (-7 2) ))
