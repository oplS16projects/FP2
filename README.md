## My Library: pprint
My name: Kevin Dibble
Write what you did!

I chose the PPrint: A Universal Pretty-Printer because it looked interesting and more involved than my FP1 library. Additionally, I remember working on some pretty printing work during my Computing IV course.
I started working through the documentation page (http://docs.racket-lang.org/pprint/index.html) and put together several of the examples with my own additions. This library is quite large and I have only scratched the surface.

Basic pretty print functionality consists of the doc structure which is the backbone of the system. Basic prodecures for creating docs include text, char, and more. Combining these docs is where the power of this library comes in. Combination procedures include the append set, the concat set, nest, fill, markup, and more. Defined docs like line and break are also built in for ease of use.

The first piece of demo code I expounded on was the "Getting Started" section that laid out how to use the absolute basics of the library.
![Alt text](/basicPP.png?raw=true "Normal")
Here you see the indenting and appending style in use.
```
(vb-append x) → doc?
  x : doc?
```
Takes a list of docs and appends them all together with a break in-between each doc

```
(nest n d) → doc?
  n : natural-number/c
  d : doc?
```
Takes a doc and increases the docs indent from this point onward (important note, the current line does not get an indent).

Putting them together into a multiple line segment:
```
(pretty-print
   (vb-append
    (nest 4 (vb-append (text "while (true) {")
                      (text "f();")
                      (nest 4 (vb-append (text "if (done())")
                                        (text "exit();")))
                      (nest 4 (vb-append (text "else {")
                                        (text "printf(\"foo bar\");")))
                      (text "}")
                      ))
    (text "}")
    (char #\a)
    break
))
```

Pretty print also allows for markups:
![Alt text](/markup.png?raw=true "Normal")

One procedure I saaw that I thought was interesting was "fill" which adds spaces to the end of a doc up to the specified char limit.
![Alt text](/fill.png?raw=true "Normal")
```
(fill 10 (text "empty"))
```
This line adds 5 spaces to the doc "empty" to make "empty     ".
If the line is already the max size or larger, fill doesn't change anything:
```
(fill 6 (text "linebreak"))
```
