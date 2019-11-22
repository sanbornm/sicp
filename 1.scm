#lang sicp

; Ex 1.2
(/ (+ 5
      4
      (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3
      (* (- 6 2 )
         (- 2 7))))

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

; Ex 1.3
(define (sum-of-squares-larger-two x y z)
  (cond ((and (> x y) (> z y)) (sum-of-squares x z))
        ((and (> x y) (> y z)) (sum-of-squares x y))
        (else (sum-of-squares z y))))

; Ex 1.4
; This function returns the `+` function in its if statement
; if the number is above 0 otherwise it returns the `-`
; function. The `+` or `-` function is then applied to a b.
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; Ex 1.5
; (p) is a never ending loop. In applicative-order evaluation
; it is evaluated even though x is 0 because Scheme expands
; from the inside out. If this was executed in normal-order
; (p) would never get called as (= x 0) condition would be met
; and 0 would be returned as we would expand left->right.
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))



                               
      
