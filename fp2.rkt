#lang racket

(require simple-qr)

(define (my-qr input filename size)
  (qr-code input filename #:module_width size))

(my-qr "test" "test.png" 5)
(my-qr "Ice-nine is a material appearing in Kurt Vonnegut's novel Cat's Cradle. Ice-nine is supposedly a catalyst of water (invented by Dr. Felix Hoenikker[1]); instead of melting at 0 °C (32 °F), the result melts at 45.8 °C (114.4 °F). When ice-nine comes into contact with liquid water below 45.8 °C (thus effectively becoming supercooled), it acts as a seed crystal and causes the solidification of the entire body of water, which quickly crystallizes as more ice-nine. As people are mostly water, ice-nine kills nearly instantly when ingested or brought into contact with soft tissues exposed to the bloodstream, such as the eyes or tongue.

In the story, it is developed by the Manhattan Project in order for the Marines to no longer need to deal with mud, but abandoned when it becomes clear that any quantity of it would have the power to destroy all life on earth. A global catastrophe involving freezing the world's oceans with ice-nine is used as a plot device in Vonnegut's novel." "test2.png" 5)

(my-qr "https://github.com/Onamar/FP2" "FP2.png" 5)
(my-qr "https://github.com/Onamar/FP2" "FP2-small.png" 2)
(my-qr "https://github.com/Onamar/FP2" "FP2-large.png" 10)