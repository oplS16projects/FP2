## My Library: Ring Buffer
My name: David Bui

I decided to use the Ring Buffer library here because I have already had tons of practice with ring buffers and know how they work. A ring buffer works similar to a circular array except it doesn't write over the elements at the beginning; it just goes through the ring buffer again as you try to push back. I used all of the functions in this library and produced the following code:

```
;; Create an empty ring buffer of length 8
(define rb (empty-ring-buffer 8))

;; Push back four numbers into ring buffer
(ring-buffer-push! rb 3)
(ring-buffer-push! rb 7)
(ring-buffer-push! rb 5)
(ring-buffer-push! rb 1)

;; Print out contents of ring buffer afterwards
(for/list ([v rb]) v)

;; Push back three letters into ring buffer
(ring-buffer-push! rb 'a)
(ring-buffer-push! rb 'b)
(ring-buffer-push! rb 'c)

;; Get overall length
(ring-buffer-length rb)

;; Print out current contents
(for/list ([v rb]) v)

;; Push back the letter d to last index
(ring-buffer-push! rb 'd)

;; Change contents at index 2 to be the letter e
(ring-buffer-set! rb 2 'e)

;; Look at new content of index 2
(ring-buffer-ref rb 2)

;; Print out full ring buffer contents again
(for/list ([v rb]) v)
```

