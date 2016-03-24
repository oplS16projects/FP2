## My Library: RSound
My name: Willis Hand

I chose to work with sound because, well, sound is fun! Specifically I wanted to explore playback timing and sequencing. To begin with, I composed a little jingle using Musescore that begins with a melody, and then has the drum part after it. Next, I used Audacity to break the .wav into two different .wav files, namely sample and drumpart.

Below is the simplest code that can be used to play these files back:
```
(require rsound)

(define mysound (rs-read (string->path "sample.wav")))
(define drumpart (rs-read (string->path "drums.wav")))

(play mysound)
(play drumpart)
```

If you try this at home (recommended) you will notice that the sounds are not played sequentially. This has to do with the play method creating seperate playback objects that function seperately. While this is easy to incorporate into programs due to its simplicity, I really wanted to be able to control the precise timing of the clips.

Luckily, RSound has the ability to make a stream that has a single counter for timing purposes. `(define astream (make-pstream))` This will create and start the stream that I named "astream". Provided is a procedure that gets the current "frame" (time counter) so that you can easily have the stream function as if you were using the play procedure.
```
(require rsound)

(define mysound (rs-read (string->path "sample.wav")))
(define drumpart (rs-read (string->path "drums.wav")))

(define astream (make-pstream))
(pstream-queue astream mysound (pstream-current-frame astream))
(pstream-queue astream drumpart (pstream-current-frame astream))
```
Sadly, this also plays the clips simultaneously, since both are scheduled to start at the same frame. To deal with this, there is a procedure to get the length in frames of an audio file. `(rs-read-frames (string->path "sample.wav"))` By simply adding this to the current frame, playback of one clip can be delayed until after the other clip has finished.
```
(require rsound)

(define mysound (rs-read (string->path "sample.wav")))
(define drumpart (rs-read (string->path "drums.wav")))

(define astream (make-pstream))

(pstream-queue astream mysound (pstream-current-frame astream))
(pstream-queue astream drumpart
               (+ (pstream-current-frame astream) (rs-read-frames (string->path "sample.wav"))))
```

This finally allowed me to play the two files as if I were playing the original file. The uses of this become obvious when applied to composing a song using small clips, since a large number of sounds can be queued multiple times at very specific frames.
