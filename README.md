# Name: Tyler Bezuka
##Library: RSound

For my second library exploration I was interested in sound. I chose to work with rsound, an extensive library capable of
playing, recording, combining, reading, and modifying sound. 

The first function I created was a simple combine-or-read function controlled with an if statement: 
```
(define (combine-or-read determine path)
  (if (even? determine) (play (rs-read path))
      (play (rs-append ding (record-sound 100000)))))
```
Depending on whether the user enters an even or odd number the function does two different things. The two arguments passed
to this function are determine and path. The first argument determine is an integer which determines what the function 
will do, the second argument is a path used to read a sound. If an even number is entered the functon will read a sound given
in the form of a string by the user and play back that sound. If an odd number is entered two sounds are combined and played 
back. To combine these sounds
```
(rs-append sound1 sound2)
```
is used. This function takes two rsounds and appends sound2 to the end of sound1. In this case ding, a built in rsound is
always combined with the a recorded second sound. The second sound is created through
```
(record-sound frames)
```
This function takes a natural number as input and records for the inputted amount of frames. In this case (rs-append always combines a ding sound with 5 seconds of recording. The output from this function is: 

![combine-or-read-output](https://github.com/tylerbezuka/FP2/blob/master/played-sound.png)

The next function I created was
```
(define (save-recording path)
  (rs-write (record-sound 10000) path))
```
This function records a sound for 10000 frames and saves the recorded sound to whatever path the user specifies when calling the function. The output of this function will produce nothing, but I have attached the created file from calling this function. The path I used to save the sound was simply the Desktop. 



