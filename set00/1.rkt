;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 1 of Lesson 0.4 By Feng Shi
(define DAYSOF-LEAP-YEAR 366)
(define HOURSOF-ONE-DAY 24)
(define MINUTESOF-ONE-HOUR 60)
(define SECONDSOF-ONE-MINUTE 60)

;First expression to count s
(define COUNT-S-1 (* DAYSOF-LEAP-YEAR
                     HOURSOF-ONE-DAY
                     MINUTESOF-ONE-HOUR
                     SECONDSOF-ONE-MINUTE))

;Second expression to count s
(define COUNT-S-2 (* (* (* DAYSOF-LEAP-YEAR HOURSOF-ONE-DAY)
                     MINUTESOF-ONE-HOUR) SECONDSOF-ONE-MINUTE))

;Third expression to count s
(define COUNT-S-3 (* (* MINUTESOF-ONE-HOUR SECONDSOF-ONE-MINUTE)
                     (* HOURSOF-ONE-DAY DAYSOF-LEAP-YEAR)))