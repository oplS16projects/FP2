## My Library: rsound; portaudio
My name: Adam Contardo

  The library I explored was rsound, and it uses the portaudio package as a dependency.    This library has the capability to edit, read and write, and play sounds and uses 16-bit pulse-code modulation (PCM) .  Before getting any sounds to play, I needed to initialize portaudio, and select the api of the default audio device using (display-device-talble) and assigning the host api for the audio device. (paMME) Afterwards, you are able to import and test and play wav files that use 16 bit PCM. The procedure rs-read allows you to import the wav file as a string path, and can be played with the play procedure, after rs-read returns an rs-sound object. Any sounds can be stopped with the stop procedure that stops all sounds and takes no arguments.  The rsound library also has support for making and playing streams and queue playback defined by number of frames. In addition, rsound also brings the ability to record, read and write sounds to disk, manipulate sounds, and even visualizing sounds in waveform, and other representations. There are more packages that provide other utilities, and networking capabilities, and the ability to play piano tones. There are many sound manipulation techniques to explore within the library.

### Highlights:

Before anything can be played, portaudio must be initialized with (pa-maybe-initialize), which initializes pa if it hasn’t been already, then checks for initialization. 

```racket
(require rsound)
(require portaudio)
;try to initialize portaudio if it hasn't been already
(pa-maybe-initialize)
;check if pa initialized correctly
(pa-initialized?)
;=>#t
```

To set the host api of the default audio device, I used display-device-table to get information.
```racket
(display-device-table)
;Returns all audio devices with their index, api, name, input channels, and output channels

;default host apis of audio devices
(default-host-api)

;Assign default api for audio device ('paMME)
(host-api 'paMME)
```

![fp2img](https://cloud.githubusercontent.com/assets/17789863/14004854/c3404848-f133-11e5-9d5d-af41b82f485c.png)

After setting up the device using the portaudio procudures, you can then use the rsound procedures to play sounds.
The rs-read procedure can be used to get the path of a wav file and then play and manipulate the sound, as well as providing procedures to return information about the wav file. Note that wavs are encapsulated in an rsound object. I loaded and played a thunder sound, and tested some procedures, as well as playing multiple sounds at once on queue.
```racket
;Plays a test sound
(play ding)

;rs-read takes a string path to a wav file that has a bit resolution of 16
;then the play procedure start playing the sound
(rs-read (string->path "./thunder.wav"))
;=>(rsound #<s16vector> 0 718848 44100)

;Plays a thunder sound
;(play (rs-read (string->path "./thunder.wav")))

;(rs-read-sample-rate "./thunder.wav")
```

The library has a ton of things to explore involving sound file manipulation, and this is only a small portion of what the packages have to offer. 
