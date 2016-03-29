#lang racket
(require "racket-asip-master/AsipMain.rkt")

;; Reading potentiometer and button inputs on arduino, to control LED's

;; Digital pins
(define butA 10)
(define led1 11)
(define led2 12)

;; Analog pins
(define potA 0)
(define potB 1)

(define initializeBoard 
  (λ ()
    (open-asip)  
    ;; Setting 3 pins to OUTPUT_MODE
    (set-pin-mode led1 OUTPUT_MODE)
    (set-pin-mode led2 OUTPUT_MODE)
    
    (set-pin-mode butA INPUT_MODE)
    ;(set-pin-mode potA INPUT_MODE)
    ;(set-pin-mode potB INPUT_MODE)

    ;; Analog pins on Arduino UNO do not need to
    ;; be initialised in the current version of ASIP.
    ;; Their value is reported every 50 ms
  
    ;; Turning the three pins off
    (map (λ (x) (digital-write x LOW)) (list led1 led2))
    
    ) ;; end of lambda
  ) ;; end of setup

(define lightCtrl 
  (if (equal? HIGH (digital-read butA))
      (λ ()
        (analog-write led1 (analog-read potA))
        (sleep (+ 0.1 (/ (analog-read potB) 1000)))
        (analog-write led1 LOW)
        (analog-write led2 (analog-read potA))
        (sleep (+ 0.1 (/ (analog-read potB) 1000)))
        (analog-write led2 LOW)
        (lightCtrl)
        )
      (λ ()
        (lightCtrl))
      )
  )

(initializeBoard)
(lightCtrl)
