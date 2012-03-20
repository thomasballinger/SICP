; Pascal's Triangle

(define (ptriangle row column)
  (cond ((= row column) 1)
        ((= column 1) 1)
        (else (+ (ptriangle (- row 1) (- column 1))
           (ptriangle (- row 1) column)))))

(ptriangle 2 1)
(ptriangle 2 2)
(ptriangle 3 2)

(ptriangle 7 4)
