
(define (cubert x)
  (define (square x)
    (* x x))

  (define (better cube_root_guess)
    (/ (+ (/ x (square cube_root_guess)) (* 2 cube_root_guess)) 3))

  (define (good-enough? guess old_guess)
    (< (/ (abs (- guess old_guess)) guess) .0001))

  (define (cube-root-iter guess old_guess)
    (if (good-enough? guess old_guess)
      guess
      (cube-root-iter (better guess) guess)))

  (cube-root-iter 1 2))


(cubert 1234.0)

