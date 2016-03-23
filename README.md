## My Library: Plot: Graph Plotting
My name: John Adams

While not very, original, with a bunch of my classmates doing the same, I explored the Plot: Graph Plotting library for FP2.

The Plot library allows users to use the (plot) function to set up, and then graph functions that they select.
I have 3 flavors of graphs for you today:

1) Standard Exponential
```
(require plot)
(plot function sqr -2 2)
```
![fp2 graph1](https://cloud.githubusercontent.com/assets/17749976/14003940/e5cdf20e-f12c-11e5-8102-c4d797562108.jpg)

The first "Square" Graph simply plots the function "y=x^2", from -2 to 2.
In:
```
(plot function sqr -2 2)
```
-2 and 2 serve as the boundaries of the graph, while sqr is used as the function being graphed.

2) Polar Graphing
```
(define (funct1 θ) (+ 1/2 (* 1/6 (cos (* 5 θ)))))
(define (funct2 θ) (+ 2 (* 1/4 (cos (* 10 θ)))))
(plot (list (polar-axes #:number 10)
              (polar-interval funct1 funct2 #:label "[f1,f2]")))
```
![fp2 graph2](https://cloud.githubusercontent.com/assets/17749976/14004036/9d42252c-f12d-11e5-819d-7373565567d2.jpg)

Polar Graphing becomes a bit more complicated. It is necessary to define the polar function (or, in this case, functions)
beforehand. Then (plot) can graph a polar-interval structure, comprised of both polar functions, creating one graph.
The (polar-axes #:number 10) gives the graph its 10 'spokes'.

3) Vector Plotting
```
(plot (vector-field (λ (x y) (vector (+ x y) (- x y)))
                      -4 4 -3 3))
```
![fp2 graph3](https://cloud.githubusercontent.com/assets/17749976/14004090/11cf4a8c-f12e-11e5-80b9-1b1a776f519d.jpg)

The Plot library contains the elements needed for Vector Graphs. The four numbers (-4 4 -3 3) represent the X and Y boundaries,
respectively. The arrows representing the individual vectors arch away from the origin (0, 0) of the graph, the size indicating
the magnitude of the vector.


Plot contains commands allowing users to give functions their own distinct colors, styles (dotted or full line), and label the function, i.e.:
```
(plot (function sqr -2 2 #:color 3 #:style 'dot #:label "y = x^2"))
```
Above would result in a graph much like the first I presented, however with some differences:
1. The graph would be colored blue instead of red, the default
2. Instead of solid lines, the graph would be made of dots.
3. In the upper left corner, a box will appear, with "y = x^2" followed by the graphed function's appearance.
  (In this case, a red, dotted line)
