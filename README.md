# Final Project Assignment 2: Exploration (FP2)

## My Library: (RacketUI Library)
My name: Muhammed Khalid

# What Did I Do? 

So for FP2, I was going through the Racket Documentation and came across
the RacketUI Website Application. I found that interesting because I could create a website 
with some functionality and the code was very straightforward and easy to build upon. To start of, I 
first created a recursive procedure, acronym. This procedure was responsible for obtain the first letter 
of a given string and then append then append the letter to the next word. It would do this as long as 
the cond evaluated as true. 

In order to do the website interface I used the web-launch function which takes a string 
and some defined function as an argument. That function then would take my acronym function as an argument. 
The strings included such as "Words", "Word", and "this acronym" would be strings outputted to the interface
letting the user know what word to enter and what the outputted acronym will be. 

# Code Highlights
```racket
#lang racket
(require RacketUI)


(define (acronym word) 
  (cond [(empty? word) ""] 
        [(cons? word) 
         (if (string-upcase (substring (first word) 0 1)) 
             (string-append (substring (first word) 0 1) 
                            (acronym (rest word))) 
             (acronym (rest word)))])) 

(web-launch "Acronym Builder | By: Muhammed Khalid" 
            (function "Enter some words to build an acronym"  
                      (acronym ["Words" (listof+ ["Word" string+])] -> ["The acronym" string])))
```
Firstly, I created an acronym function using the Racket Documentation 
```racket
(define (acronym word))
```
It will take a word as parameter which will be used throughout the function

The meat and potatoes of the function is: 
```racket 
(string-upcase(substring(first word) 0 1))
```
Essentially, this function will take the first word of the string and then using the provided 
indices it will extract the first letter of the word that it was provided
as a parameter.

The rest of the function is stuff that we have 
been doing the entire semester which is by satisfying the 
base case and then having the function finish the job for us 
through recursion 
```racket 
(acronym (rest word))
``` 

After completing the acronym function, I created an instance of a webpage application. 
To do so, I used the web-launch procedure: 

```racket
(web-launch "Acronym Builder | By: Muhammed Khalid" 
            (function "Enter some words to build an acronym"  
                      (acronym ["Words" (listof+ ["Word" string+])] -> ["The acronym" string])))
```
Firstly, the web launch begins by taking a title of type string a the first parameter: 
```racket
"Acronym Builder | By: Muhammed Khalid" 
```
This will be the main title outputted to the user of the program

Then a sub-procedure, function will take  string as a parameter which is a prompt to the user 
requesting for a word to be inputted through the interface. 
The web-launch procedure will conclude by making a call to acronym function by doing this: 
```racket
(acronym ["Words" (listof+ ["Word" string+])] -> ["The acronym" string])))
```
The acronym procedure will take the Words inputted in addtion to any additional words that the
user wishes to create acronyms out of. 
(i.e Adams --> A and David B. Adams --> DBA) 
Finally, the string will present itself next to "The acronym".

# Output 

![alt tag](https://github.com/mkhalid578/FP1/blob/master/output.png)


