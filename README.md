# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

## My Library: Amazon Web Services
My name: Brian Thomas

I created a racket program that tests put ang get file procedures for amazon s3. First, the program prompts the user for access IDs and a bucket name for which they have access. This will log into Amazon S3 and create a simple text file containing "Hello, World" in bucket/path/to/HelloWorld.txt. After creating/uploading the file, I then use a get command to download the file. 

#Highlights of code

```
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

 ```

#Output from my code

Please enter your Access Key:
Please enter your Secret Access Key:
Please enter a bucket name:
Bucket contents:
'()
"HTTP/1.1 200 OK\r\nx-amz-id-2: yj7DusjRt5tJb0AFGPEfhlzAeeB/83gKoEG+DNztsJqxTca1NVOY0cHAwEOP4s8BZ7hiWkIoJ2k=\r\nx-amz-request-id: 0AF866FF059D3969\r\nDate: Sun, 27 Mar 2016 21:54:19 GMT\r\nETag: \"080aef839b95facf73ec599375e92d47\"\r\nContent-Length: 0\r\nServer: AmazonS3\r\n\r\n"
Bucket contents:
'("path/to/HelloWorld.txt")
> 


#Pictures showing my work
<p align="center">
  <img src="https://raw.githubusercontent.com/jumpyhoof/FP2/master/Output.png"/>
  <img src="https://raw.githubusercontent.com/jumpyhoof/FP2/master/S3.png"/>
</p>
