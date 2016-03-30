#lang racket

;; import class bindings
(require racket/class)

;; COORD object
;; binds an X and Y position together into one data object
(define coord%
  (class object% (super-new)

    (init x y)

    (define x-pos x)
    (define y-pos y)

    (define/public (get-x) x-pos)

    (define/public (get-y) y-pos)

    (define/public (set-x new-x)
      (set! x-pos new-x))

    (define/public (set-y new-y)
      (set! y-pos new-y))))

;; Constructor for COORD
(define (make-coord x y)
  (new coord% [x x] [y y]))

;; short-hand to check if a given variable is a COORD
(define (coord? coord) (is-a? coord coord%))

;; short-hand to check if a given variable is a list of COORDs
(define (list-of-coords? lst)
  (or (list*of coord?) (eq? lst '())))

;; display a COORD object
(define (display-coord coord)
  (display "[")
  (display (send coord get-x))
  (display ",")
  (display (send coord get-y))
  (display "]"))

;; display a list of COORD objects
(define (display-coord-list coords)
  (begin
    (map (λ (n) (display-coord n) (display " ")) coords)
    (newline)))



;; contract that defines the publicly available methods of
;; a PIECE object. This contract functions as an interface
;; for the polymorphic chess piece data type.
(define piece/c
  (class/c
   ; get current COORD of piece
   (get-coord (->m coord?))
   (inherit (get-coord (->m coord?)))
   (super (get-coord (->m coord?)))
   (override (get-coord (->m coord?)))
   ; (VIRTUAL) get all valid moves for piece
   (get-valid-moves (->m list-of-coords?))
   (inherit (get-valid-moves (->m list-of-coords?)))
   (super (get-valid-moves (->m list-of-coords?)))
   (override (get-valid-moves (->m list-of-coords?)))
   ))

;; base class for chess piece that defines functionality
;; common to all chess pieces
(define/contract piece%
  piece/c
  (class object%
    (super-new)
    (init coord)

    ;; coord member variable
    (define m-coord coord)

    ;; get the COORD of the piece
    (define/public (get-coord) m-coord)

    ;; (VIRTUAL) default implementation returns
    ;; empty list
    (define/public (get-valid-moves) '())
    ))

;; PAWN class
;; contains overrided behavior for get-valid-moves
(define pawn%
  (class piece%
    (init coord)
    (super-new [coord coord])

    ;; inherit get-coord from super-class
    (inherit get-coord)

    ;; prototype: returns space above current piece
    (define/override (get-valid-moves)
      (let ((x (send (get-coord) get-x))
            (y (send (get-coord) get-y)))
        (list (make-coord x (+ y 1)))))
    ))

;; KING class
;; contaisn overrided behavior for get-valid-moves
(define king%
  (class piece%
    (init coord)
    (super-new [coord coord])

    ;inherit get-coord from super-class
    (inherit get-coord)

    ;; prototype: returns 4 spaces adjacent
    ;; to piece (yes I know that's not how
    ;; the king actually moves in chess)
    (define/override (get-valid-moves)
      (let ((x (send (get-coord) get-x))
            (y (send (get-coord) get-y)))
        (list (make-coord x (+ y 1))
              (make-coord x (- y 1))
              (make-coord (+ x 1) y)
              (make-coord (- x 1) y))))
    ))

;; constructor for pieces, takes type of piece
;; and start coord as arguments
(define/contract (make-piece type coord)
  (-> any/c coord? any/c)
  (new type [coord coord]))