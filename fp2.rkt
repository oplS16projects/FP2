



#lang racket
(require teachpacks/racket-turtle)
(require 2htdp/image)
 
(define colorz (list "red" "orange" "green" "blue" "yellow" "purple"))
(define circshapes (list
                    (circle 5 "solid" "red")
                    (circle 16 "outline" "black")
                    (circle 10 "outline" "blue")(radial-star 32 30 40 "outline" "green")))
 
             (define (fakemoves moves)
  (define helper 
   
      (list (forward .01)
            (turn-left 180)))
               (repeat moves helper )) 
       

    (define (circ run ang numdegrees );will work with most angles


          (define (helper run ang )
      (list

       (forward run)
            (turn-left ang)))

      
      (repeat (/ numdegrees ang) (helper run ang)))

  
(define upperP 

(list 

(mirror-x-on) 
       (circ  1 3 110)
(mirror-x-off)
(turn-left 70)
(forward 75)
       ))
 


(define upperL
  (list
  
   (forward 75)
   (turn-left 90)
   (forward 50)))

 


 (define (polygons size)
     
    (if (<= size 0)
        empty
        (cons (pulled-regular-polygon size 4 2 52 "solid" (make-color (random 255)
                                                      (random 255)
                                                      (random 255))   )
      
    (polygons (sub1 size)))))
 
    (draw-custom (list
                  (change-color colorz)
           (pen-up)
           (go-to 125 945 )
           (pen-down)
           (circ 2 3 360)
           (pen-up)
           (go-to 200 965)
           (pen-down)
           upperP
           (pen-up)
           (go-to 250 985)
           (pen-down)
            
           upperL; 1800 1020 0

 

 (stamper-on circshapes) 
(turn-left 90) 
(pen-up) 
           (go-to 125 745 )
           (pen-down)
           (circ 2 3 360) (stamper-off)
           (pen-up)
           (go-to 200 765)
           (pen-down)
           upperP
           (pen-up)
           (go-to 250 785)
           (pen-down)


 
           upperL

(pen-up)





(stamper-on (list (pulled-regular-polygon 100 4 5 30 "solid" "black")
                  (pulled-regular-polygon 98 4 5 30 "solid" "green")))
(go-to 900 300)
(pen-down)
(fakemoves 1 )
(change-color "black")
(stamper-off)

;below draws the 'x' on the clover
(mirror-x-on)
(turn-right 225 )
(pen-up)
(go-to 812 388)
(pen-down)
(forward 250)
(mirror-x-off)


           (pen-up)


(change-color colorz)
           (go-to 300 300)
(pen-down)
          (stamper-on (polygons  300))
          
           (fakemoves 300)
 


           )
                 1800 1020 0 
 

                   )




![alt tag](https://raw.githubusercontent.com/ia-n/FP2/master/f2pout.png)
