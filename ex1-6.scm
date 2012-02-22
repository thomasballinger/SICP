; current problem

(define (good-enough? guess guess2 x)
  (< (/ (abs(- guess guess2)) guess) .001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess x)
    guess
    (sqrt-iter (improve guess x) guess x)))


(sqrt-iter 2.0 1.0 12321302130213213)
