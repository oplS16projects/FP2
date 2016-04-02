#lang slideshow


(require 2htdp/image)

; Above the rectangle
; Triangles beside each other
(above (overlay/offset (triangle 40 "solid" "red")
                      80 0
                      (triangle 40 "solid" "red"))
       (rectangle 120 40 "solid" "black"))

(define victorian
    (above (overlay/offset (triangle 40 "solid" "red")
                      80 0
                      (triangle 40 "solid" "red"))
       (rectangle 120 40 "solid" "black")))
;so we can call door
(define door (beside(rectangle 15 25 "solid" "brown")
                    (rectangle 15 25 "solid" "brown")))

(overlay/align "center" "bottom" door victorian)

(define door-with-knob
    (overlay/align "center" "center" (circle 3 "solid" "yellow")  door))

;Create bottom picture
(overlay/align "center" "bottom" door-with-knob  victorian)