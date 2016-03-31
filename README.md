## My Library: net/sendurl
My name: Saurabh Verma


The library `net/sendurl` is used to launch the computer’s default web browser and navigate to a pre-configured web-page. This type of functionality is useful when attempting to redirect the end-user to an external webpage. The code is quite simple: Simply call the `send-url` function with a web-page URL supplied to it as a `String` argument.

## Example

For example, the following Racket code:

    #lang racket
    (require net/sendurl)
    (send-url "http://www.ismyinternetworking.com")

..Produces the following result (screenshot of the browser that was opened after executing the code):

![Diagram](/diagram.png?raw=true “Diagram”)

Diagram by Saurabh Verma
