#!/usr/local/bin/perl
use warnings;
use strict;
use Tk;
my $mw = new MainWindow; # Main Window

my $frm_name = $mw -> Frame() -> pack(); #New Frame
my $lab = $frm_name -> Label(-text=>"Name:") -> pack();
my $ent = $frm_name -> Entry() -> pack();

my $but = $mw -> Button(-text=>"Push Me", -command =>\&push_button) -> pack();

MainLoop;

#This function will be executed when the button is pushed
sub push_button {
	$ent -> insert(0,"Hello, ");
}


