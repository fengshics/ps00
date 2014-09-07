;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 7 of lesson 0.4 by Feng Shi
(require htdp/testing)

; circumference : NegNumber -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its circumference, using the formula 2 * pi * r. false when r is negtive
; Examples:
; (circumference 1)  =>  6.283185307179586 
; (circumference 0)  =>  0
(define (circumference r)
  (cond
    [(>= r 0) (* 2 pi r)]
    [else false]))

;test
(check-within (list (circumference 1) (circumference 0) (circumference -1))
              (list 6.283185307179586 0 false)
              0.1)