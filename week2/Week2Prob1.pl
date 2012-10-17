#! usr/bin/perl -w
# W2-Problem 1
use strict;

my $sequence = 'AGACAAGTCGGACGTTTCATCTGAGGGTTCTTCTGCCTCCGCACTTGGTGCACA
TCAGACAAGGCAATCA
TGGGGGACGCTCAGATGGCAGAGTTTGGAGCAGCAGCTTCTTACCTGCGAAAGTCAGATCGAGAGCGTCT
GGAAGCACAAACCCGTCCCTTTGATATGAAAAAGGAGTGTTTTGTGCCTGATCCAGATGAAGAGTATGTA
AAAGCTTCAATCGTCAGTCGTGAAGGTGACAAAGTCACTGTACAGACTGAGAAAAGAAAGACTGTAACTG
TAAAGGAAGCTGACATTCACCCCCAGAACCCTCCAAAGTTTGATAAAATTGAAGACATGGCAATGTTCAC
CTTCCTTCATGAGCCAGCCGTGCTGTTCAACCTCAAAGAGCGCTATGCAGCATGGATGATCTATACCTAC
TCAGGACTGTTTTGTGTCACTGTCAACCCCTACAAGTGGCTGCCGGTGTACAATCAGGAGGTGGTTGTAG
CCTATAGAGGGAAAAAGAGGAGTGAAGCTCCTCCCCACATCTTTTCCATCTCTGATAACGCCTATCAGTA
CATGCTAACAGACAGGGAAAATCAGTCAATTCTGATCACTGGAGAATCGGGTGCAGGAAAGACTGTGAAC
ACAAAGAGAGTCATTCAGTATTTTGCAAGTATTGCAGCTGGTGGCTCAGCAAAGAAAGAAGGGGCAGAAA
AAAAGGGAACCCTGGAGGATCAAATCATCCAGGCTAACCCTGCTTTGGAAGCTTTTGGCAATGCAAAGAC
CATCAGAAATGACAACTCCTCAAGATTTGGAAAATTCATCCGAATTCATTTTGGTGCCAGTGGAAAGTTG
GCATCAGCTGACATTGAAACATATCTTCTGGAGAAGTCAAGGGTGACTTTTCAGCTTAAAGCTGAAAGGG
ACTATCATATTTTCTACCAAATCCTCTCTCAGCGGAAACCTGAGCTGCTGGAGATGCTGCTCATCACCAA
CAACCCCTATGACTACGCTTACATCTCCCAAGGAGAAACAACCGTAGCTTCAATTAATGATGGTGAAGAA
TTGCTTGCCACTGATGAAGCGTTTGATGTACTAGGCTTCACTCAGGAGGAGAAAAATGGCATCTATAAAT
TGATTGGAGCCATTATGCACTTTGGCAATATGAAGTTCAAACAGAAGCAGAGGGAGGAGCAAGCAGAGGC
TGATGGAACTGAAGATGGAGACAAAGTCGCATATCTGATGGGCCTAAACTCTGCTGACCTTATCAAGGGT
CTGTGCCACCCAAGAGTCAAAGTAGGAAATGAGTGGGTCACCAAAGGACAAAATGTCCAGCAGGTGTACT
ACGCTATTGGTGCACTAGCCAAGTCAGTGTATGAAAAGATGTTCCTTTGGATGGTTGTAAGAATCAATCA
GTCTCTAGACACCAAACAACCACGCCAATACTTCATTGGAGTGCTGGACATTGCTGGCTTTGAGATCTTT
GATTTTAACACCTTTGAGCAACTCTGCATCAACTTTACCAATGAGAAACTGCAACAGTTTTTCAACCACC
ACATGTTTGTGCTGGAACAAGAGGAGTACAAGAAAGAAGGGATTGAATGGGAGTTTATTGACTTTGGCAT
GGACTTGCAGGCCTGCATCGATCTCATTGAGAAACCTATGGGCATCATGTCCATCCTTGAAGAGGAGTGC
ATGTTTCCCAAAGCAAGTGATTCAACCTTTAAAGCAAAGCTTTATGACAACCATCTTGGGAAATCAAATA
ACTTCCAGAAACCAAGAGCAATCAAAGGGAAGCCAGAGTCTCATTTTTCTCTGGTCCACTATGCTGGTAC
AGTTGACTATAATATCAACAACTGGCTGGTGAAGAACAAAGACCCATTAAATGAGACTGTGGTGGGACTC
TTTCAAAAGTCTACAGTCAAACTTCTGTCAATGCTCTTTGCTAACTATGCAGGGACAGAATCAGATAATG
GTAAGGGAGGTAAAGGAGGTGGAAGTAAGAAGAAGGGCTCCTCCTTCCAGACTGTGTCTGCACTCCACAG
GGAAAACTTAAATAAGTTAATGACAAACCTAAGGTCAACTCACCCTCATTTTGTGCGCTGCATCATTCCT
AATGAGACAAAGACTCCTGGTGCAATGGAGAATCCTTTGGTCATGCATCAGCTGCGCTGTAATGGTGTGC
TGGAGGGCATCAGGATTTGCAGGAAGGGCTTCCCCAACAGAATCCTCTATGGGGACTTCAAACAGAGGTA
CCGAATCCTAAATCCTGCAGCCATACCTGAAGGTCAGTTCATAGACAGCAGGAAAGGAGCAGAGAAACTG
TTGGGTTCACTGGATATTGATCACAATCAATATAAATTTGGACACACAAAGGTGTTCTTCAAGGCTGGTT
TACTCGGTCAGCTTGAAGAAATGAGAGATGACAGACTATCTCTAATTATTTCTGGAATTCAGGCAAGATC
CAGAGGACTTCTTGCAAGGGTTGAGTTCCAAAAGATAGTTGAAAGAAGGGATGCCCTACTGGTTATCCAG
TGGAATGTCCGTGCCTTCATGGGGGTGAAAAATTGGCCCTGGATGAAGCTTTTCTTCAAGATAAAACCTC
TTCTCAAGTCAGCAGAAGCAGAGAAAGAGATGGCAAATATGAAAGATGAATTTGCCAAGCTCAAAGAGGC
TTATGCTAAATCCGAAGCGAGAAGGAAAGAGCTAGAAGAAAAAATGGTGTCTCTTCTCCAAGAGAAGAAT
GACCTACAACTTCAAGTTCAAGCGGAGCAAGACAATCTCTGTGATGCAGAGGAACGATGTGACCAGCTCA
TCAAAAACAAGATTCAGCTTGAGGCTAAAGCCAAAGAGCTCACCGAGCGACTTGAGGATGAGGAGGAGAT
GAATGCAGAGCTGACAGCTAAGAAGAGAAAGCTGGAGGACGAATGCTCTGAGCTGAAGAAGGATATTGAT
GATCTGGAGCTCACTCTGGCTAAAGTCGAGAAAGAGAAGCATGCTACTGAGAACAAGGTAAAGAACCTGA
CAGAAGAAATGGCAGCTTTGGACGACATAATCGCAAAGCTGACCAAAGAGAAGAAAGCCTTGCAAGAAGC
TCATCAGCAGACACTGGATGACCTGCAGAGTGAGGAGGACAAAGTCAACACCCTCACCAAGGCAAAAGCA
AAGCTAGAGCAACAAGTAGATGATCTGGAAGGATCTCTTGAGCAAGAAAAGAAGCTCCGCATGGATCTAG
AAAGAGCCAAGAGGAAACTAGAAGGAGACTTGAAATTAACCCAGGAAAGCCTAATGGACCTGGAAAATGA
CAAGCAGCAGTTAGAGGAGCGTCTAAAAAAGAAAGACTTTGAAATCAGTCAGCTCAATGGGAAAATCGAA
GACGAACAAACTATTTGCATTCAGCTGCAGAAAAAACTGAAGGAACTTCAGGCACGTATTGAGGAGCTGG
AGGAAGAGCTTGAGGCAGAAAGAGCTGCTAGAGCCAAAGTGGAGAAACAGAGAGCAGATTTAGCCAGAGA
GCTGGAGGAGATCAGCGAGAGACTGGAGGAGGCTGGAGGAGCTACAGCTGCTCAGATTGAGATGAATAAG
AAACGAGAGGCAGAGTTTCAGAAGCTCCGCAGAGACCTTGAAGAGGCCACTCTGCAGCATGAGGCCACTG
CCGCCACACTCAGGAAAAAACAAGCCGACAGTGTGGCTGAACTTGGAGAGCAGATAGACAATCTGCAGAG
GGTCAAGCAAAAACTGGAGAAGGAGAAAAGTGAACTTAGGCTGGAGTTGGATGATGTAGTCTCAAACATG
GAACATGTTGTAAAGACAAAGGCAAATCTTGAGAAGATGACCAGATCTTTAGAAGACCAAATGAATGAAT
ATAAAACAAAATATGAGGAAGGTCAGCGCTGCATTAATGACTTCACAATGCAGAAATCTAAACTACAATC
TGAAAATGGTGAACTTTCAAGACAGCTGGAGGAAAAGGACTCTCTTGTCTCCCAGCTAACCAGAAGCAAG
ATGTCTTACACTCAGCAAATTGAAGATCTTAAAAGACAACTGGAGGAGGAAACAAAGGCAAAAAGCGCTC
TCGCCCATGCTGTACAGTCAGCCCGTCATGACACAGATCTGCTTAGAGAGCAGTATGAGGAGGAGCAGGA
AGCTAAAGCAGAGCTACAGCGAGGCATGTCCAAAGCTAATTCTGAGGTGGCACAGTGGAGAACCAAGTAC
GAAACTGATGCCATCCAGAGAACTGAAGAACTGGAGGAAGCCAAAAAGAAACTGGCTCAACGCTTACAGG
AAACCGAAGAAGCTGTTGAAGCAGTAAATGCAAAGTGTTCATCTCTTGAAAAGACCAAACACAGACTCCA
AAATGAGATTGAAGATCTTATGGTGGACCTGGAGAGGTCTAATGCGGCTGCTGCAGCCTTAGACAAAAAG
CAAAGAAACTTTGATAAGGTACTGTCTGAGTGGAAGCAGAAGTTTGAAGAGTCGCAAGCCGAGTTAGAGA
GCTCTCAGAAAGAAGCAAGATGTCTTAGCACTGAACTTTTCAAGCTGAAGAACTCCTATGAGGAAGCTTT
AGATCACCTGGAGACCATGAAGAGAGAAAATAAAAATCTCCAAGAGGAGATTTCTGATCTCACCGAGCAA
CTTGGTGAGGGAGGAAAGAGCATCCATGAGCTGGAGAAAATGAGGAAACAGTTGGAGCAAGAAAAAAGTG
AGATTCAATCTGCTCTGGAAGAGGCAGAGGCATCACTGGAGCACGAGGAGGGTAAGATTCTGCGAGCCCA
GCTGGAGTTCAGCCAAATTAAGGCTGATATCGAGCGCAAACTAGCCGAGAAGGATGAAGAGATGGAGCAG
AGCAAACGCAATTTGCAGAGGACCATTGACACTCTGCAAAGCTCCTTGGAGTCAGAAACCAGAAGCAGAA
ATGAGGCCCTCAGAATAAAAAAGAAGATGGAGGGCGACCTGAATGAGATGGAGATCCAGCTTAGTCAGGC
AAACCGACAAGCAGCAGAGGCCCAAAAACAACTTAAGAGTGTGCATGCACATATGAAAGATGCTCAGCTT
CAGCTGGACGACTCCCTGAGAACAAATGAAGATCTTAAGGAGAACACAGCCATTGTAGAGAGACGCAACA
ACCTTCTGCAGGCTGAACTAGAGGAACTCAGAGCAGCTCTTGAGCAAACCGAAAGAGGCCGTAAGCTTGC
TGAGCAGGAGCTTCTGGATACCAGTGAAAGAGTACAGCTGCTGCACTCCCAGAACACAAGCCTGTTAAAT
CAGAAGAAGAAGCTGGAGACGGATATATCCCAGCTTCAGACAGAAGTGGAAGAGGCAGTGCAAGAATGCA
GGAATGCTGAGGAAAAAGCCAAGAAGGCCATCACTGATGCTGCCATGATGGCGGAGGAGCTGAAGAAGGA
GCAGGATACAAGTGCTCACCTGGAGAGGATGAAGAAGAACATGGAGCAGACCATTAAAGACCTGCAGCAT
CGCCTGGATGAAGCAGAACAAATCGCTATGAAGGGAGGCAAGAAACAAGTCCAGAAACTGGAGGCCAGGG
TGAGGGAGCTGGAGAGTGAAGTTGAATCAGAACAGAAGAAGAGCAGTGAGGCGGTGAAAGGAATCCGCAA
ATATGAGAGACGTATAAAAGAACTGACGTATCAGACTGAGGAGGACCGCAAGAATCTGGCTCGTCTGCAA
GATCTGGTTGACAAGCTTCAGCTAAAGGTTAAAGCTTACAAGAGGGCTGCAGAGGAAGCTGAGGAACAAG
CCAACACTAATCTTAGCAAGTTCCGGAAAATCCAGCATGAGCTTGATGAGGCAGAAGAAAGAGCTGACAT
TGCAGAGTCACAAGTCAATAAGCTACGTGCCAAAAGTCGTGATGTCAGTTCTAAGAAGGGACATGATCAA
GAGTAAAGCTCAAGTGGATTTTCTGTGTCTCCGTTATGCTGAATTAGTTTTGTTTTCAGCCTATCTTGCA
TTTCTTCGGTCACTTAGTAGAATAAAGTTGAATTGCATTAA';

