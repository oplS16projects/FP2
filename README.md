## My Library: rsound
My name: Connor Emma
Write what you did!
Remember that this report must include:

In this project exploration, I chose to use an API meant for manipulating and playing sounds. I only got so far as actually playing the sounds, but it was a learning experience...

Unlike the last exploration I couldn't just get away with typing `(require rsound)` and having the library ready to go. I actually had to take an extra two minutes or so to install some dependencies, and that was when I learned life is hard.

Out of the three useful commands I learned, here are my top three favorites in no order:

`(play)` **Plays a sound.** ![alt text](http://test.wowaustralia.com.au/wp-content/uploads/2015/05/WOW-Logo-no-text-e1430265147670.jpg)
It accepts *rsound* as an argument...which according to the documentation is a `struct` which contains the data itself, the start and end time of the rsound, and the 'frame rate'.

`(rs-read)` **This is for taking in a sound file.** Accepts a *path-string* as its argument which is just a normal path with any backslashes escaped. It returns an rsound object which is can then be passed to the `(play)` function. **This function can only interpret .wav files.** 

`(diagnose-sound-playing)` Is extremely useful when things go wrong right off that bat and the documentation's example function `(play ding)` does not work. The output of this command can be passed to Google which can actually help you fix the problem. 


#Here is another interpretation of a diagram

###I hope you enjoy reading it as much as I enjoyed making it!

![alt text][diagram]

[diagram]: https://i.imgur.com/L5otdAT.png
