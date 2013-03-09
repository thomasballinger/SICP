;http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-14.html#%_sec_2.1
;
;
;
; Define a better version of make-rat that handles positive and negative arguments.
; Make-rat should normalize the sign so that if the rational number is positive,
; both the numerator and the denominator are positive, and if the rational
; number is negative, only the numerator is negative.
;
(define (gcd-naive a b) (gcd-naive-inner a b 2))

(define (gcd-naive-inner a b try)
  (if (or (> try a) (> try b))
      1
      (if (and (= 0 (remainder a try)) (= 0 (remainder b try)))
          (* try (gcd-naive-inner (/ a try) (/ b try) 2))
          (gcd-naive-inner a b (+ try 1)))))
(define (make-rat n d) 
  (let ((common (gcd-naive n d)))
    (let ((d (/ d common)) (n (/ n common)))
      (if (< d 0)
          (cons (- 0 n) (- 0 d))
          (cons n d)))))
(define (numer rat) (car rat))
(define (denom rat) (cdr rat))
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
(define (eq-rat a b)
  (and (= (numer a) (numer b))
       (= (denom a) (denom b))))


(eq-rat (make-rat 1 1) (make-rat 1 1))
(eq-rat (make-rat -1 -1) (make-rat 1 1))
(eq-rat (make-rat -1 1) (make-rat -1 1))
(eq-rat (make-rat 1 -1) (make-rat -1 1))
(= (numer (make-rat 1 -1)) -1)

(make-rat 5836 1049392)
