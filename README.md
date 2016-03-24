# Final Project Assignment 2: Exploration (FP2)
Library: "2D and 3D Renderers"

Name: Chhun Kim

# What I did
I used the "2D and 3D Renderers" to create a few 2D and 3D graphs. This library allows delevopers to create graphs in general like we have seen the math. There are so many features that we could actually play around with to create either a simple graph or a complex graph. For what I did was creating a few 2D and 3D graphs by using plot library. In the plot graph, it was to plot the points in random number which "random" is the build-in variable for randomly picking number. For the second one, that is, also the 2D graph using the sqaure function to create a parabola graph. 3D Renderer is such a useful library which allows developers to create a 3D graph in different shapes. The shape of each graph is depend on the procedure that we use such as 'parametric3d' created a sphere graph and 'discrete-histogram3d' created a histogram graph in 3D.

# Code Highlights
````
#lang racket

(require plot)
(require (only-in plot/utils 3d-polar->3d-cartesian))

(parameterize ([plot-width    150]
                 [plot-height   150]
                 [plot-x-label  #f]
                 [plot-y-label  #f])
    (define xs (build-list 20 (λ _ (random))))
    (define ys (build-list 20 (λ _ (random))))
    (list (plot (points (map vector xs ys)))
          (plot (points (map vector xs ys)
                        #:x-min 0 #:x-max 1
                        #:y-min 0 #:y-max 1))))

(plot (function sqr -2 2))

(plot3d (parametric3d (λ (t) (3d-polar->3d-cartesian (* t 80) t 2))
                        (- pi) pi #:samples 3000 #:alpha 0.5)
          #:altitude 25)

(plot3d (discrete-histogram3d '(#(a a 1) #(a b 2) #(b b 3))
                                #:label "Missing (b,a)"
                                #:color 2 #:line-color 4))

```

# Output

![alt tag](https://github.com/chhunkim/FP2/blob/master/EPouput1.PNG)
![alt tag](https://github.com/chhunkim/FP2/blob/master/EPoutput2.PNG)
![alt tag](https://github.com/chhunkim/FP2/blob/master/EPoutput3.PNG)


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
