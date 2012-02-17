;Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.
;
;apparently min is builtin, and I was getting an error trying to use the overwritten version
;(define (min a b) (cond ((a < b) a)
;                        (else b)))
(define (min_of_three a b c) (min (min a b) c))
(define (square a) (* a a))
(define (sum_of_squares a b) (+ (square a) (square b)))
(define (func a b c) (cond ((= (min_of_three a b c) a) (sum_of_squares b c))
                        ((= (min_of_three a b c) b) (sum_of_squares a c))
                        (else (sum_of_squares a b))))
;(min 1 2)
;(min_of_three 1 2 3)
(func 4 2 3)
(func 4 4 4)
(func 4 2 2)
(func 4 4 3)
