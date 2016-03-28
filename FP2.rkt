#lang racket

(require 2htdp/universe)
(require 2htdp/image)

(define (create-UFO-scene height)
  (underlay/xy (rectangle 1000 1000 "solid" "white") 50 height UFO))

(define UFO
  (underlay/align "center"
                  "center"
                  (circle 10 "solid" "green")
                  (rectangle 40 4 "solid" "green")))

(animate create-UFO-scene)




(define (ball-image t) ;<-- the t-parameter is our WorldState
  (place-image (circle 10 "solid" "red")
               (car t) ;<-- here now x variable coordinate
               (cdr t) ;<-- here now y variable, instead of 150
               (empty-scene 300 300)))



(define (change w a-key) ; w is worldstate and a-key is the key to prcoess
  (cond 
    [(key=? a-key "left")  (cons (sub1 (car w)) (cdr w))]; Checks to see if keystate is "left", if so subtracts 1 from x coordinate
    [(key=? a-key "right") (cons (add1 (car w)) (cdr w))];
    [(key=? a-key "up")    (cons (car w) (sub1 (cdr w)))]
    [(key=? a-key "down")  (cons (car w) (add1 (cdr w)))]
    [else w])) 
                   

(big-bang '(75 . 75) ;initial state
          (to-draw ball-image) ;redraws the world
          (on-key change)) ;process the event of key press

(define (change2 w x-mouse y-mouse a-key)
  (cond 
    [(mouse=? a-key "button-down")  (cons (sub1 (car w)) (cdr w))]
    [(mouse=? a-key "drag")  (cons (add1 (car w)) (cdr w))]
    [else w])) 
                   

(big-bang '(150 . 150)
          (to-draw ball-image)
          (on-mouse change2))

