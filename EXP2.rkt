#lang racket
(require images/icons/style)
(require images/icons/control)
(require images/icons/stickman) 
(require images/icons/symbol)
(require images/icons/misc)
(require images/icons/arrow)



;;slight color and height alterations to stickman
;;given in documentation
(running-stickman-icon 0.9 #:height 32
                         #:body-color "red"
                         #:arm-color "black"
                         #:head-color "red")

;;default bomb icon 
(bomb-icon #:height 32)

;;Originsl from documentation for different materials of bombs
(for/list ([material  (list plastic-icon-material
                              rubber-icon-material
                              glass-icon-material
                              metal-icon-material)])
    (bomb-icon #:height 32 #:material material))


;;A list of arrow icons and some text icons to
;;display the Konami code
(list  (up-arrow-icon #:color halt-icon-color #:height 40 )
       (up-arrow-icon #:color halt-icon-color #:height 40 )
        (down-arrow-icon #:color "lightblue" #:height 40 )
        (down-arrow-icon #:color "lightblue" #:height 40 )
        (left-arrow-icon #:color run-icon-color #:height 40)
        (right-arrow-icon #:color syntax-icon-color #:height 40)
        (left-arrow-icon #:color run-icon-color #:height 40)
        (right-arrow-icon #:color syntax-icon-color #:height 40)
        (text-icon "B"#:color "red" #:height 40)
        (text-icon "A"#:color "blue" #:height 40))

;;Small list displaying a a story of a villian kicking a bomb
;;Used arrows,stickman,text icons

(list   (running-stickman-icon 0.9 #:height 32 #:body-color "red" #:arm-color "black" #:head-color "red")
        (right-arrow-icon #:color syntax-icon-color #:height 40)
        (bomb-icon #:height 32)
        (text-icon "Kicks"#:color "red" #:height 20) 
        (text-icon "..."#:color "red" #:height 10)
        (bomb-icon #:height 32 #:material  glass-icon-material )
        (standing-stickman-icon #:height 40)
        (text-icon "Dead?"#:color "red" #:height 20))
