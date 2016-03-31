#lang racket
; Kyle Jolicoeur
; FP2
; Organization of Programming Languages
; Professor Martin

(require tzinfo)
; Time zone database querying library

; 1.
; (all-tzids) returns every time zone in the unix database
; ^ Commented out due to the massive REPL spam.

; 2.
; (current-tzinfo-source) returns the entire Unix timezone
; database. Fills the REPL with even more detailed information
; about the time zones including the Latitude and Longitude of the
; timezones, including their country code as well. This procedure
; pretty much does the same thing as (all-tzids) but increases the detail.
; Commented out due to REPL spam.

; 3.
; Following code tells the user what time zone their computer
; is set to based on the Unix timezone database
(display (list "\nThe timezone this computer is set to:\n"
               (system-tzid)
               "\n\n"))
; 4.
; Following code uses (tzid-exists?) to check if a
; time zone exists in the Unix timezone database
(display (list "\nDoes EST exist on this computer: "
               (if (tzid-exists? "US/Eastern")
                   "yes\n"
                   "no\n")
               "Does US Mountain time exist on this computer: "
               (if (tzid-exists? "US/Mountain")
                   "yes\n"
                   "no\n")
               "Does PST exist on this computer: "
               (if (tzid-exists? "US/Pacific")
                   "yes\n"
                   "no\n")
               "Does Hawaii'an time exist on this computer: "
               "\nDoes EST exist on this computer: "
               (if (tzid-exists? "US/Hawaii")
                   "yes\n\n"
                   "no\n\n")))
; 5.
; Following code takes the ISO 3166-1 alpha-2 country
; code and lists all time zones that exist in the database
; corresponding to that country code
(display (list "\nList all time zones in Spain :\n"
               (country-code->tzids "ES")
               "\nList all time zones in Great Britian :\n"
               (country-code->tzids "GB")
               "\n"))
