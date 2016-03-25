## My Library: simple-qr
My name: Jacob Suarez

For this exploration I looked at simple-qr, a library that allows you to generate QR codes from any string you input. As the name implies, simple-qr is very simple to use. All you need to input is the string you want turned into a QR code, the filename of the image output, and the size of the QR code. I made a simple function just so I wouldn't need to type #:module_width every single time I wanted to make a QR code of a size besides the default size of 5, then I made a bunch of test QR codes. The input I used for these examples can be seen in the .rkt file included with this submission.

First, a simple QR code of the word "test"

![test](https://github.com/Onamar/FP2/blob/master/test.png)

Next I tested using a really long string, in this case the wikipedia entry for Ice-9, from Kurt Vonnegut's novel, _Cat's Cradle_
![Ice-nine is a material appearing in Kurt Vonnegut's novel Cat's Cradle. Ice-nine is supposedly a catalyst of water (invented by Dr. Felix Hoenikker[1]); instead of melting at 0 °C (32 °F), the result melts at 45.8 °C (114.4 °F). When ice-nine comes into contact with liquid water below 45.8 °C (thus effectively becoming supercooled), it acts as a seed crystal and causes the solidification of the entire body of water, which quickly crystallizes as more ice-nine. As people are mostly water, ice-nine kills nearly instantly when ingested or brought into contact with soft tissues exposed to the bloodstream, such as the eyes or tongue. In the story, it is developed by the Manhattan Project in order for the Marines to no longer need to deal with mud, but abandoned when it becomes clear that any quantity of it would have the power to destroy all life on earth. A global catastrophe involving freezing the world's oceans with ice-nine is used as a plot device in Vonnegut's novel.](https://github.com/Onamar/FP2/blob/master/test2.png)

Finally, I made a QR code of the address of the page for PF2 on my GitHub account, in three different sizes

![https://github.com/Onamar/FP2](https://github.com/Onamar/FP2/blob/master/FP2-small.png)

![https://github.com/Onamar/FP2](https://github.com/Onamar/FP2/blob/master/FP2.png)

![https://github.com/Onamar/FP2](https://github.com/Onamar/FP2/blob/master/FP2-large.png)
