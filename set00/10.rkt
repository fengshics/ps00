;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 10 of lesson 0.4 by Feng Shi
(require rackunit)

; sumof-two-lnumbers : Number Number Number -> Number
; GIVEN: three numbers
; RETURNS: the sum of the two larger numbers
; Examples:
; (sumof-two-lnumbers 4 2 5)  => 9
; (sumof-two-lnumbers 4 1 -1)  => 5
; (sumof-two-lnumbers -9 10 -2) => 8
; (sumof-two-lnumbers -9 10 -10) => 1

(define (sumof-two-lnumbers a b c)
  (cond
    [(>= a b) (if (>= b c) (+ a b) (+ a c))]
    [(< a b) (if (>= a c) (+ a b) (+ b c))]))

;test
(check-equal? (list (sumof-two-lnumbers 4 2 5) (sumof-two-lnumbers 4 1 -1)
                    (sumof-two-lnumbers -9 10 -2) (sumof-two-lnumbers -9 10 -10))
              (list 9 5 8 1)
              "the sumof-two-lnumbers did not return the correct sum")