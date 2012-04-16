(define (product term a next b)
  (if (> a b)
    1
    (* (product term (next a) next b)
       (term a))))

(define (iter a) (+ a 1))
(iter 5)
(define (identity a) a)
(identity 5)

(define (factorial a) (product identity 1 iter a))

(factorial 3)
(factorial 4)
