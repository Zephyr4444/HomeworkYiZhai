package Temperature;
#package for temp_convert.pl
use strict;
use warnings;

sub f2c {
	my $f = shift;
	
	my $c = 5 * ($f - 32) / 9; 
    # temperature-convert formula is wrong, always use parentheses to be safe
	
	return $c;
}
#############################################################
sub c2f {
	
	my $c = shift;
	
	my $f = 9 * $c / 5 + 32;
	
	return $f;
}
1;