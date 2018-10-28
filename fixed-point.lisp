; Joyce Tipping
; First written: 5 Nov 2009
; Last modified: 5 Nov 2009
;
; Problem Statement: Find the fixed point of the cosine function.

(defun fixed-point (high low)
    (let* ((midpoint   (/ (+ high low) 2))
           (f-midpoint (- (cos midpoint) midpoint)))
        (if (< (abs f-midpoint) 0.001)
            midpoint
            ; Notice that f is a decreasing function
            (if (> f-midpoint 0)
                (fixed-point high midpoint)
                (fixed-point midpoint low)
            )
        )
    )
)

(format t "~a~%" (fixed-point pi 0))
