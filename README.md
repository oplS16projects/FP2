# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

## My Library: (2htdp/image)
My name: John Brown3

For FP2 I explored the 2htdp/image library for lack of a better library. Nothing peeked my interest, so I used this to generate an image which displays some of the information I retrieved in [FP1](https://github.com/JDBJohnBrown/FP1). I expanded upon my code from FP1 in numerous ways, however I will stick stricly to explaining my use of the image library.


## Sub-Images
Overall I generate 5 images through the use of this library.
The first four are combined with other overlay commands to create the final image.

Each of the four sub-images is created in the same way. So I will only look at one here.
```
(define (goal-leader)
  (overlay/offset
  (overlay/offset (text "Goals" 20 "gold") 0 28
                  (text (get-goals most_goals) 25 "gold")) 0 40
                  (text (string-append (substring (get-firstname most_goals) 0 1) ". " (get-lastname most_goals)) 16 "gold")
                  ))
```

To combine multiple commands from the library into one image, I have learned two main ways to do this. Overlay, and beside.
Overlay places one image command over another, and centers the smaller one inside of it(unless otherwise specified). Beside places the images horizontally next to one another.

In this code, I use overlay to add multiple lines of text appear in one image. Since the code defaults to middle and center, the text lines up neatly horizontally on seperate lines.
The /offset allows me to change the height a which the "next" line apprears.
For example in the furthested nested overlay/offset saying '0 28' after the text command, tells overlay to draw the next command
at an offset of 0 pixels to the right, and 28 pixels downward.

I repeated this with another offset overlay, so I can combine three operations into one image, which I offset even further down.


## Final Product
In the last image, I combine the use of overlay, overlay/offset and beside to create on final image called "dragons-image"
```
(define dragons-image
(overlay/offset
(overlay/offset
(overlay (text "Dragons" 42 "gold")
         (rectangle 400 80 "solid" "forestgreen"))
0 60
(overlay (text "Point Leaders" 16 "gold")
         (rectangle 400 40 "solid" "black")))
0 100
(beside
        (overlay (goal-leader)
         (rectangle 100 80 "solid" "black"))
        (overlay (assist-leader)
         (rectangle 100 80 "solid" "black"))
        (overlay (point-leader)
         (rectangle 100 80 "solid" "black"))
        (overlay (win-leader)
         (rectangle 100 80 "solid" "black")))))
```
The difference again being that overlay is iincredibly useful for centering things on other images, while with offset and besides you can position things appropriately.

I lead with a title text, gold on a green background, followed by a subtitle gold on black.
Lastly I end using the beside function to place the subimages I created (ontop of a black background) next to each other in a neat and orderly fashion. 


## Saving
Not satisfied with my use of the library, I decided to try my hand at using the save-image function aswell.
```
(save-image dragons-image (string->path (string-append (path->string(find-system-path 'temp-dir)) "\\img.png")))
```
Not having used any file/directory commands in racket before, this was a trick to figure out.
However, the save-image command itself was straight forwards once I figured out how to input the parameters.

