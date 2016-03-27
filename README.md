# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016

Exactly like Exploration 1: https://github.com/oplS16projects/FP1. Do a different library. Explore something different, either related or completely not. Try something else out. This is also an individual assignment. 
Be sure to do your write up in the FP2 repository, and pull request against it to turn in.

During this assignment, start looking for teammates! Use the email list! 
When posting on the email list, be sure to include:
* what you're interested in doing
* what libraries you looked at for FP1 and FP2
* when you will be able to meet to work on project

### The following libraries are not allowed for project explorations:
* games/cards
* racket/gui
* racket/draw 

You can still use these in your project, but you must explore different libraries for this assignment.

##DELETE THIS AND EVERYTHING ABOVE IT BEFORE SUBMITTING

## My Library: (library name here)
My name:
Write what you did!
Remember that this report must include:

* a narrative of what you did
* highlights of code that you wrote, with explanation
* output from your code demonstrating what it produced
* at least one diagram or figure showing your work

The narrative itself should be no longer than 350 words. Yes, you need at least one image (output, diagrams). Images must be embedded into this md file. We should not have to click a link to see it. This is github, handling files is awesome and easy!

Code should be delivered in two ways:

1. Full files should be added to your version of this repository.
1. Key excerpts of your code should be copied into this .md file, formatted to look like code, and explained.

Ask questions publicly in the email group.

## How to Prepare and Submit this assignment

1. To start, [**fork** this repository][forking]. 
  2. (This assignment is just one README.md file, so you can edit it right in github)
1. Modify the README.md file and [**commit**][ref-commit] changes to complete your report.
1. Add your racket file to the repository. 
1. Ensure your changes (report in md file, and added rkt file) are committed to your forked repository.
1. [Create a **pull request**][pull-request] on the original repository to turn in the assignment.

## Project Schedule
This is the first part of a larger project. The final project schedule is [here][schedule]

<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request


# Final Project Assignment 1: Exploration (FP1)
## My Library: github-api
My name: Brian Thomas

I created a racket program (fp1.rkt) that will upload itself to a gist file/repo thingie. It first prompts the user for their username and a personal-token. It uses these to create an ID, which is passed to the github-api procedure and returns a procedure that is used as an argument for other github-api procedures. Presumably allowing you to call functions associated with the previously entered username and token. The program then opens a file and reads it, line by line, appending each line to a string which eventually contains the entire file. The program then creates a gist file with some place holder text of "a". This gets overwritten with the next call to edit the file, writing in the string previously created. End of program.

#Highlights of code

This is the meat of the program.

```
; Read from a file line by line until eof, creating and returning a string
; containing all lines from the file with newlines in between.
; This is an iterative procedure because the last thing it does is call itself with no chain of deferred actions.
; It is O(n) in time but O(1) in space.
(define (read-file in lines)
  (let ((new-line (read-line in 'any)))
    (if (eof-object? new-line)
        lines
        (read-file in
                   (string-append lines "\n" new-line)))))

; Read the file in. This just calls the previous function to read the file, passing it the file ptr and telling it to stop
at every line or carriage return. Binds the result to mylines.
(define mylines (read-file in (read-line in 'any)))


; Create a gist to begin uploading lines. This creates a gist with the file name fp1.rkt and the contents of "a". The "a" ; : ; will be overwritten later. It was not possible to create a blank gist. It also saves the return value into create-response ; so the data can be retrieved for the ID.
(define create-response (github-create-gist github
                                            (list (cons "fp1.rkt" "a"))
                                            #:description "FP1"))

; Get the id for the gist file
(define gist-id (get-gist-id create-response))

; Write to gist file. This edit's the gist file, overwriting anything in it previously (the "a"). I pass it the gist-id and mylines(the string created earlier) and writes it to the file fp1.rkt.
(display "Writing to gist file...\n")
(define edit-response (github-edit-gist github
                                        gist-id
                                        (list (cons "fp1.rkt" mylines))))
 ```

#Output from my code

Please enter your Access Key: <Access Key>
Please enter your Secret Access Key: <Secret Access Key>
Please enter a bucket name: <Bucket Name>
Bucket contents:
'()
"HTTP/1.1 200 OK\r\nx-amz-id-2: yj7DusjRt5tJb0AFGPEfhlzAeeB/83gKoEG+DNztsJqxTca1NVOY0cHAwEOP4s8BZ7hiWkIoJ2k=\r\nx-amz-request-id: 0AF866FF059D3969\r\nDate: Sun, 27 Mar 2016 21:54:19 GMT\r\nETag: \"080aef839b95facf73ec599375e92d47\"\r\nContent-Length: 0\r\nServer: AmazonS3\r\n\r\n"
Bucket contents:
'("path/to/HelloWorld.txt")
> 

#Pictures showing my work
<p align="center">
  <img src="https://raw.githubusercontent.com/jumpyhoof/FP1/master/Photo1.png"/>
  <img src="https://raw.githubusercontent.com/jumpyhoof/FP1/master/Photo2.png"/>
</p>


#Pictures showing my work
<p align="center">
  <img src="https://raw.githubusercontent.com/jumpyhoof/FP2/master/Output.png"/>
  <img src="https://raw.githubusercontent.com/jumpyhoof/FP2/master/S3.png"/>
</p>
