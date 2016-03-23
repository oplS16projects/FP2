#lang racket
(require tzinfo)
(all-tzids)
(tzid-exists? "Asia/Jakarta")
(utc-seconds->tzoffset "Asia/Jakarta" 0)
(tzid->country-codes "Asia/Jakarta")
(country-code->tzids "ID")
(system-tzid)