chomp ($sequence);

my @array = split ("\n",$sequence);  # chomp the new line character or do $sequence = ~s/\s+//g;

$sequence = join ("",@array);

#1.Write a script to process the calculate the total length of this sequence 
#and number of codons in the mRNA sequence

my $length = length $sequence;

#my $codons = $length / 3;

print "The total length of this sequence is $length bp and there are ", $length/3, " codons \n"; # use , to seperate then can put $length/3 or +1 here

# 2.Print out the location of the first potential start codon. Use this to determine the length of the 5' UTR"

my $start_codon = index ($sequence, "ATG");

my $sub = substr ($sequence,$start_codon,3);

my $length_5UTR = $start_codon;

$start_codon  +=1;

print "The first start codon '$sub' begins at $start_codon,and the length of 5'UTR is $length_5UTR bp long. \n";

#3.Print the location of the first inframe stop codon. 

$start_codon = index ($sequence, "ATG");

while ($start_codon < $length){

  if(substr($sequence,$start_codon,3) eq 'TAG'|| substr($sequence,$start_codon,3) eq 'TAA' || substr($sequence,$start_codon,3) eq  'TGA')

  {my $stop_codon = $start_codon +1; print "The first in-frame stop codon is at basepair $stop_codon. \n";

  last;}

  $start_codon +=3;}
  
# for (my $i = $start_codon + 3;$i<$length;$i +=3)  {my $codon = $substr($sequenc,$i,3); if (substr ()eq || ||) $stop_codon = $i; last;}

# 4.Print out the correct CDS length for this gene. Print out the length of the predicted protein 
#(don't forget to remove the stop codon from that calculation). Print out the length of the 3' UTR.

$start_codon = index ($sequence, "ATG");

my $stop_codon = $start_codon;

while ( $stop_codon <= (length ($sequence)-4))         # search for the stop codon
{
  if(substr($sequence,$stop_codon,3) eq 'TAG'|| substr($sequence,$stop_codon,3) eq 'TAA' || (substr($sequence,$stop_codon,3) eq  'TGA')) 
  { last;}

  $stop_codon +=3;
}
my $cds = $stop_codon - $start_codon + 3;

my $protein = ($cds-3)/3;

my $length_3UTR = length($sequence) - $stop_codon -3;

print "The CDS length is $cds bp and predicted protein length is $protein. The length of 3' UTR is $length_3UTR bp long. \n"










