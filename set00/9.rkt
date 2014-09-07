;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 9 of lesson 0.4 by Feng Shi
(require rackunit)

; even-number? : Number -> Boolean
; GIVEN: a number
; RTURNS: true if the number is even, otherwise false
; Examples:
; (even-number? 4) => true
; (even-number? -9) => false
; (even-number? 0) = true
(define (even-number? n)
  (if (> (abs (remainder n 2)) 0)
      false
      true))

;test
(check-equal? (list (even-number? 4) (even-number? -9) (even-number? 0))
             (list true false true)
             "even-number did not return the right boolean")