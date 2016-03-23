## My Library: Images
My name: Andry Lora


  The library that I tried was the images library.The reason I picked this library was because it popped out at you because the name was short and simple.
  
 The first thing I did was print out the some of the icons that are provided in the Image library such as the stickman and a bomb.I changed some of the color values of the stickman to see how the image library handled edges and line seperations and it handles it really well this can be seen in Figure 1.
 
 ![Alt text](https://github.com/andrylr/FP2/blob/master/Figure1.png)
   <p align="center">Figure 1 </p>
 
 Then I noticed that in the documentation for the bombs that there are different materials that are used for the bombs and this changes their appearances and that you could use a list within a list to display as many as you want the code can be seen below and the differences in Figure 2.
 
 ```racket
 (for/list ([material  (list plastic-icon-material
                              rubber-icon-material
                              glass-icon-material
                              metal-icon-material)])
    (bomb-icon #:height 32 #:material material))

 ```
 
  
  ![Alt text](https://github.com/andrylr/FP2/blob/master/Figure2.png)
   <p align="center">Figure 2 </p>
  
  
  Then I began using list to create a set of combination of arrow keys to show the Konami command which is a cheat code that are in some of the companies' games.With the use of list I also created a little story about a villain kicking a bomb into an unsuspecting person.
  

I did run into something that could be a concern if I plan on using this library which is the requirement of a lot of items.I do not know if this causes any problems in the running of the code but I noticed this while I was working with this library.For the use of the bomb image, arrows and text the requirements can be seen below.

```racket 
(require images/icons/style)
(require images/icons/control)
(require images/icons/stickman) 
(require images/icons/symbol)
(require images/icons/misc)
(require images/icons/arrow)
```



  



