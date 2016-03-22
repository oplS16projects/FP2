#lang racket/gui

(require (lib "gl.ss" "sgl")
         (lib "gl-vectors.ss" "sgl")
)


(define (resize w h)
  (glViewport 0 0 w h)
  #t
)

(define (draw-opengl)
  ;(glClearColor 0.0 0.0 0.0 0.0)
  (glClear GL_COLOR_BUFFER_BIT)
  ;(glColor3d 1.0 1.0 1.0)

  (glMatrixMode GL_PROJECTION)
  (glLoadIdentity)
  ;(glOrtho 0.0 1.0 0.0 1.0 -1.0 1.0)
  (glMatrixMode GL_MODELVIEW)
  (glLoadIdentity)

  (glRotatef 25.0 1.0 0.0 0.0)
  (glRotatef 25.0 0.0 1.0 0.0)

  ;;Multi-colored side - FRONT
  (glBegin GL_POLYGON)
  (glColor3f 1.0 0.0 0.0)
  (glVertex3f 0.5 -0.5 -0.5)
  (glColor3f 0.0 1.0 0.0)
  (glVertex3f 0.5 0.5 -0.5)
  (glColor3f 0.0 0.0 1.0)
  (glVertex3f -0.5 0.5 -0.5)
  (glColor3f 1.0 0.0 1.0)
  (glVertex3f -0.5 -0.5 -0.5)
  (glEnd)

  ;;White-colored side - BACK
  (glBegin GL_POLYGON)
  (glColor3f 1.0 1.0 1.0)
  (glVertex3f 0.5 -0.5 0.5)
  (glVertex3f 0.5 0.5 0.5)
  (glVertex3f -0.5 0.5 0.5)
  (glVertex3f -0.5 -0.5 0.5)
  (glEnd)

  ;;Purple-colored side - RIGHT
  (glBegin GL_POLYGON)
  (glColor3f 1.0 0.0 1.0)
  (glVertex3f 0.5 -0.5 -0.5)
  (glVertex3f 0.5 0.5 -0.5)
  (glVertex3f 0.5 0.5 0.5)
  (glVertex3f 0.5 -0.5 0.5)
  (glEnd)

  ;;Green-colored side - LEFT
  (glBegin GL_POLYGON)
  (glColor3f 0.0 1.0 0.0)
  (glVertex3f -0.5 -0.5 0.5)
  (glVertex3f -0.5 0.5 0.5)
  (glVertex3f -0.5 0.5 -0.5)
  (glVertex3f -0.5 -0.5 -0.5)
  (glEnd)

  ;;Blue-colored side - TOP
  (glBegin GL_POLYGON)
  (glColor3f 0.0 0.0 1.0)
  (glVertex3f 0.5 0.5 0.5)
  (glVertex3f 0.5 0.5 -0.5)
  (glVertex3f -0.5 0.5 -0.5)
  (glVertex3f -0.5 0.5 0.5)
  (glEnd)

  ;;Red-colored side - BOTTOM
  (glBegin GL_POLYGON)
  (glColor3f 1.0 0.0 0.0)
  (glVertex3f 0.5 -0.5 -0.5)
  (glVertex3f 0.5 -0.5 0.5)
  (glVertex3f -0.5 -0.5 0.5)
  (glVertex3f -0.5 -0.5 -0.5)
  (glEnd)
)


(define my-canvas%
  (class* canvas% ()
    (inherit with-gl-context swap-gl-buffers)

   (define/override (on-paint)
      (with-gl-context
        (lambda ()
          (draw-opengl)
          (swap-gl-buffers)
        )
      )
    )

    (define/override (on-size width height)
      (with-gl-context
        (lambda ()
          (resize width height)
        )
      )
    )

    (super-instantiate () (style '(gl)))
  )
)

(define win (new frame% (label "OpenGl Test") (min-width 450) (min-height
450)))
(define gl  (new my-canvas% (parent win)))

(send win show #t)