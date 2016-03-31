#lang slideshow

(require slideshow/play)

(play-n
 (lambda (n1 n2)
   (cellophane (t "Naman Jiandani")
               (* n1 (- 1.0 n2)))))

(slide
 #:title "The Fresh Prince of Bel-Air"
 #:layout 'top
 'next
 'alts
 (list (list (item "West Philadelphia, born and raised")
             'next
             (item "On the playground was where I spent most of my days")
             'next
             (item "Chillin' out maxin' relaxin' all cool"))
       (list (item "And all shooting some b-ball outside of the school")
             'next
             (item "When a couple of guys who were up to no good")
             'next
             (item "Started making trouble in my neighborhood"))
       (list (item (tt "I got in one little fight")))
       (list (item (tt "You're movin' with your auntie and uncle in Bel Air")))))

(slide
 #:title "The."
 #:layout 'top)

(slide
 #:title "Fresh."
 #:layout 'top)

(slide
 #:title "Prince."
 #:layout 'top)

(slide
 #:title "of Bel Air"
 #:layout 'top)