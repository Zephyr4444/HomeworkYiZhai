#!/usr/bin/perl 
# calculate the sum of an array
use strict; use warnings;

my @data = (1..100);

my $sum = 0;

foreach my $i(0..99){     # in computer, it starts from 0 not 1

   $sum += $data[$i];     # $sum = $sum + $_
}
print "Sum is $sum\n";
