-Name:Rotana Nou 
-Assignment: FP1 
-Racket Library: net/url 
-Date: Friday, March 23, 2016

* Purpose of this project
In this final project FP2, I used "net/url" library. That is provided in racket documentations. The main purpose of this second part of 
the final project is to make a HTTP request. So basically I implement the code in racket from my machine and send a request for some files from a URL. And then the web server would send back the response which contains all kind of information. We will take a look at the code below.

* Code Explaination
```racket
#lang racket
(require net/url)

(define (retrieve link) ;;creates a function to retrieve a link or url
  (define urlin (get-pure-port link))  ;; get a request of HTTP
  ;; Excetpion handling: to handle in the case of if the url is
  ;; fail to retrieve then it would just close input port.
  (with-handlers ([exn:fail? (lambda (x)   
                               (displayln "Cannot retrieve the URL")  
                               (close-input-port urlin)
                               (raise x))])
    (begin0
      (port->string urlin)
      (printf "Fatch the URL")
      (close-input-port urlin)))) ;; begin0 will return the resource and close the resource. 
```
For the code above, first of all we need "require net/url" in order to make a HTTP request. After that I started by create a function retrieve that take one argument of a link. Then define a urlin to get a request of HTTP that will response as a string. Next I wrote down the exception handling to check if the rquest is fail to retriever or fatch then it would print out a message then close the input port.
Lastly of the code is begin0. It will just return the resource and release the resource at the end. 

* Output of the code <br/ >
if I run on the console for example <br/ >
>(retrieve (string->url "http://www.uml.edu/")) <br/ >
It would output as below <br/ >
Fatch the URL"\r\n\r\n<!DOCTYPE html>\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9... <br/ >
....will be alot more.... <br/ >
The web server would response back to my machine that contains all the infromatoins of that URL. I can't provide all of the oupt becuase it is a really long output that contains all the URL informations. Thus it is basically What I have done for my final project FP2 to make a HTTP request.  
