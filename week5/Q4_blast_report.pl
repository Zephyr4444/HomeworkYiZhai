#!/usr/bin/perl -w
#week5 Q4 summary for blast report

use strict;
use Bio::SearchIO;

my $cutoff = '0.001';
my $file = 'actin-vs-basidio.BLASTP';
my $in = Bio::SearchIO->new(-format => 'blast',
							-file   => $file);
						
print join ("\t","QUERY","HIT","EVALUE","LENGTH","IDENTITY", 
            "QSTART","QEND","HSTART","HEND"),"\n";       #print the head
            
while (my $r = $in->next_result)
{
  print $r->query_name,"\t";
  
  while(my $h = $r->next_hit)
   {
    last if ($h->significance) > $cutoff;
    
    print $h->name,"\t";
   
    while (my $hsp = $h->next_hsp)
     {
       print $hsp->evalue,"\t",
             $hsp->length('total'), "\t",
             $hsp->percent_identity, "\t",
             $hsp->query->start, "\t",
             $hsp->query->end, "\t",
             $hsp->hit->start, "\t",
             $hsp->hit->end, "\n";            #use , to link each other, not ;
     }
   }

}