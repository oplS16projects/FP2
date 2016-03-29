## My Library: (library name here)
My name: Alexander Gribov

For FP2, I decided to explore the arduino interface, so that I could learn how to use hardware (buttons, lights, and potentiometers) with racket. Unfortunately, my Arduino lit up and then broke when I plugged it in, and my roomates Arduino won't let me upload the code, but I wrote it anyways and will test when my new one comes in the mail.

Basically, I used one of the examples to figure out the syntax, and then wrote a program that uses racket to make LED's blink, and chance the speed and brightness with a potentiometer, as well as turn them on/off with a button.

The Arduino sketch uploaded is simply the pre-made ASIP sketch, which starts the serial communication. AFter that everything is in Racket. This interface is really cool, because it allows you to use Functional logic to control hardware, and also use harware to send signals to racket. For example:

'
(define led1 11) ;; Defines which I/O pin to use
(define led2 12)
...
    (set-pin-mode led1 OUTPUT_MODE) ;;Defines led1 to be an output pin
    (set-pin-mode led2 OUTPUT_MODE)
    ...
    (map (λ (x) (digital-write x LOW)) (list led1 led2))
`
This uses Racket's higher order map function to turn off a series of LED's Later in the code, racket functions are used to control the LED's in other ways.

Here's a picture of my circuit which I can't test!
