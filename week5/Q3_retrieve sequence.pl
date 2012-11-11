#!/usr/bin/perl -w
#week5 Q3
use strict;
use Bio::DB::Fasta;
use Bio::Seq;

my $dbfile = 'sacharomyces_cerevisiae_S288C.fa';
my $db = Bio::DB::Fasta->new($dbfile);

#retrieve a sub part of a chromosome as a STRING
my $seq = $db->seq('chrI',54584 => 54913);
if ( $seq )
 {
  print "The sequence is ", $seq,"\n";
  }
 else
  {
   warn("Cannot find\n");
   }

#translate this sequence to protein
my $dna_obj = Bio::Seq->new(-seq=>$seq);

my $pro_obj = $dna_obj->translate();

print "The protein sequence is ",$pro_obj->seq,"\n";

open(my $outfh => '>report_sacharomyces_S288C.fa') || die $!;

print $outfh join ("\n", $seq, $pro_obj->seq);

