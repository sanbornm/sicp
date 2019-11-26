#lang sicp

;Ex 1.8
(define (square x)
  (* x x))

(define (cube x)
  (* (square x) x))

(define (good-enough? guess prior-guess)
    (< (abs (- guess prior-guess)) 0.0001))

; (x/(y^2) + 2y) / 3 where y is the guess
(define (improve-cube guess x)
  (/ (+ (/ x (square guess)) ; x/(y^2)
     (* 2 guess)) ; 2y
     3))

(define (cube-root-iter guess prior-guess x)
  (if (good-enough? guess prior-guess)
      guess
      (cube-root-iter (improve-cube guess x)
                      guess
                      x)))

(define (cube-root x)
  (cube-root-iter 1.0 0.0 x))

