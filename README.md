## My Library: scribble
My name: Rajia Abdelaziz

I was very excited that FP2 was exactly the same as FP1 because that meant that I would get to explore more Racket Libraries! I began by first reading over more of the documentation found at https://docs.racket-lang.org/guide/More_Libraries.html . The library that really interested me was scribble because I am currently enrolled in Professor Jesse Heines' GUI Programming 2 class and he always stresses documentation. 

The scribble library supports writing documentation. It also allows you to generate simple HTML and/or PDF documents. I was particularly interested in creating HTML documents and decided to make the assignment fun by creating a short web page for the story "If You Give a Pig a Pancake" written by Laura Numeroff. I got the idea to use this story because before break we were discussing Laura Numeroff's story "If You Give a Mouse a Cookie". 

In order to start creating the HTML file for the web page I created a file called "Pig.scrbl" and set the language to scribble/base. I put a Title and short description of the story. 

```
#lang scribble/base

@title{If You Give a Pig a Pancake}

If you give a Pig a pancake, she'll want some syrup to go with it.
You'll give her some of your favorite maple syrup, and she'll probably get all sticky.
She'll want to take a bath...
```
Running the output produced a simple HTML document with a title of the short story and introduction:

![alt tag] (https://github.com/rajiaxoxo/FP2/blob/master/screenshot_0.png)

Next, I wanted to write a couple sections of the story: a section on the consequences of giving the Pig a bath and a section on the consequences of visiting her family. In order to do this, I called section to generate a sub-section decleration. 

```
#lang scribble/base

@title{If You Give a Pig a Pancake}

If you give a Pig a pancake, she'll want some syrup to go with it.
You'll give her some of your favorite maple syrup, and she'll probably get all sticky.
She'll want to take a bath...

@section{The Consequences of Bubbles}
When she's in the bath, she'll ask you for some bubbles and a toy. When you give her the bubbles and your rubber duck, she'll feel  and ask you to go visit her family.

@section{The Consequences of Visiting Her Family}
When you go get dressed so you can meet her family, she'll find you'r old tap shoes and she'll want to dance.
```

The output produced two additional sections as expected and a column along the side that directs the users to each of the sections:

![alt tag] (https://github.com/rajiaxoxo/FP2/blob/master/screenshot_1.png)

After creating the sub-sections, I decided to explore more functions in the scribble/base language to give the text more emphasis. I made the last sentance of the first paragraph italics and centered the paragraph. I also made certain words larger and bold for emphasis. To do so I used @larger { }, @italic { }, @centered { }, and @bold { }. 

```
#lang scribble/base

@title{If You Give a Pig a Pancake}

@centered{If you give a Pig a pancake, she'll want some syrup to go with it.
You'll give her some of your favorite maple syrup, and she'll probably get all sticky.
@italic{She'll want to take a bath...}}

@section{The Consequences of Bubbles}
When she's in the bath, she'll ask you for some bubbles and a toy. When you give her the bubbles and your rubber duck, she'll feel @bold{@larger{homesick}} and ask you to go visit her family.

@section{The Consequences of Visiting Her Family}
When you go get dressed so you can meet her family, she'll find you'r old tap shoes and she'll want to dance.

```
This definitely gave the HTML page a more visually appealing feel:

![alt tag] (https://github.com/rajiaxoxo/FP2/blob/master/screenshot_2.png)

Finally, I decided to play around with the itemlist operation. I added a new section About the Author. I then created an itemlist and populated it with items containing details regarding the author's life.

```
#lang scribble/base

@title{If You Give a Pig a Pancake}

@centered{If you give a Pig a pancake, she'll want some syrup to go with it.
You'll give her some of your favorite maple syrup, and she'll probably get all sticky.
@italic{She'll want to take a bath...}}

@section{The Consequences of Bubbles}
When she's in the bath, she'll ask you for some bubbles and a toy. When you give her the bubbles and your rubber duck, she'll feel @bold{@larger{homesick}} and ask you to go visit her family.

@section{The Consequences of Visiting Her Family}
When you go get dressed so you can meet her family, she'll find you'r old tap shoes and she'll want to dance.

@section{About the Author: Laura Numeroff}
@itemlist[@item{Laura Numeroff is the author of many books for young readers including the If you Give... series,}
          @item{She loves to play tennis and to travel, and } 
          @item{She lives in Los Angeles California.}
          ]
```

The final output contained a couple paragraphs about the story and information about the author:

![alt tag] (https://github.com/rajiaxoxo/FP2/blob/master/screenshot_3.png)

That was fun! Please let me know if you have any questions :)
Best,
Rajia
