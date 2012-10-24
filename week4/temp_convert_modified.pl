#!/usr/bin/perl -w
#temperature convert (c<>f),use package to hold the two subroutines. and call function
use strict;
use Temperature;

my $arg = $ARGV[0] || '-c20';

if ($arg =~ /^\-(c|f)((\-|\+)*\d+(\.\d+)*)$/) {
	
	my ($deg, $num) = ($1, $2);

#   print $num,"\n";
#	my ($in, $out) = ($num, $num);
#   print $in,"\n"; 

    my $out;
	
	if ($deg eq 'c') {
	
		$deg = 'f';
	
		$out = Temperature::c2f($num);
	} else {
	
		$deg = 'c';
	
		$out = Temperature::f2c($num);
	}
	$out = sprintf('%0.2f', $out); # print $1,"\n";
	
	$out =~ s/^((\-|\+)*\d+)\.0+$/$1/;  # print $1,"\n"; why different answers????!?
	
	print "$out $deg\n";
} else {
	
	print "Usage: $0 -[c|f]num\n";
}
exit;


############################################################