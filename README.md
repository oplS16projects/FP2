

## My Library: JSON 
Cullin Lam

#Narrative 

I decided to try out the [JSON][json] library as it was easily accessible since it is a part of the base racket package. My goal is to work with formatted data and plot the data using plot lib. JSON is a greate data exchange format and is easily parsed. 
I tested decoding and encoding strings from & into JSON. 

##Example 1 

```Racket 
(define x (string->jsexpr "{\"foo\": \"bar\", \"bar\": \"baz\"}"))
(for (((key val) (in-hash x)))
  (printf "~a = ~a~%" key val))
```

This first example shows the conversion of a string into a jsexpr object. The object is then iterated over and each key and values is printed out using printf. 

```
foo = bar
bar = baz
```
This result was expected. 

Next I decided to mix things up by writing a simple JSON file: 

test.json 
```
{
  "Test":123,
  "People":["Wally","Woo","Josh"],
  "Coordinate":{"lat":84,"long":34}
}
```

Then using a file port I opened the file for reading and saved the result. The result was then converted into a jsexpr 
and each of the objects key value pairs was printed 

```Racket
(define file (open-input-file "test.json"))
(define json-str (read-string 100 file))

(define y (string->jsexpr json-str))
(for (((key val) (in-hash y)))
  (printf "~a = ~a~%" key val))
```
The result was : 

```
Test = 123
People = (Wally Woo Josh)
Coordinate = #hasheq((long . 34) (lat . 84))
```

Lastly I converted the jsexpr back into a string and printed it out in the REPL

```
(define z (jsexpr->string y))
```
Yielded: 
```
"{\"Test\":123,\"People\":[\"Wally\",\"Woo\",\"Josh\"],\"Coordinate\":{\"long\":34,\"lat\":84}}"
```

![IMG][img]



<!-- Links -->
[img]: https://github.com/kidculli/FP2/blob/master/editor.png
[schedule]: https://github.com/oplS16projects/FP-Schedule
[json]: https://docs.racket-lang.org/json/
[markdown]: https://help.github.com/articles/markdown-basics/
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request
