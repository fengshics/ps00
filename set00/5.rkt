;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Ex 5 of lesson 0.4 by Feng Shi
(require rackunit)

; sq : Number -> Number
; GIVEN: a number
; RETURNS: the square of the number
; Examples:
; (sq 5)  => 25
; (sq -11) => 121
(define (sq n)
  (* n n))

;test
(define begin-for-test
  (check-equal?
   (list (sq 5) (sq -11))
   (list 25 121)
  "the sq did not return the correct squree of a number"))