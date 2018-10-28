(* Joyce Tipping
   First written: 5 Nov 2009
   Last modified: 5 Nov 2009

   Problem Statement: Find the fixed point of the cosine function.
*)

let rec fixed_point high low =
  let midpoint   = (high +. low) /. 2. in
  let f_midpoint = cos (midpoint) -. midpoint in

  if (abs_float (f_midpoint) < 0.001)
  then midpoint
  else  
    (* Notice that f is a decreasing function. *)
    if f_midpoint > 0. 
    then fixed_point high midpoint
    else fixed_point midpoint low;; 

print_float (fixed_point 3.14 0.);;
