# Final Project Assignment 2: Exploration (FP2)
DUE Wednesday, March 23, 2016


## My Library: (simple-qr)
My name: Nicholas Finocchiaro

For FP2 I chose simple-qr. It's a pretty sweet little tool that is quite possibly the one of the easiest things to program in racket. 
To install the library open a terminal enter:
```
raco pkg install simple-qr
```
After installing, include the package:
```
(require simple-qr)
```
Now we can make our first qr code:
```
(qr-code "Hello World!" "hello.png") 
```
A simple hello world that produces the qr-code:
![helloworld](https://github.com/nickfinocchiaro/FP2/blob/master/hello.png)

With the Following Output:
![helloworldscreen](https://github.com/nickfinocchiaro/FP2/blob/master/Screenshot_2016-03-30-20-14-09.png)

You can also adjust the width using:
```
#:module-width //non neg int
```
The normal width is 5. 

change a width:
```
(qr-code "http://www.espn.go.com" "espn.png" #:module_width 10)
(qr-code "http://www.google.com" "google.png" #:module_width 7)
(qr-code "https://github.com/oplS16projects" "github.png" #:module_width 9)
```
Output the following codes:

ESPN:
![espn-qr](https://github.com/nickfinocchiaro/FP2/blob/master/espn.png)

Google:
![google-qr](https://github.com/nickfinocchiaro/FP2/blob/master/google.png)

Our GitHub Repository:
![github-qr](https://github.com/nickfinocchiaro/FP2/blob/master/github.png)

pretty simple. Great for very lightweight procedures. I could teach my mom how to do this one. it'd be really cool if you could a gui for
this so a user could create the file that is placed in the desired directory by providing the link and taking an input for width. That
way there is no need to rearrange files from downloads or other online qr maker.



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
