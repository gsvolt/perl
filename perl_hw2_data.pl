#!/usr/bin/perl
use warnings;
use strict;
print "hello world\n";

# simple comment works like this !  PEARLS of PERL

# scalars - string, number, reference to something (pointer?)

#$n = 11;      # the scalar n has value 11
#print "value of n = ".$n."\n";     # I just concatenated newline to a number !

#$n[3] = "100";   # the 3rd element of scalar n has value "100"  - array
#print "value of n[3] = ".$n[3]."\n";  

#$n{'key'} = "value";  # the 'key'th hash (or index) of scalar n has value "value"
#print "value of n{'key'} = ".$n{'key'}."\n";


 my @arr = ( '1', 2.5, 15,3.14);
# print @arr."\n";  # count
# print $arr[1];    # array indices begin at 0

# my @arr2 = 

#if($arr[3] == 3.14)
#{
# print "I found a Pie!\n";
#}


# my %fav = (
# red => "ff0000",
# green => "00ff00",
# blue => "0000ff"
#);
# print $fav{"red"}."\n";


# Loops  .. say for countdown to ALUG
#for my $count (5..1)    #5,4,3,2,1
#{
# print $count,"\n"; sleep(1);
#}

