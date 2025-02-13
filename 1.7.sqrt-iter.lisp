(defun average (x y)
  (/ (+ x y) 2))

(defun improve (guess x)
  (average guess (/ x guess))
  )

(defun good-enough? (guess previous-guess x)
  (< (abs(- previous-guess guess))
     (/ guess 10000)))

(defun sqrt-iter (guess previous-guess x)
    (if (good-enough? guess previous-guess x)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(defun sqrtt (x) 
  (sqrt-iter 1.0 0.0 x))


(write (sqrtt 0.000000000000000000000001))

