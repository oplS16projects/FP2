#lang racket

(require rsound)
(require portaudio)


;try to initialize portaudio if it hasn't been already
(pa-maybe-initialize)

;check if pa initialized correctly
(pa-initialized?)
;=>#t

;Returns a table of audio devices
(display-device-table)
;Returns all audio devices with their index, api, name, input channels, and output channels


;default host apis of audio devices
(default-host-api)

;Assign default api for audio device ('paMME)
(host-api 'paMME)

;Plays a test sound
(play ding)

;re-read takes a string path to a wav file that has a bit resolution of 16 or higher
;then the play procedure start playing the sound
(rs-read (string->path "./thunder.wav"))
;=>(rsound #<s16vector> 0 718848 44100)

;Plays a thunder sound
;(play (rs-read (string->path "./thunder.wav")))
(rs-read-sample-rate "./thunder.wav")

;Created to play differnt sounds easier.
(define (play-sound x)
  (cond ((= x 0) (play ding))
        ((= x 1) (play (rs-read (string->path "./thunder.wav"))))
        ((= x 2) (play (rs-read (string->path "./fire.wav"))))
        (else (error "No sound available"))))

