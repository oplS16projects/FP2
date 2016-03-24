#lang racket

(require rsound)

(define mysound (rs-read (string->path "sample.wav")))
(define drumpart (rs-read (string->path "drums.wav")))

;;(play mysound)
;;(play drumpart)

(define astream (make-pstream))
;;(pstream-queue astream mysound (pstream-current-frame astream))
;;(pstream-queue astream drumpart (pstream-current-frame astream))

(pstream-queue astream mysound (pstream-current-frame astream))
(pstream-queue astream drumpart
               (+ (pstream-current-frame astream) (rs-read-frames (string->path "sample.wav"))))
