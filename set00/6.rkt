;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set00:6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Ex 6 of lesson 0.4 by Feng Shi
(require rackunit)

; quadratic-root : Number Number Number -> List[root1,root2]  (root1 > root2)
; GIVEN: the arguments a,b,c of a quadratic equation
; RETURNS: the two root of the quadratic equation (root1 > root2)
; false when (sqr b) < (* 4 a c)
; (root1=root2 when (sqr b) >= (* 4 a c))
; Example:
; (quadratic-root 1 -5 6) => List[3,2]
; (quadratic-root 1 -2 1) => List[1,1]
(define (quadratic-root a b c)
  (cond
    [(>= (sqr b) (* 4 a c)) 
     (list (/ (+ (- 0 b) (sqrt (- (sqr b) (* 4 a c)))) (* 2 a))
           (/ (- (- 0 b) (sqrt (- (sqr b) (* 4 a c)))) (* 2 a)))]
    [else false]))

;test
(define begin-for-test
  (check-equal? (list (quadratic-root 1 -5 6) (quadratic-root 1 -2 1) (quadratic-root 1 1 1))
                (list (list 3 2) (list 1 1) false)
                "quadratic-root did not return the correct roots"
   ))