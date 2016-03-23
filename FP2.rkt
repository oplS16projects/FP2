#lang web-server/insta
 
(define (start request)
  (response/xexpr
   '(html
     (head (title "Organization of Programming Languages!"))
     (body (h1 "This is an implementation of web-server/insta library")
           (img ([src "http://i.imgur.com/TcWAYBC.png"]))))))