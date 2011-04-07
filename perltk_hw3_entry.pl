#!/usr/local/bin/perl
use warnings;
use strict;
use Tk;
# Main Window
my $mw = new MainWindow();
$mw->maxsize(600,600);
$mw -> optionAdd('*BorderWidth' => 1);
#GUI Building Area
my $ent = $mw -> Entry(-width => 45) -> pack();
my $but = $mw -> Button(-text => "Push Me",
-width => 25,
-command =>\&push_button);
$but -> pack();
MainLoop;
#This is executed when the button is pressed
sub push_button {
$ent -> insert('end',"Hello");
}

