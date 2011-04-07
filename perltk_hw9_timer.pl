use Tk;
my $mw = MainWindow->new();
my $button = $mw -> Button( 
                         -text => "Quit", 
		         -command => \&exitProgram,
		         -width=>"45",
		         -height=>"45"
		          ) -> pack();
$button->configure (-text => 'You want a piece of me ?', -fg=>'blue',                    -command => \&change_title); 
sub change_title {    
 my ($old_title) = $button->cget('-text');    
  $button->configure (-text => 'Ouch',-foreground=>'red');      
  $button->after (600,  sub {
               $button->configure(-text => $old_title,-foreground=>'blue')}); 
               }
              
MainLoop;
