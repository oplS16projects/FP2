# Final Project Assignment 2: Exploration (FP2)


## My Library: (Rsound)
My name: Lokesh Manchi

I played around with different sounds that could be created using Rsound. For the adventure game that we are creating Rsound would make it more lively with the noises for example when the player hits something a noise will play. I programmed a couple of noises that can be used in the main program.
```
#lang racket
 
 (define sound
  (network ()
       [E2 <= sine-wave 2]
       [B2 <= sine-wave 100]
 ```
 This code creates a vibrating noice and the pitch can be changed by playing around with A and B
 ```
#lang racket
 [looper <= (loop-ctr change-interval 1)]
 
  ```
  This is the second noise that is on a loop. The loop and the frequency can be changed based on the values on the pitch. This runs on a high to low frequency.
  
  The output of the code is the following:
  
  ![alt text](https://raw.githubusercontent.com/lokeshmanchi/FP2/master/audiooutput.jpg)
  It steps through the code and tell you when its playing a noise and when it stops.
  
   


<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
