

(define (cons a b) (* (expt 2 a) (expt 3 b)))

(define (times-divisible total div num)
  (if (= (remainder total div) 0)
    (times-divisible (/ total div) div (+ num 1))
    num))

(define (twos n) (times-divisible n 2 0))
(define (threes n) (times-divisible n 3 0))

(define (car pair) (twos pair))
(define (cdr pair) (threes pair))

(car (cons 4 3))
(cdr (cons 4 3))
