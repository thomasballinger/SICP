; Pascal's Triangle

(define (ptriangle row column)
  (cond ((= row column) 1)
        ((= column 1) 1)
        ((< column 1) (- (+ 1000 row)))
        ((< row 1) (- (+ 1000000 column)))
        (+ (ptriangle (- row 1) (- column 1))
           (ptriangle (- row 1) (+ column 1)))))

(ptriangle 1 3)
