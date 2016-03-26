#lang racket

 (require images/icons/symbol)
 (require images/icons/misc)
 (require images/icons/stickman)
 (require images/logos)
 (require images/flomap)

(require pict images/icons/control images/icons/style)
 (pict->bitmap
   (cc-superimpose
    (bitmap (record-icon #:color "red" #:height 50
                         #:material glass-icon-material))
    (bitmap (step-icon #:color light-metal-icon-color #:height 20
                       #:material metal-icon-material))))

(stop-signs-icon #:color "blue" #:height 32 #:material glass-icon-material)

(foot-icon #:color "yellow" #:height 124
             #:material glass-icon-material)

(bomb-icon #:height 72 #:material plastic-icon-material)

(for/list ([t  (in-range 0 1 1/8)])
    (running-stickman-icon t #:body-color "pink" #:head-color "red" #:arm-color "purple" #:height 40))

(planet-logo)

(define seanmap
    (draw-flomap
     (λ (fm-dc)
       (send fm-dc set-alpha 0)
       (send fm-dc set-background "black")
       (send fm-dc clear)
       (send fm-dc set-alpha 1/3)
       (send fm-dc translate 2 2)
       (send fm-dc set-pen "purple" 4 'long-dash) ;;affects outline of diagram
       (send fm-dc set-brush "red" 'solid) ;;drawing and picking the colors for 3 ellipses
       (send fm-dc draw-ellipse 0 0 192 192)
       (send fm-dc set-brush "green" 'solid)
       (send fm-dc draw-ellipse 64 0 192 192)
       (send fm-dc set-brush "blue" 'solid)
       (send fm-dc draw-ellipse 32 44 192 192)
       (send fm-dc set-brush "orange" 'solid)
       (send fm-dc draw-ellipse 84 44 192 192))
     260 240))
> (flomap->bitmap seanmap)