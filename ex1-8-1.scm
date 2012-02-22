(define (factorial product iter n)
  (if (> iter n)
    product
    (factorial (* product iter) (+ iter 1) n)))

(factorial 1 1 6)
