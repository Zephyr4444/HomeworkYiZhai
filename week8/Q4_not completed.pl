#!/usr/bin/perl -w
# week8 Q4-not completed
use strict;

open (my $out => '>uniqueU.txt') || die $!;
open (my $file =>'unique.txt') || die $!;

while(<$file>) {  #can use regular expression, but howto change multiple T all to U
 
  for (my $i=0; $i<length($_);$i++)
  {
  if (substr($_,$i,1) eq 'T')
   {
    substr($_,$i,1,'U');
   }
  }
print $out $_;  
} 
close $file;
close $out;
