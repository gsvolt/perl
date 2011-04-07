#!/usr/bin/perl
use warnings;
use strict;
use Tk;
my $mw = new MainWindow;
my $label = $mw -> Label(
                         -text => "Hello World"
                        ) -> pack();
my $button = $mw -> Button( 
                         -text => "Quit", 
		         -command => \&exitProgram 
		          ) -> pack();
MainLoop;

sub exitProgram {
 
 $mw -> messageBox(
                   -message=>"Goodbye"
                  );
 exit;
}
