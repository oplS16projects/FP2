# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

## My Library: 	Simple-Qr: Qr Code generator
# name: Cody Mulkern


I used the Simple-Qr library to create links to lmgtfy.com(let me google that for you) and google the question that you ask it. This seemed simple enough I just needed to be able to figure out how lmgtfy.com formatted their searches in the url. After a quick search on their website I figured it out. ``` lmgtfy.com/?q=(questions) ``` This was the format but then I found out they used '+' between spaces in a search so I used a regular expression to replace all " " with a "+". 
```racket
(regexp-replace* #rx" " (string-append "lmgtfy.com/?q=" question) "+")
```

The whole procedure is:
```racket
(define (make-qr-code-question question)
  (qr-code (regexp-replace* #rx" " (string-append "lmgtfy.com/?q=" question) "+") (string-append question ".png" ))
)
```
This allowed me to enter a question as a string and the procedure will create a lmgtfy.com search qr-code and create a .png file in the same directory that the racket program is run from.

Here is an example of testing this procedure:
![alt](https://raw.githubusercontent.com/Mulks/FP2/master/qr-code-test.png)

which will produce this QR-code:
![alt](https://raw.githubusercontent.com/Mulks/FP2/master/What%20is%20today's%20date.png)


After getting this to work I felt that was kind of boring so and since I wanted to possibly do work with files for my project I decided to see if I could read in lists of Questions and make qr-codes for them all. This is what I ended up with:
```racket
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
```
Now for the data to test this I used a notepad app and added some questions in:
![alt](https://raw.githubusercontent.com/Mulks/FP2/master/questionListTest.png)

Now with a call to:
![alt](https://raw.githubusercontent.com/Mulks/FP2/master/qr-codes-from-file.png)

This results in:
![alt](https://raw.githubusercontent.com/Mulks/FP2/master/qr-codes-made-from-file.png)

Now if you have a smart phone you can break out the barcode scanner and check out the answers to the question and get a laugh from lmgtfy's sarcasm.

![alt](https://raw.githubusercontent.com/Mulks/FP2/master/qr-on-barcode-scanner.jpg)
![alt](https://raw.githubusercontent.com/Mulks/FP2/master/lmgtfy-search.jpg)
