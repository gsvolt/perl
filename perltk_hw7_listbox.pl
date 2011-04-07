#!/usr/local/bin/perl
use warnings;
use strict;
use Tk; 
$top = MainWindow->new(); 
$wine_list = $top->Listbox(-width => 20, -height => 5)->pack(); 
$wine_list->insert('end', # Insert the following list at end                    
"Napa Valley Chardonnay", 
"Cabernet Sauvignon",                    
"Dry Chenin Blanc", 
"Merlot", 
"Sangiovese" ); 
$wine_list->bind('<Double-1>', \&buy_wine); 

sub buy_wine 
{     
 my $wine = $wine_list->get('active');     
 return if (!$wine);  # Return if no list item is active     
 $top->messageBox(
  -message => "Ah, '$wine'. An excellent choice\n");     
 $wine_list->delete('active'); 
} 
MainLoop();
