## My Library: (tcp)
My name: Donvyn Pickler

After deciding that net/url, while useful, wasn't exactly what I was looking for.  One quick and uninteruptted google search later (why didn't I do that at the start) I turned up the [tcp library](https://docs.racket-lang.org/reference/tcp.html).  After skimming through the library with my mediocre amount of networking knowledge, I have deduced that this is probably what I was looking for last time.  

```(tcp-listen)``` and ```(tcp-connect)``` sound pretty simple and useful, lets see what we can do with those.


######Input:
Looks like these two should get us a listening server on the machine, using port 1337 (because I am 12).
```
(define my-port 1337)
(define my-listener (tcp-listen my-port))
```
######Output:
Nothing, which seems pretty good compared to an error or that ugly html dump I got last time.  When I ask for my-listener I get back ```#<tcp-listener>```, which I assume is a good thing.

#####Next:
For my next trick, I will open up another instance of DrRacket and attempt to make use of this ```(tcp-connect)``` command.  Lets take a look at ```(tcp-connect)```.

![](https://github.com/draconicdon/FP2/blob/master/tcp%20connect.png?raw=true "uploaded to github instead of imgur")

Now, if only I could figure out how to make folders in github.

This looks pretty straight forward, and since I am doing this all on one machine, also because the documentation says I can, I will be using "localhost" to specify that I want to connect to something on this machine.
######Input:
```
(define my-port 1337)
(define my-host "localhost")
(define my-connection (tcp-connect "localhost" my-port))
```

######Output:
![](https://github.com/draconicdon/FP2/blob/master/connect%20failure.png?raw=true "What?")
What?  After some reading (two lines down from where I stopped), apparently this returns two items.  Honestly, I am not sure what to do with that right now, so I'll give it a try in the command line.

#####Input:
###### Server:
Just did a fresh run of what I have up there with the addition of a handy proceedure called ```(tcp-accept```, which takes a listener object.
###### client: Same as above minus the define for "my-connection", instead I'll just enter ```(tcp-connect my-host my-port)``` into the command line at the bottom.

####Output:
~~Oh wow, that actually did something.~~  Everything worked as expected, the output can be seen below.
![](https://github.com/draconicdon/FP2/blob/master/tcp%20success.png?raw=true "It almost seems too easy.")

Just to make sure that this wasn't some kind of fluke, I quicklly tried another test using the same listener but trying to make the connection using "localhost" and a different port and it threw an error saying it couldn't.

##Thoughts:
This is a good small step, but there are a lot of references in the documentation to things like "synchronizable events" and "custodians" that I am not super familiar with.  I think those would be key to getting any practical use out of this library.

[It's not like there are any models out there that I can follow or anything.](https://rosettacode.org/wiki/Chat_server#Racket)


<!-- Links -->
[schedule]: https://github.com/oplS16projects/FP-Schedule
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
