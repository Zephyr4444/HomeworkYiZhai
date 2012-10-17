#!/usr/bin/perl -w
# W2-Problem2
use strict;

my @seqnames = ("AAC35278", "AnCSMA","AfCHSF","AAF19527","P30573-1");
my @seqs = ("LLIAITYYNEDKVLTARTLHGVMQNPAWQKIVVCLVFDGIDPVLATIGV-VMKKDVDGKE","AMCLVTCYSEGEEGIRTTLDSIALTPN-SHKSIVVICDGIIKVLRMMRD-TGSKRHNMAK","ALCLVTCYSEGEEGIRTTLDSIAMTPN-SHKTIIVICDGIIKVLRMMRD-TGSKRHNMAK","AILLVTAYSEGELGIRTTLDSIATTPN-SHKTILVICDGIIKVLGMMKD-RGSKRHNMAK","TINLVTCYSEDEEGIRITLDSIATTPN-SHKLILVICDGIIKVLDMMSDAQGSKRHNMAK");
     
#5.Process each sequence and print out for each sequence the sequence name 
#and number of residues in the sequence excluding the gaps.

my @seqs1 = ();  # define an array, also can use my @seqs1;

for (my $i = 0; $i < scalar (@seqs); $i++)
{
  my @array = split ("-", $seqs[$i]);

  my $str = join ("", @array);

  my $length = length $str;

  print "Sequence $seqnames[$i] has $length residues. \n";
}
    
#6.Process the whole alignment by processing each sequence and count the number of columns in the alignment which
#have a gap in ANY sequence. So your script should print out
#The number of gapped columns in this alignment is N

my %hash;

for (my $i = 0; $i < scalar (@seqs); $i++)   # iterate through each sequence
{
   my $column = 0;
   
   for (my $n = 0; $n < length ($seqs[$i]); $n = $column+1)  # iterate through each gapped column
   {
    $column = index ($seqs[$i], "-", $n); 
    if ($column != -1 )
      {
      $hash{$column} = 1;  # $column is the keys, 1 is the value also the sign
      }
      else { last;}
    }
}

my $gapcolumns = scalar (keys %hash); 

print "The number of gapped columns in this alignment is $gapcolumns.  \n";

#7.Calculate the number of residues that are identical between sequence 'AfCHSF' and 'AAF19527'. 
#A more advanced solution would be to calculate the number of identical bases between all pairs 
#of sequences so the report will read.

my @af = split ("-",$seqs[2]);

my @aaf = split ("-",$seqs[3]);

my $afch = join ("", @af);

my $aaf1 = join ("",@aaf);        #print $afch,"\n",$aaf1,"\n";

my $i = 0 ;        # define an $i to control the loop

my $reporter =0;   # define a reporter to record the number of identical bases

while ($i < length ($afch))          #not that right!!!this only fit this situation
 # you can use if (str eq '-') next;  At first I forgot the "next",so I want to use 
 # if (eq && not eq '-')???????????????  
{
  my $afchsf = substr ($afch,$i,1);

  my $aaf19527 = substr ($aaf1,$i,1);
  if( $afchsf eq '-' || $aaf19527 ne '-' ) {
     # don't count here
  } elsif ($afchsf eq $aaf19527 ) { 
    # do want to count here
   $reporter++;
  }
  $i++;
}

print "Identical residues between AfCHSF and AAF19527 is $reporter. \n";
