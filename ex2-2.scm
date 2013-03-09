;Exercise 2.2.  Consider the problem of representing line segments 
; in a plane. Each segment is represented as a pair of points:
; a starting point and an ending point.
; Define a constructor make-segment and selectors start-segment and
; end-segment that define the representation of segments in terms of
; points. Furthermore, a point can be represented as a pair of numbers:
; the x coordinate and the y coordinate. Accordingly, specify a constructor
; make-point and selectors x-point and y-point that define this
; representation. Finally, using your selectors and constructors,
; define a procedure midpoint-segment that takes a line segment
; as argument and returns its midpoint (the point whose coordinates
; are the average of the coordinates of the endpoints).
; To try your procedures, you'll need a way to print points:

(define (make-point x y) (cons x y))
(define (x point) (car point))
(define (y point) (cdr point))
(define (make-line p1 p2) (cons p1 p2))

(define (make-prect p1 p2 p3 p4) (cons p1 (cons p2 (cons p3 p4))))
(define (p1 prect) (car prect))
(define (p2 prect) (car (cdr prect)))
(define (p3 prect) (car (cdr (cdr prect))))
(define (p4 prect) (car (cdr (cdr (cdr prect)))))
(define (prect-l1 prect) (make-line (p1 prect) (p2 prect)))
(define (prect-l2 prect) (make-line (p2 prect) (p3 prect)))
(define (prect-l3 prect) (make-line (p3 prect) (p4 prect)))
(define (prect-l4 prect) (make-line (p4 prect) (p1 prect)))

(define (make-lrect p1 p2 p3 p4)
  (cons (make-line p1 p2)
        (cons (make-line p2 p3)
              (cons(make-line p3 p4)
                   (make-line p4 p1)))))
(define (lrect-l1 lrect) (car lrect))
(define (lrect-l2 lrect) (car (cdr lrect)))
(define (lrect-l3 lrect) (car (cdr (cdr lrect))))
(define (lrect-l4 lrect) (car (cdr (cdr (cdr lrect)))))

; not doing this right - abstraction should make the functions below work
; I'm confused about how to do this without object orientation
; I need different things to happen based on which implementation
; of rect I'm dealing with - I need multiple dispatch, right?
; I guess I'm supposed to comment out the implementation I'm not using
; while I'm not using it
;
(define (area rect) (* (len (l1 rect)) (len (l2 rect))))
(define (perimeter rect) (* (2 (+ (len (l1 rect)) (len (l2 rect))))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x p))
  (display ",")
  (display (y p))
  (display ")"))
