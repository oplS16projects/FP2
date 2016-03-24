# Final Project Assignment 2: Exploration (FP2)

##Part 1: Try a Library
I have used (web-server/insta) library for FP2

##Part 2: Write your Report
#### My Library: (web-server/insta)
My name: Udit Bhansali

At first I started working on (htmlPrag) library, but later I found out the library I'm using is obsolete. I later switched to (web-server/insta) library

Screenshot
![FP2](http://i.imgur.com/Ts9kav4.png?1)

Code Excerpt
```
#lang web-server/insta
 
(define (start request)
  (response/xexpr
   '(html
     (head (title "Organization of Programming Languages!"))
     (body (h1 "This is an implementation of web-server/insta library")
           (img ([src "http://i.imgur.com/TcWAYBC.png"]))))))
```
