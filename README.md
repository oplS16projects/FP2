# Final Project Assignment 2: Exploration (FP2)


## My Library: (portaudio)
My name: Cameron Oliver

I wanted to do something with sound this time.  There were a few options, I couldn't get rsound to work (I tried installing it).  There was one that used OpenAL but reading 100+ pages of OpenAL doccumentation seemed a little too ambitious for me.  I was however able to get portaudio to work and it does some cool stuff.  There's probably more you can do with it (there always is) but I managed to learn enough that I could easily keep myself entertained with it for a few hours.  

To start I checked out the package doccumentation.  In the doccumentation there was an example that played a 426 Hz sine wave.  I decided to take this and run a short distance with it.  I can't really give you much in the way of diagrams because I don't know how to draw sound, I'm just not that good.  Also, the output will be a bit questionable, I will try to record something on my computer and attach an audio file.  Aside from that I can give you some well doccumented code.


```
;s16vec-play (s16vec start-frame end-frame sample-rate) is used to play sound samples
;below you see the definition of an s16vector "vec".  If you look at the play function
;you can see that vec is reassigned for each note by sampling a sine function  with a
;pitch specific frequency (set by pitch function, not included here) sampled 88200 times.
;this is played back from a start-frame (which I'm using as 0) until an end frame
;which is set based on the note length.  The note length in frames is taken to be
;2/notevalue * 60/bpm * 88200  This give a whole note the length of the entire sample.

(define sample-rate 44100.0)
(define tpisr (* 2 pi (/ 1.0 sample-rate)))
(define (real->s16 x)
  (inexact->exact (round (* 32767 x))))
(define vec (make-s16vector (* 88200 2)))


;plays a note n semitones away from A4 with a notevalue of t
;(t=1->whole note t=2-> half note t=4-> quarter note t=3 works but 3rd notes aren't a thing)
(define (play n t)
                  (for ([i (in-range 88200)])
                    (define sample (real->s16 (* 0.2 (sin (* tpisr i (pitch n))))))
                    (s16vector-set! vec (* 2 i) sample)
                    (s16vector-set! vec (add1 (* 2 i)) sample))
                  (s16vec-play vec 0 (notelength t) sample-rate))

;this plays a list of notes/rests, theoretically you could write a whole one part
;song in the form of a list and play it here if you're into that sort of thing
(define (playloop lst)
  (foldl (lambda (x y)
                (if (pair? x)
                     (and (play (car x) (cadr x)) (rest (cadr x)))
                     (rest x)))                     
                  (rest 4) lst))

;this is my sample song which you can hear in the audio clip.
;if you're cool people you'll recognize it from The Legend of Zelda:OoT
(define SongOfTime '((0 4) (-7 2) (-4 4) (0 4) (-7 2) (-4 4) (0 8)
                           (3 8) (2 4) (-2 4) (-4 8) (-2 8) (0 4) (-7 4)
                           (-9 8) (-5 8) (-7 2) ))
```
So if it isn't obvious from looking at the code, the idea behind this program is to provide a simple sequencer so that you can write glorious sine wave music (you could change the sample if you wanted to but where's the fun in that?).  I could for example enter: `(playloop (list (0 4) (2 4) 2 (3 4)))` and it will play quarter notes: A4 B4 half-rest C4.  That's about all I've got for you, I'm going to try and record that audio now and then I'll upload some files.
