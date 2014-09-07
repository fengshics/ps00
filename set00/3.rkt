;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 3 of lesson 0.4 by Feng Shi
(require htdp/testing)
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celsius.
; Examples:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778
(define (f->c f) (* (- f 32) (/ 5 9)))

;test for the f->c function
(check-within (list (f->c 100) (f->c 32))
              (list 37.77777777777778 0)
              0.1)

