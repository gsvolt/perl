#!/usr/local/bin/perl
use warnings;
use strict;

use Tk;
my $mw2 = new MainWindow();
my $label2 = $mw2->Label(-text=>"hi world")->pack();
my $button2 = $mw2->Button(-text=>"quit", -command=>sub{exit})->pack();		    


my $mw = new MainWindow(
			 -background=>"white",
			 -width=>"640"
                       );
# $mw -> optionAdd('*BorderWidth' => 1);


my $label = $mw -> Label(
                         -text=>"Hello World",
                         -foreground=>"red",
                         -background=>"yellow"
                        ) -> pack();
my $button = $mw -> Button(
                           -text => "Quit", 
		           -command => sub { 
		                         exit 
		                       }
		          ) -> pack();
MainLoop;

		
