## My Library: Images
My name: Sean Berube

##Narrative
Since I'm very much drawn to visual based creations, I decided to use images for my second library. There are two types of images that
can be created in this library - icons and logos. From my experience icons seemed to be more versatile and in depth in terms of what pictures you can create and what you can do with them. Compared to the turtles library, images appears to be simpler in terms of what you can accomplish as its essentially just choosing a particular icon/logo, and then tweaking its appearance to your liking. That said I found the running man animations to be a really neat feature of the library. You can also using floating-point bitmaps to make flomaps, which resemble venn-diagrams in appearance.

##Highlights
The code below shows how I made a foot-icon, and a planet-logo.

* (foot-icon #:color "yellow" #:height 124
             #:material glass-icon-material)
             
* (planet-logo #:height 60)

Once you define the type of logo, you have other options to edit your image such as altering its color, size, and material which changes the aesthetic appearance of the image itself (i.e. glass might make it more shiny).

The one thing I particularly liked about the icon library was that you could make animations, such as a man running.

* (for/list ([t  (in-range 0 1 1/8)])
    * (running-stickman-icon t #:body-color "pink" #:head-color "red" #:arm-color "purple" #:height 40))
    
Essentially you make a list of stick figures, the range specifies that I want to depict one complete running motion through the use 
of 8 images. 

The code below shows an example of how to create an ellipses in a flomap.

       (send fm-dc set-brush "orange" 'solid)
       (send fm-dc draw-ellipse 84 44 192 192))

Like an icon or logo, you can affect the color and size of the ellipses, but what's unqiue about this image is that you can use the first two paramters of draw-ellipse to alter the location of where the picture will be placed.

##Diagram/Output
The diagram below shows the resulting  images from my code. The first 4 are icons (the 4th being the animation) and the planet is a logo. The mess of circles cluttered together would be the flomap I created.

![alt tag] (https://github.com/sberube484/FP2/blob/master/explore2photo.PNG)
![alt tag] (https://github.com/sberube484/FP2/blob/master/explore2photo2.PNG)
