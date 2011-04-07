#!/usr/local/bin/perl
use warnings;
use strict;

use Tk;
my $mw2 = new MainWindow();
my $label2 = $mw2->Label(-text=>"hi world")->pack();
my $button2 = $mw2->Button(-text=>"quit", -command=>sub{exit})->pack();		    
MainLoop;
