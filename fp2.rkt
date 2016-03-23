#lang racket

;; Ryan Cauble
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;Trying something else;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require plot)



;(plot3d (isosurface3d                                      ;; makes cool graph of sphere.
;           (λ (x y z) (sqrt (+ (sqr x) (sqr y) (sqr z)))) 1
;           -1 1 -1 1 -1 1)
;          #:altitude 25)


;; I just made a minor change and produced a shap similar to the nose of a plane.
;; The really cool thing is you can click and drag and rotate the image.
;; takes a long time to render tho.

;(plot3d (isosurface3d
;           (λ (x y z) (sqrt (+ x (sqr y) (sqr z)))) 1
;           -1 1 -1 1 -1 1)
;          #:altitude 25)


;; I am sure if I play around enough this would be great for displaying relevant information
;; about a project or something. This data could then be used in web pages and other things.


; (define data '(#(a a (1 1 1)) #(a b (1.5 3)) #(b b ()) #(b a (1/2))))
; (plot3d (stacked-histogram3d data #:labels '("Red" #f "Blue")
;                                   #:alphas '(2/3 1 2/3)))

; (define data '(#(a a (1 1 1 1 1)) #(a b (1.5 3 1 .5 .5 .5))))
; (plot3d (stacked-histogram3d data #:labels '("Red" "Green" "Blue" "Yellow" "Teal" "Purple")
;                                   #:alphas '(2/3 1 2/3)))

; (define data2 '(#(a a (1 1 1 1 1)) ))
; (plot3d (stacked-histogram3d data2 #:labels '("Red" "Green" "Blue" "Yellow" "Teal" "Purple")
;                                   #:alphas '(2/3 1 2/3)))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;    OTHER STUFF I PLAYED WITH   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;  (require graphics/turtles)
;  (require graphics/turtle-examples)
;  (require graphics/value-turtles)
; (require graphics/value-turtles-examples)

;(turtles #t) ;; initialize the turtles to use any drawing function (set to true).

;(spyro-gyra)
;(neato)
;(graphics-bexam)



;(split                 ;; Spawns a new turtle where the turtle is currently located.
; (turn/radians (/ pi 2))
;)

;(split* (turn/radians (/ pi 3)) (turn/radians (/ pi 2)))

;(draw 200) ;; how long the lines will be.


;(regular-polys 6 2)   ;; first value is how many sides and how many poly's

;(draw 200)

;(radial-turtles 3)

;(radial-turtles (spokes))



;(spaced-turtles 3)



;(sierp sierp-size)
;(draw 10)

;(sierp-nosplit sierp-size)

;(koch-draw koch-size)   ;; cool snow flake

; (turn/radians (- (/ pi 2))) ;; direction up
; (fern1 fern-size)           ;; cool fern thing



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;2 vaule stuff;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;(define sq             ;; defines a square object (turtle)
;
;(turtles	100    ; width	 	 	 	 
; 	 	100    ; height	 	 	 
; 	 	0      ; x value	 	 	 
; 	 	0      ; y value	 	 	 
; 	 	90)    ; angle
; )
;
;
;(define sq2             ;; defines a square object (turtle)
;
;(turtles	50    ; width	 	 	 	 
; 	 	50    ; height	 	 	 
; 	 	5      ; x value	 	 	 
; 	 	5      ; y value	 	 	 
; 	 	0)    ; angle
; )

;(turtles? sq)


;(move 100 sq)

;(draw 5 sq)




;(merge sq sq2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;Example given.;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(require net/url)
;(require net/url-string)
;(require net/sendurl)
;(require net/head)
;
;
;(define myurl (string->url "http://www.cs.uml.edu/"))
;(define myport (get-pure-port myurl))
;(display-pure-port myport)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;The Idea of using racket to open a browser and do stuff was way to interesting to
;;;; not try. So I am expanding my exploration as much as I can here.;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;well i tried and not sure what else to do;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(define CSweb  ;; strange the website still opens when I hit run.
;(send-url	"http://www.cs.uml.edu/"  ;; opens up a browser at this url.	 	 	 	 
; 	 	#t	 	 	 	 
; 	 	#:escape? #t)	
;)
