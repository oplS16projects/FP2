Josh Blanchette's FP2 report.

START

Hello. I used a plot library, and messed around with certain plots and shapes to see what I can produce.  At first, I just made a simple plot, just to get the feel of things.  The picture is below.

![alt tag](https://github.com/JoshB53/FP2/blob/master/Graph1.png)

After I produced this graph successfully, I then got into more complex looking graphs.  I made a 'contour' graph, that required a simple inline lambda function.  This produced a, funky looking graph that has no relevance to data that matters, but it was still fun to play with.  The picture is below.

![alt tag] (https://github.com/JoshB53/FP2/blob/master/Graph2.png)

And here is the code sinppet.

```
(plot (contours (λ (x y) (- (sqr x) (sqr y)))
                  -4 2 -4 2 #:label "z"))
```

Lastly, I produced a graph that has multiple plot points on it.  The image is below

![alt tag] (https://github.com/JoshB53/FP2/blob/master/Graph3.png)

And here is the code snippet.

```
(plot (list (function sqr 0 30)
              (point-label (vector 22 22))
              (point-label (vector 22 240))
              (point-label (vector 22 420))))
```

The code was pretty straightforward, where as the syntax was easy to understand.  If I had some valuable data to graph, this library would be very useful.  I also learened that once the graph is produced, you can zoom in and out of sections in the graph.  Pretty cool.
