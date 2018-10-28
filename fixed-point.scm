; Joyce Tipping
; First written: 8 Nov 2009
; Last modified: 8 Nov 2009
;
; Problem Statement: Find the fixed point of the cosine function.

(define (fixed-point high low)
    (let* ((midpoint   (/ (+ high low) 2))
           (f-midpoint (- (cos midpoint) midpoint)))
        (if (< (abs f-midpoint) 0.001)
            midpoint
            ; Notice that f is a decreasing function.
            (if (> f-midpoint 0)
                (fixed-point high midpoint)
                (fixed-point midpoint low)
            )
        )
    )
)

(write (fixed-point 3.14159 0))
(newline)
