#lang racket
(require 2htdp/image)
(require "WebsiteCode.rkt")


;Creates a simple image which shows the top goal scorer, and his goal total
(define (goal-leader)
  (overlay/offset
  (overlay/offset (text "Goals" 20 "gold") 0 28
                  (text (get-goals most_goals) 25 "gold")) 0 40
                  (text (string-append (substring (get-firstname most_goals) 0 1) ". " (get-lastname most_goals)) 16 "gold")
                  ))
;Creates a simple image which shows the top assist scorer, and his assist total
 (define (assist-leader)
  (overlay/offset
  (overlay/offset (text "Assists" 20 "gold") 0 28
                  (text (get-assists most_assists) 25 "gold")) 0 40
                  (text (string-append (substring (get-firstname most_assists) 0 1) ". " (get-lastname most_assists)) 16 "gold")                  
                  ))

;Creates a simple image which shows the top point scorer, and his point total
(define (point-leader)
  (overlay/offset
  (overlay/offset (text "Points" 20 "gold") 0 28
                  (text (get-points most_points) 25 "gold")) 0 40
                  (text (string-append (substring (get-firstname most_points) 0 1) ". " (get-lastname most_points)) 16 "gold")
                  ))

;Creates a simple image which shows the top goalie of wins, and his win total
(define (win-leader)
  (define p (get-player (car most_wins)))
  (overlay/offset
  (overlay/offset (text "Wins" 20 "gold") 0 28
                  (text (number->string (cadr most_wins)) 25 "gold")) 0 40
                  (text (string-append (substring (get-firstname p) 0 1) ". " (get-lastname p)) 16 "gold")
                  ))

;Creates the main image to be drawn on screen, and later saved
(define dragons-image
(overlay/offset
(overlay/offset
(overlay (text "Dragons" 42 "gold")
         (rectangle 400 80 "solid" "forestgreen"))
0 60
(overlay (text "Point Leaders" 16 "gold")
         (rectangle 400 40 "solid" "black")))
0 100
(beside
        (overlay (goal-leader)
         (rectangle 100 80 "solid" "black"))
        (overlay (assist-leader)
         (rectangle 100 80 "solid" "black"))
        (overlay (point-leader)
         (rectangle 100 80 "solid" "black"))
        (overlay (win-leader)
         (rectangle 100 80 "solid" "black")))))
dragons-image


;saves the image generated to the temp directory
(displayln (string-append "Image saved to: " (path->string(find-system-path 'temp-dir)) "\\img.png"))
(save-image dragons-image (string->path (string-append (path->string(find-system-path 'temp-dir)) "\\img.png")))
