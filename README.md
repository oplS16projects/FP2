## My Library: Simple-Qr: Qr Code generator
My name: Krin Yongvongphaiboon

# About the API
[Simple-Qr](https://docs.racket-lang.org/simple-qr/index.html) allow you to generate Qr code.

# The code
Simple Qr is simple to use just like the name of it. There are two main part you need to look at. 
* data - string
* path - the file name of you Qr code
* module width - control the size of the image

> Standard image
```racket
(qr-code "https://github.com/oplS16projects/FP2/pulls/aboutkrin"
         "FP2-standard.png") 
```
> Small image
```racket
(qr-code "https://github.com/oplS16projects/FP2/pulls/aboutkrin"
         "FP2-small.png" #:module_width 2) 
```
> Large image
```racket
(qr-code "https://github.com/oplS16projects/FP2/pulls/aboutkrin"
         "FP2-standard.png" #:module_width 10)) 
```
![alt tag](https://github.com/aboutkrin/FP2/blob/master/screenshot.png)

# Output
I make three different outputs. Small, standard, and large image file. The default image size for standard version is 5, small is 2, and large is 10.

#Standard
![alt tag](https://github.com/aboutkrin/FP2/blob/master/screenshot.png)

#Small
![alt tag](https://github.com/aboutkrin/FP2/blob/master/FP2-small.png)

#Large
![alt tag](https://github.com/aboutkrin/FP2/blob/master/FP2-large.png)



