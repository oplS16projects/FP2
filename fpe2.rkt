#lang racket
(require RacketUI)


(define (acronym word) ; defines acronym which takes a word parameter
  (cond [(empty? word) ""] ; if it is empty return NULL
        [(cons? word) ; see the first element of the list
         (if (string-upcase (substring (first word) 0 1)) ; checks to see if the first letter is uppercase
             (string-append (substring (first word) 0 1) ; then append that string to a new string
                            (acronym (rest word))) ; recursively go through the rest of the word
             (acronym (rest word)))])) ; recursively go through through word if cond fails

(web-launch "Acronym Builder | By: Muhammed Khalid" ; Title of the website
            (function "Enter some words to build an acronym"  ; subtitle for the website
                      (acronym ["Words" (listof+ ["Word" string+])] -> ["The acronym" string])))
                      ; Creates an interface which includes Words
                      ; followed by the ability to add words
                      ; Then it presents the final Acronym