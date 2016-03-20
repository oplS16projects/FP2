#lang racket
(require xml)

;processing insruction
(define proc-inst (p-i 'racket  ;processing instruction structure
                       'racket
                       'xml
                       "version='1.0' standalone='no'"))

;prolog with SVG doc type declaration.
(define svg-prolog (prolog (list proc-inst) ;prolog structure
                     (document-type
                      'svg
                      (external-dtd/public
                       "-//W3C//DTD SVG 1.1//EN"
                       "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd")
                      #f)
                     '()))

;xexpr defs of xml elements 
(define text-tag
  '(text ((x "50") ;attributes
          (y "120")
          (font-size "80")
          (font-family "Verdana")
          (fill "aliceblue"))
         "Racket")) ;content

(define rect1-tag
  '(rect ((x "0")
          (y "0")
          (width "400")
          (height "200")
          (fill "navy"))))

(define rect2-tag
  '(rect ((x "25")
          (y "30")
          (width "340")
          (height "140")
          (fill "red"))))

;complete document body xexpr definition
(define svg-body
  (list 'svg
         '((xmlns "http://www.w3.org/2000/svg")
           (version "1.1")
           (width "400px")
           (height "200px")
           (viewbox "0 0 400 200"))
         rect1-tag
         rect2-tag
         text-tag))

;complete xml document
(define svg-doc (document ;document structure
                 svg-prolog ;doc prolog
                 (xexpr->xml svg-body) ;doc body. xexpr to xml.
                 '())) ;list of misc items

;write xml document to file
(define out (open-output-file ".\\racket.svg" #:exists 'replace))
(write-xml svg-doc out)
(close-output-port out)
 