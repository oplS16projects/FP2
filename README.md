## My Library: (Slideshow/Play Library)
My name: Naman Jiandani

# Write what you did!
I use the Slideshow Library

* I did a slideshow in Racket using the Slideshow Library. 
* Creates a full page interface which allows you to change the slide by pressing any key
* Through use of lists, I can create multiple lines of text on a single slide
* First I declare the Library: 
```racket 
(require slideshow/play)
```
The First slide starts with my name: 

```racket 
(play-n
 (lambda (n1 n2)
   (cellophane (t "Naman Jiandani")
               (* n1 (- 1.0 n2)))))
```
Call a play procedure which has a lambda procedure which takes two args. 
Then I just provided my name as string to the procedure 

Each text on the slide is denoted by combination of nested lists procedures: 
```racket 
 (list (list (item "West Philadelphia, born and raised")
             'next
             (item "On the playground was where I spent most of my days")
             'next
             (item "Chillin' out maxin' relaxin' all cool"))
       (list (item "And all shooting some b-ball outside of the school")
             'next
             (item "When a couple of guys who were up to no good")
             'next
             (item "Started making trouble in my neighborhood"))
       (list (item (tt "I got in one little fight")))
       (list (item (tt "You're movin' with your auntie and uncle in Bel Air")))))
```
I included some lyrics from the Fresh Prince of Bel Air in the slides

Finally to create slide object or procedure all you have to do is: 
 ```racket 
 (slide
 #:title "Prince."
 #:layout 'top)
 ```
 The slide procedure takes a title and a layout which can be either top or bottom, up to you. 

Here are a few of the outputs: 

![alt tag](https://github.com/naman1255/FP2/blob/master/my_output_1.png)
![alt tag](https://github.com/naman1255/FP2/blob/master/my_output_2.png)
![alt tag](https://github.com/naman1255/FP2/blob/master/my_output_3.png)
 
