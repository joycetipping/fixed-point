// Joyce Tipping
// First written: 29 Oct 2009
// Last modified: 29 Oct 2009
//
// Problem Statement: Find the fixed point of the cosine function.

#include <stdio.h>
#include <math.h>

double fixed_point (double lower, double upper) {
    double midpoint = (lower + upper) / 2.0;
    double f_midpoint = cos (midpoint) - midpoint; // f = cos (x) - x

    while (abs (f_midpoint) > 0.001) {
        // Notice that f is a decreasing function.
        if (f_midpoint > 0) {
            lower = midpoint;
            midpoint = (upper + midpoint) / 2.0;
        } else {
            upper = midpoint;
            midpoint = (lower + midpoint) / 2.0;
        }
        f_midpoint = cos (midpoint) - midpoint;
    }

    return midpoint;
}

int main () {
    printf ("The fixed point of cosine is %f.\n", fixed_point (0.0, 3.14159));
    return 0;
}
