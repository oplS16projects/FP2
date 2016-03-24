#lang racket

(require simple-qr)

;;
;; Test code to see how the qr-code worked
;;
;
;(qr-code "lmgtfy.com" "lmgtfy.png")

;;
;; This was to test out how lmgtfy.com used their search querys
;;
;
; lmgtfy.com/?q=(questions)

;;
;; This was testing the two put together.
;;
;
;(qr-code "lmgtfy.com/?q=how+tall+is+the+empire+state+building" "lmgtfyEmpire.png")

;;
;; To be able to have a user input a question I had to make sure that the spaces would be replaced in the question to be properly
;; formatted and correctly link to lmgtfy.com
;;
;; To do this I used regular expressions to replace all spaces with a '+' to make a proper url for the lmgtfy.com
;;
;
;(regexp-replace* #rx" " "mi casa" "+")


;;
;; This if my procedure to ask a question and it will create a QR-code in the same directory that the racket file is run from.
;; (for me I did this from my desktop but which ever folder you are in they will be created as a .png file.)
;;
;; The regular expressions used in this procedure are the same as above, it finds all spaces and replaces with +
;; this allows for search correctly on lmgtfy.com
;;
;; String-append does exactly what it sounds like it will append the first argument to the second.
;; In this I used it to append the question to the end of the url and to add the .png extension to the qr-code.
;;
(define (make-qr-code-question question)
  (qr-code (regexp-replace* #rx" " (string-append "lmgtfy.com/?q=" question) "+") (string-append question ".png" ))
)

;;
;; I made this procedure to allow for reading multiple questions from a file.
;; First it will read in all the lines and create a list in 'questions.
;; Then it uses for-each to apply the make-qr-code-question procedure to make the qr-codes for each question.
;;
(define (questionsFromFile fileName )
  ;;This line reads from the fileName provided by user
  (define questions (file->lines fileName ))

  ;;This for-each loop works like map but it only runs the procedure and does not need to return a new list.
  ;;It will loop through the questions list and make a qr-code for each.
  (for-each (lambda (x) (make-qr-code-question x)) questions)
  
)

;;(questionsFromFile "questionTest.txt")