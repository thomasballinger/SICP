; Church numerals
;
(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))


(define one (add-1 zero))
(define one (lambda (f) (lambda (x) (f ((zero f) x)))))
    ;x
(lambda (f) (lambda (x) (f ((zero f) x))))
(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x)) f) x))))
(lambda (f) (lambda (x) (f ((lambda (x) x) x))))
(lambda (f) (lambda (x) (f x)))
(define one (lambda (f) (lambda (x) (f x))))

(define two (add-1 one))
(define two (lambda (f) (lambda (x) (f ((one f) x)))))
(define two (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f x))) f) x)))))
(define two (lambda (f) (lambda (x) (f ((lambda (x) (f x)) x)))))
(define two (lambda (f) (lambda (x) (f (f x)))))
(define two (lambda (f) (lambda (x) (f (f x)))))
(define two (lambda (f) (lambda (x) (f (f x)))))

(define three (add-1 two))
(define three (lambda (f) (lambda (x) (f ((two f) x)))))
(define three (lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f (f x)))) f) x)))))
(define three (lambda (f) (lambda (x) (f ((lambda (x) (f (f x))) x)))))
(define three (lambda (f) (lambda (x) (f (f (f x))))))
(define three (lambda (f) (lambda (x) (f (f (f x))))))

; I think I have an intutive grasp of church numerals finally - 
; it's how many times we apply our passed in function to an argument  
;
; If we pass in (lambda (n) (+ n 1)) as our function, we should get incrementers

(three (lambda (n) (+ n 1)))
((three (lambda (n) (+ n 1))) 0)
((three (lambda (n) (+ n 1))) 39)

(define (times c1 c2) (lambda (f) (c1 (c2 f))))
; I accidentally wrote times instead... not sure how deep this is or how fair it is to call it times

(define (plus c1 c2) (lambda (f) (lambda (x) ((c2 f) ((c1 f) x)) )))

(define seven (plus (plus three two) two))
((seven (lambda (n) (+ n 1))) 0)
((seven (lambda (n) (+ n 1))) 8)
