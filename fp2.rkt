#lang racket
(require aws)
 
(define (member? x xs)
  (not (not (member x xs))))

;Prompt user for the public key and private keys
(display "Please enter your Access Key: ")
(public-key (symbol->string (read)))
(display "Please enter your Secret Access Key: ")
(private-key (symbol->string (read)))

;Prompt user for a bucket to access
(display "Please enter a bucket name: ")
(define mybucket (symbol->string (read)))

;List files in the bucket to show it is empty
(display "Bucket contents:\n")
(ls (string-append mybucket "/"))

;Define path to a test directory in mybucket and contents (data) of test file
(define test-pathname "path/to/HelloWorld.txt")
(define b+p (string-append mybucket "/" test-pathname))
(define data #"Hello, world.")

;If the bucket exists, create a hello world txt file.
(if (member? mybucket (list-buckets))
    (put/bytes b+p data "text/plain")
    (display "Bucket does not exist."))

;List files in the bucket again to show the created file.
(display "Bucket contents:\n")
(ls (string-append mybucket "/"))


;Download the file from amazon s3 to your computer.
(make-directory* (build-path "tests"))
(define p (build-path "tests" "TestDownload.txt"))
(get/file b+p p #:exists 'replace)

;Delete the file from amazon s3.
(delete b+p)