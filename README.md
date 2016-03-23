## My Library: (2htdp/image) and (planet dsheap/color-utils)
The second library a graphics utility I found that allows manipulation of colors within an image.  The series of tutorials for how I found these tools and the explanation on how to use them is located at: http://www.cdf.toronto.edu/~heap/Racket/encryption.html

My name: Brendan Bousquet

I stumbled upon some tutorials for encrypting an image in Racket similar to the project that I did in Fred's Computing 4 section last Spring.  Since I had a good time replicating my old Sierpinski projects in Racket, I thought doing this one would be interesting as well.  In C++ we used SFML, for Racket I found this set of tools, made by an online lecturer Danny Heap, that is used in conjunction with the standard image library in Racket to be able to manipulate the color values of images.  I then followed the tutorials that Mr. Heap provided and found the process to be very intriguing.  

The library allows the for the user to access a list of all the colors within an image, and in addition access to the red, blue, and green values of all the colors within an image.  This is similar to all graphics libararies and is cleverly implemented so that a color can be specified and the rest of the values can be left as the image previously was.  That is how the red, blue, and green within the image are encrypted individually.  

The powerful functions in this implementation are 'mult-mod' and 'obscure-intensity'.  These are what are used to actually create the encryption by creating a seemingly random permutation of the existing colors, and then reversing that permutation so the original image is produced at the end.  

'''Racket
; mult-mod : Number Number Number -> Number
; Remainder of xy divided by z
(define (mult-mod x y z)
  (remainder (* x y) z))
  
; obscure-intensity: Number Number -> Number
; One less than the remainder of [n+1]
; times c divided by 257  
(define (obscure-intensity n c)
  (sub1 (mult-mod (add1 n) c 257))) 
'''

These are used to encrypt the values 1 to 256 by multiplying them by some number with no factors in common with 257.

In this example 31 is used because it has no factors in common with 257.
'''Racket
(define scrambled-red
  (for/image ([old beach])
    (red+color (obscure-intensity (color-red old) 31) old)))
'''

To unscramble the list of colors, the position that 0 is placed in (in this case position 199 within the list) is used in the same 'obscure-intensity' procedure.

'''Racket
(define unscrambled-red
  (for/image ([old unscrambled-blue])
    (red+color (obscure-intensity (color-red old) 199) old)))
'''
If all the 'scramble' procedures are called and then the respective 'unscramble' procedures are also called, the image will go from a normal state, all the way through 3 levels of encryption, then 3 levels of decryption, until finally ending in its original state.
