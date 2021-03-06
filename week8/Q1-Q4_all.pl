#!/usr/bin/perl -w
# week8 Q1&Q2&Q3 
use strict;

my $adapter = "CTGTAGGCACCATCAAT";
my $adapter_first6 = substr($adapter,0,6);
my $clean_num = 0;
my $trimmed_seq = 0;
my (%hash,%le);
 
open (my $file => 'ath_sRNA1.fa') || die $!;

while(<$file>)
{
 chomp $_;
 next if (substr($_,0,1) eq '>');
 next if /.*N.*/;

#Q1 trim the adapter and get the clean reads
 my $pos = -1; my $len = 0;
 
 while(($pos = index($_, $adapter_first6, $pos)) > -1)
  {
    $len = $pos;
    $pos++;
  }
if($len > -1)
 {  $trimmed_seq = substr($_, 0, $len); }
 
next if (length($trimmed_seq) < 18 );

$clean_num++;

#Q3 see the distribution of the sRNA length
if (exists ($le{length($trimmed_seq)}))
  {
  $le{length($trimmed_seq)}++;
  } 
 else 
  {
  $le{length($trimmed_seq)} = 1;
  }

#Q2 count the unique reads and output 
if (exists ($hash{$trimmed_seq}))
  {
  $hash{$trimmed_seq}++;
  } 
 else 
  {
  $hash{$trimmed_seq} = 1;
  }

}

my $unique_len = scalar (keys %hash);

print "The number of the clean reads is ",$clean_num,"\n";
print "The number of the unique reads is ",$unique_len,"\n";

open(my $outfh => '>distribution.txt') || die $!;
foreach my $key(keys %le)
{print $outfh $key,"\t",$le{$key},"\n";}

open(my $outfh1 => '>unique.txt') || die $!;
foreach my $key(keys %hash)
{print $outfh1 $key,"\n";}

close $file;
close $outfh1;
close $outfh;


open (my $out => '>matureT.txt') || die $!;
open (my $file1 =>'mature.fa') || die $!;

my $tem;
while(<$file1>) {  #can use regular expression, but howto change multiple T all to U

 if(/(^>.*\n)/) 
   { 
    $tem = $1; #store the ID
    next;
    }
 $_ =~ tr/U/T/;  #for (my $i=0; $i<length($_);$i++){if (substr($_,$i,1) eq 'U'){substr($_,$i,1,'T'); }}
 
 print $out $tem,$_;  
} 
close $file1;
close $out;


open (my $out1 => 'matureT.txt') || die $!;
open (my $out2 => 'unique.txt') || die $!;

my %hash_ma;
my %hash2;
while(<$out1>)
 { 
 chomp($_);
 if(/(^>.*\n)/) 
   {
    $tem = $1; #store the ID
    next;
    }
 $hash_ma{$_} = $tem;
 }        #foreach my $keyma(keys %hash_ma){print $keyma,"\t",$hash_ma{$keyma};}

foreach my $key1(keys %hash) #compare sequence in unique.txt with mature.fa
 {
 if ( exit ($hash_ma{$key1}) )
   {
   $hash2{$hash_ma{$key1}} = $hash{$key1};
   }
 }
open (my $out3 => 'new.txt') || die $!;
foreach my $key2(keys %hash2)
 {
  print $out3 $key2,"\t",$hash2{$key2},"\n";
 }

