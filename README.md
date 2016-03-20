## My Library: xml parsing and writing
My name: Dmitri Kheifets

## Scope:
Exploring XML parsing/writing library and associated document structure type used to represent XML.
The demo code is generating simple SVG (Scalable Vector Graphics) standard-compliant XML document, exporting results to .svg file.
While it is possible to read-in complete XML template, here I'm manually constructing XML document with separate x-expresions
and built-in structures to gain familiarity with document flow for possible future applications.

## Highlights:

Since Racket base xml library doesn't preserve document type definitions (DTD),
I'm manually constructing DTD portion of XML document using provided `prolog` structure: `(struct prolog (misc dtd misc2))`,
where `dtd` is another structure `(struct document-type (name external inlined))`

> ```racket
> (define svg-prolog (prolog (list proc-inst) ;prolog structure
>                     (document-type
>                      'svg
>                      (external-dtd/public
>                    "-//W3C//DTD SVG 1.1//EN"
>                      "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd")
>                     #f)
>                    '()))
> ```

-
>##### SVG document rendering
> ![#racket.png][racket.png]
-

Above is an SVG rendering described with only two types of elements - `rect` and `text`
Here, each type is represented with elements in form of x-expresions:

```racket
(define text-tag
  '(text ((x "50")                ;attributes
          (y "120")
          (font-size "80")
          (font-family "Verdana")
          (fill "aliceblue"))
         "Racket"))               ;content

(define rect1-tag
  '(rect ((x "0")
          (y "0")
          (width "400")
          (height "200")
          (fill "navy"))))
```

A complete document is represented with `document` structure, `(struct document (prolog element misc)` combining previously defined prolog and a nested tree of elements in form of tree of structures. A list of x-expressions describing document's elements is converted to tree of structures using xexpr->xml. 

```racket
; complete xml document
(define svg-doc (document              ;document struct
                 svg-prolog            ;doc prolog
                 (xexpr->xml svg-body) ;doc body, xexpr-to-xml
                 '()))                 ;list of misc items, none
```

<!-- Links -->
[racket.png]: ./racket.png
