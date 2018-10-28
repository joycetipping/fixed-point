# Joyce Tipping
# First written: 8 Nov 2009
# Last modified: 8 Nov 2009
#
# Problem Statement: Find the fixed point of the cosine function.

sub fixed_point {
    my ($high, $low) = @_;

    my $midpoint   = ($high + $low) / 2;
    my $f_midpoint = cos ($midpoint) - $midpoint;

    if (abs ($f_midpoint) < 0.001) {return $midpoint;}
    else {
        # Notice that f is a decreasing function.
        if ($f_midpoint > 0) {fixed_point ($high, $midpoint);}
        else                 {fixed_point ($midpoint, $low);}
    }
}

print fixed_point (3.14159, 0), "\n";
