;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 8 of the lesson 0.4 by Feng Shi
(require htdp/testing)

; circle-area : NonNegNumber -> Number
; GIVEN: the radius r of a circle
; RETURNS: the area included in the circle. false when r is negtive
; Examples:
; (circle-area 1)  => 3.141592653589793
; (circle-area 5)  => 78.53981633974483
; (circle-area 7)  => 153.93804002589985
; (circle-area -1) => false
(define (circle-area r)
  (cond
    [(>= r 0) (* pi (sqr r))]
    [else false]))

;test
(check-within 
 (list (circle-area 1) (circle-area 5) (circle-area 7) (circle-area -1))
 (list 3.141592653589793 78.53981633974483 153.93804002589985 false)
 0.01)

