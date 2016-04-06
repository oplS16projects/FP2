#lang racket
(require rsound)

(play ding)
(play ding)
(play ding)

(define sound
  (network ()
       [A <= sine-wave 2]
       [B <= sine-wave 100]
       [out = (+ A B)]))
(signal-play sound)
(sleep 3)
(stop)

(define vibrate
  (network ()
           [lfo <= sine-wave 2]
           [sin <= sine-wave (+ 400 (* 50 lfo))]
           [out = (* 0.1 sin)]))
(signal-play vibrate)
(sleep 5)
(stop)

(define (scrobble change-interval lo-f hi-f)
  (local
    [(define freq-range (floor (- hi-f lo-f)))
     (define (maybe-change f l)
       (cond [(= l 0) (+ lo-f (random freq-range))]
             [else f]))]
    (network ()
             [looper <= (loop-ctr change-interval 1)]
             [freq = (maybe-change (prev freq 30) looper)]
             [a <= square-wave freq])))
 
(define my-signal
  (network ()
           [a <= (scrobble 1 40 700)]
           [b <= (scrobble 90 100 400)]
           [lpf-wave <= sine-wave 0.1]
           [c <= lpf/dynamic (max 0.02 (abs (* 1.5 lpf-wave))) (+ a b)]))
           
 

(signal-play my-signal)
(stop)