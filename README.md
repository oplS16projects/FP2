## My Library: Web Applications in Racket
My name: Tyler Bainbridge

For this exploration I decided to dive into one of my passions, web development, by using a web server library in Racket. During this exploration I expiremented with html templating to create a static website using different HTML elements and the centering tool. There seems like theres a lot of potential for interesting projects using this library. I am definitely interested in exploring this further for the final project. 

My code outputted: 
Hello, Professor!
I'm surfing the web with a really cool library!

Woooooooo!!

Using a web server and HTML 

![alt text](http://i.imgur.com/UMKvlvt.png "Exploration 2")


```racket
#lang racket

(require web-server/servlet
         web-server/servlet-env)


(define (hello-servlet req)
  (response/xexpr ;;creating a simple response for the server
   `(html ;;starting the html doc
     (head) 
     (body ;;body of the html doc
      (center (h1 "Hello, Professor!") ;;centered header
      (center (h3 "I'm surfing the web with a really cool library!"))
         (center (p "Woooooooo!!")))))))
     
     
  
; start serving:
(serve/servlet hello-servlet)
```
