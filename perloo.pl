#!/usr/bin/perl
use warnings;
use strict;
my $obj = {
 name => "ALUG",
 fav_order => "Chicken Paprakash",
 hobby => "Ham",
 peers => ["Pat", "Scott", "Steve", "Rick"]
};

print $obj->{"name"}."\n";   # try {peers} then, {peers}[1]
