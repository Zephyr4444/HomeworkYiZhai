#! /usr/bin/perl -w
use strict;

open(my $fh1 => 'ath_chr1.gff.txt') || die $!;

my $parent_id = "";
my $prev_end;
my $num_introns=0;

while(<$fh1>) {
	chomp $_;
    my @row = split("\t",$_);
    
# 2 number of introns

    next if $row[2] ne "exon";
    my $key = $row[8];

    if (substr($key,-2,2) eq ".1") {
  
        my $exon_start = $row[3];
    
        my $exon_end = $row[4];
  
        if ($key eq $parent_id) {
 
            my $intron_length = $exon_start - $prev_end;
 
            if ($intron_length >= 100 && $intron_length <= 300) {

                $num_introns++;  # $number    
            }
        }

        $prev_end = $exon_end;

        $parent_id = $key;
    }
}
print $num_introns;
=cut
open(my $outfh => '>ath_chr1_stats.txt') || die $!;

print $outfh $num_introns;







