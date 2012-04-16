(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

(define (identity a) a)
(define (inc a) (+ a 1))

(sum identity 1 inc 5)

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ result (term a)))))
    (iter a 0))

(sum identity 1 inc 5)
