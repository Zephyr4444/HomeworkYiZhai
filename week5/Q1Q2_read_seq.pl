#!/usr/bin/perl -w
# week5 Q1&Q2 
use strict;
use Bio::SeqIO;

my $file = 'sample_seqs.gbk.txt';
my $in = Bio::SeqIO->new(-format => 'genbank',
                         -file   =>  $file);

my ($seqcount,$seqlength,$cds_number,$cds_length,$species_string);
my %hash;

while ( my $seq = $in->next_seq) {
 
 $seqcount++; 									 # count the number of sequences
 
 my $str = $seq->seq; 							 #get the sequence as a string
  
 $seqlength += length($str);  					 # count the total sequence length
  
 for my $feature($seq->get_SeqFeatures)
  {
   if ($feature->primary_tag eq 'CDS')

    {
     $cds_number++;                               # count the CDS number

     my $cds_seq = $feature->spliced_seq->seq;   

     $cds_length +=length($cds_seq);              # count the total length of CDS
    }
  }
 
##########summarize the species name and the number of times they each appear#########
 
 my $species_object = $seq->species;
   
    $species_string = $species_object->node_name;   # print $species_string,"\n"; 

 if ( exists ($hash{$species_string}) )
  {
   $hash{$species_string}++;
  }
   else 
    {
     $hash{$species_string} = 1;  					# print $hash{$species_string},"\n";
     }
    												#print $hash{$species_string},"\n";
}

print "In db $file there are $seqcount sequences, and total length of the sequences is $seqlength. \n";

print "There are $cds_number CDS, and the length is $cds_length. \n";

print "Species \t AppearTimes\n";   # print the header of the table

foreach my $key(keys %hash)
{
  print $key,"\t",$hash{$key},"\n";
}

