

(define (cons x y)
  (lambda (m) (m x y)))


;(cons 2 3) => (lambda (m) (m 1 2))

(define (car z)
  (z (lambda (p q) p)))

(define (car z)
  (z (lambda (p q) q)))


; verify that (car (cons x y))
;
; (car (cons x y))
; (car (lambda (m) (m x y)))
; ((lambda (m) (m x y)) (lambda (p q) p))
; ((lambda (p q) p) x y)
; (let ((p x) (q y)) p)
; x
