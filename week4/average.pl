#!/usr/bin/perl -w
#use CPAN module to calculate
use strict;
use Statistics::Descriptive;

my @num = (1..100);

my $sum =Statistics::Descriptive::Full->new(); # see the usage from CPAN Synopsis for this module

$sum->add_data(@num);   #add_data is the box to store the num, mean is the method to calculate

open(my $outfh => '>average.txt') || die $!;

print $outfh $sum->sum()." ".$sum->mean(); 