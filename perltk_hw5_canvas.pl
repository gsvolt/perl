#!/usr/local/bin/perl
use warnings;
use strict;
use Tk;
my $top = MainWindow->new();
my $canvas = $top->Canvas(-width => 600, -height => 400)->pack();  
my $id = $canvas->create ('line', 10, 10, 100, 100,-fill => "red");
#$canvas->move($id,230,15);
MainLoop;
