#!/usr/local/bin/perl
use warnings;
use strict;
use Tk;
my $top = MainWindow->new(); 
my $canvas = $top->Canvas(width => 300, height => 245)->pack(); 
# Draw a set of circles along an archimedean spiral 
# The centers of these circles move along the spiral  
# (radius of spiral = constant * theta)  
my $origin_x = 110; 
my $origin_y = 70;           
# origin of the spiral 
my $PI = 3.1415926535; 
my $circle_radius = 5;                        
# radius of the first circle 
my $path_radius = 0;  
for (my $angle = 0; $angle <= 180; $path_radius += 7, $circle_radius += 3, $angle += 10)  
{     
# offset of path coordinates: r.cos([theta]) and r.sin([theta])     
# sin() and cos() like their angles in radians (degrees*[pi]/90)     
my $path_x = $origin_x + $path_radius * cos ($angle * $PI / 90);     
my $path_y = $origin_y - $path_radius * sin ($angle * $PI / 90);    
# path_x and path_y are the coordinates of the center of the new     
# circle. Canvas::create likes top-left and bottom-right corners     
$canvas->create ('oval',               $path_x - $circle_radius,              $path_y - $circle_radius,              $path_x + $circle_radius,              $path_y + $circle_radius,              -fill => 'yellow');     
$canvas->create ('line',               $origin_x, $origin_y,              $path_x, $path_y,              -fill => 'slategray');  }  
MainLoop();

