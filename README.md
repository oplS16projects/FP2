## Programmer: Tony Ventura
## My Library: Plot
For FP2, I explored the Plot library. Using this library, I was able to plot multiple graphs. The great thing about this library is the examples it gives covers just about any sort of graph you could want to make

By default, all functions plot inside the output box in the Racket GUI. By declaring `(plot-new-window? #t)`, I was able to create new windows for each of my plots

I began by running a simple test case given as one of the first examples in the documentation. This function plots the sine function from -pi to pi, and gives it a label of "y = sin(x)".
```racket
(plot (function sin (- pi) pi #:label "y = sin(x)"))
```
The following graph was the result:
![alt-text](https://github.com/tventura1337/FP2/blob/master/basecase.PNG?raw=true "Sine")

From there the possibilities are endless with what you can plot. I kept it somewhat simple and tried to plot multiple 2D functions. Using the parameterize function, one is able to add parameters to a plot window. The following code is the parameters I defined before writing the body. `plot-title` defines a new plot title, `plot-x-label` defines a new x-axis label, and `plot-y-label` defines a new y-axis label.
```racket
(parameterize ([plot-title "My graph"]
               [plot-x-label "Time Spent looking at it (s)"]
               [plot-y-label "Enjoyment level"])...
```
After it was time to write the body. I decided to plot eulers exponential function from 0 to 5, `(plot (function exp 0 5))`, because this was the best choice based on my label names.

The final result produced this as a graph:
![alt-text](https://github.com/tventura1337/FP2/blob/master/mygraph.PNG?raw=true "Sweet Graph")

Next I decided to produce a graph with two functions being plotted. The way to achieve this was to create a list with the `(axes)` proceedure (which returns the renderers for the axes, in order to handle multiple renders), and my two functions that are actually going to be plotted. This list is passed to the plot function, and was successful in creating a graph with both functions. I used the natural log function (with an out of bounds parameter to see how the graph would handle it) and the square function which returns x^2.
```racket
(plot (list (axes)
            (function log -1 5 #:color "green" #:label "y = ln(x)")
            (function sqr -5 5 #:color "blue"  #:label "y = x^2")))
```
This produces the graph below:
![alt-text](https://github.com/tventura1337/FP2/blob/master/2lineplot.PNG?raw=true "Two functions")

I lastly wanted to change things up and plot a 3d graph. I chose to plot a 3d surface of cosh(x)*sinh(y) (the hyperbolic sine and cosine functions) this becomes bound by -pi and pi on both axes. While complex this sounds, the plot function can easily handle situations like this. The actual graph becomes:
```racket
(surface3d (λ (x y) (* (cosh x) (sinh y)))
                     (- pi) pi (- pi) pi #:color "orange" #:style 'bdiagonal-hatch)
```
As you can see the suface3d proceedure is taking in the function with respect to x and y (cosh(x)*sinh(y)) and gives it the bounds -pi to pi on both the x and y axis. Lastly the color is set to orange and the style is changed to give the graph a little pizazz. This is all passed to `(plot3d)` to generate a 3d graph. The resulting graph is below:
![alt-text](https://github.com/tventura1337/FP2/blob/master/3dplot.PNG?raw=true "Fancy")
